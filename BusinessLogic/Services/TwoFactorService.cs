using AutoMapper;
using BusinessLogic.DTO;
using BusinessLogic.Exceptions;
using DataAccessLayer.Models;
using Microsoft.AspNetCore.Identity;
using Microsoft.Extensions.Options;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Claims;
using System.Text;
using System.Text.Encodings.Web;
using System.Threading.Tasks;

namespace BusinessLogic.Services
{
    public class TwoFactorService : ITwoFactorService
    {
        private readonly AppSettings _appSettings;
        private readonly IMapper _mapper;
        private readonly UserManager<User> _userManager;
        private readonly SignInManager<User> _signInManager;
        private readonly IUserClaimsPrincipalFactory<User> _principalFactory;
        private readonly UrlEncoder _urlEncoder;
        private readonly IAuthService _authService;

        public TwoFactorService(IOptions<AppSettings> appSettings,
            IMapper mapper,
            UserManager<User> userManager,
            SignInManager<User> signInManager,
            IUserClaimsPrincipalFactory<User> principalFactory,
            UrlEncoder urlEncoder,
            IAuthService authService
            )
        {
            _appSettings = appSettings.Value;
            _mapper = mapper;
            _signInManager = signInManager;
            _userManager = userManager;
            _principalFactory = principalFactory;
            _urlEncoder = urlEncoder;
            _authService = authService;
        }

        public async Task<AuthenticatorDetailsDTO> SetupAuthenticator(ClaimsPrincipal user)
        {
            var userResult = await _userManager.GetUserAsync(user);
            var authenticatorDetailsDTO = await GetAuthenticatorDetailsAsync(userResult);
            return authenticatorDetailsDTO;
        }

        private async Task<AuthenticatorDetailsDTO> GetAuthenticatorDetailsAsync(User user)
        {
            // Load the authenticator key & QR code URI to display on the form
            var unformattedKey = await _userManager.GetAuthenticatorKeyAsync(user);
            if (string.IsNullOrEmpty(unformattedKey))
            {
                await _userManager.ResetAuthenticatorKeyAsync(user);
                unformattedKey = await _userManager.GetAuthenticatorKeyAsync(user);
            }

            var username = await _userManager.GetUserNameAsync(user);

            return new AuthenticatorDetailsDTO
            {
                SharedKey = FormatKey(unformattedKey),
                AuthenticatorUri = GenerateQrCodeUri(username, unformattedKey)
            };
        }

        private string FormatKey(string unformattedKey)
        {
            var result = new StringBuilder();
            int currentPosition = 0;
            while (currentPosition + 4 < unformattedKey.Length)
            {
                result.Append(unformattedKey.Substring(currentPosition, 4)).Append(" ");
                currentPosition += 4;
            }
            if (currentPosition < unformattedKey.Length)
            {
                result.Append(unformattedKey.Substring(currentPosition));
            }

            return result.ToString().ToLowerInvariant();
        }


        private string GenerateQrCodeUri(string username, string unformattedKey)
        {
            const string AuthenticatorUriFormat = "otpauth://totp/{0}:{1}?secret={2}&issuer={0}&digits=6";

            return string.Format(
                AuthenticatorUriFormat,
                _urlEncoder.Encode("MyHealth"),
                _urlEncoder.Encode(username),
                unformattedKey);
        }

        public async Task<ResultDTO> VerifyAuthenticator(string verificationCode, ClaimsPrincipal user)
        {
            var formattedVerificationCode = verificationCode.Replace(" ", string.Empty).Replace("-", string.Empty);
            var userResult = await _userManager.GetUserAsync(user);
            var isTokenValid = await _userManager.VerifyTwoFactorTokenAsync(userResult,
                _userManager.Options.Tokens.AuthenticatorTokenProvider,
                formattedVerificationCode);

            if (!isTokenValid)
            {
                return new ResultDTO
                {
                    Status = Status.Error,
                    Message = "Two factor token is not valid.",
                };

            }
            await _userManager.SetTwoFactorEnabledAsync(userResult, true);
            var userDto = _mapper.Map<User, UserDTO>(userResult);
            userDto.TwoFactorEnabled = await _userManager.GetTwoFactorEnabledAsync(userResult);
            userDto.HasAuthenticator = await _userManager.GetAuthenticatorKeyAsync(userResult) != null;
            userDto.Roles = await _userManager.GetRolesAsync(userResult);

            if (await _userManager.CountRecoveryCodesAsync(userResult) != 0)
            {
                var result = new ResultDTO
                {
                    Status = Status.Success,
                    Message = "Your authenticator app has been verified",
                    Data = userDto,
                };

                return result;
            }
            else
            {
                var result = new ResultDTO
                {
                    Status = Status.Success,
                    Message = "Your authenticator app has been verified",
                };

                var recoveryCodes = await _userManager.GenerateNewTwoFactorRecoveryCodesAsync(userResult, 10);

                result.Data = new { recoveryCodes, userDto };
                return result;
            }


        }

        public async Task<ResultDTO> TwoFactorLogin(TwoFactorAuthAttemptDTO twoFactorAuthAttemptDTO)
        {
            var user = await _userManager.FindByNameAsync(twoFactorAuthAttemptDTO.Username);

            if(user != null)
            {
                var loginResult = await _signInManager.CheckPasswordSignInAsync(user, twoFactorAuthAttemptDTO.Password, false);
                if (!loginResult.Succeeded)
                {
                    throw new UsernameOrPasswordIncorrectException();
                }

                if (twoFactorAuthAttemptDTO.IsRecovery)
                {
                    var redeemed = await TwoFactorRecoverySignIn(user, twoFactorAuthAttemptDTO.RecoveryCode);
                    if (redeemed)
                    {
                        ResultDTO result = new ResultDTO();
                        result.Status = Status.Success;
                        result.Message = "Successfully redeemed recovery code.";
                        result.Data = await _authService.GenerateUserLogin(user);
                        return result;
                    }
                    else
                    {
                        ResultDTO result = new ResultDTO();
                        result.Status = Status.Error;
                        result.Message = "Recovery code has already been redeemed or is not valid.";
                        return result;
                    }
                    
                }

                if (!twoFactorAuthAttemptDTO.IsRecovery)
                {
                    var validated = await TwoFactorAuthenticatorSignIn(user, twoFactorAuthAttemptDTO.TwoFactorCode);
                    if (validated)
                    {
                        ResultDTO result = new ResultDTO();
                        result.Status = Status.Success;
                        result.Message = "Successfully validated 2fa code.";
                        result.Data = await _authService.GenerateUserLogin(user);
                        return result;
                    }
                    else
                    {
                        ResultDTO result = new ResultDTO();
                        result.Status = Status.Error;
                        result.Message = "2fa code could not be validated.";
                        return result;
                    }
                }

            }

            ResultDTO resultDTO = new ResultDTO();
            resultDTO.Status = Status.Error;
            resultDTO.Message = "Something went wrong.";
            return resultDTO;
        }

        private async Task<bool> TwoFactorAuthenticatorSignIn(User user, string authenticatorCode)
        {
            var formattedVerificationCode = authenticatorCode.Replace(" ", string.Empty).Replace("-", string.Empty);
            var isTokenValid = await _userManager.VerifyTwoFactorTokenAsync(user,
            _userManager.Options.Tokens.AuthenticatorTokenProvider,
            formattedVerificationCode);
            return isTokenValid;

        }

        private async Task<bool> TwoFactorRecoverySignIn(User user, string recoveryCode)
        {
            var formattedRecoveryCode = recoveryCode.Replace(" ", string.Empty).Replace("-", string.Empty);
            var redeemed = await _userManager.RedeemTwoFactorRecoveryCodeAsync(user, formattedRecoveryCode);
            return redeemed.Succeeded;
              
        }

        public async Task<ResultDTO> Disable2FA(ClaimsPrincipal user)
        {
            var userResult = await _userManager.GetUserAsync(user);

            if (!await _userManager.GetTwoFactorEnabledAsync(userResult))
            {
                return new ResultDTO
                {
                    Status = Status.Error,
                    Message = "Cannot disable 2FA as it's not currently enabled"
                };
            }

            var result = await _userManager.SetTwoFactorEnabledAsync(userResult, false);

            return new ResultDTO
            {
                Status = result.Succeeded ? Status.Success : Status.Error,
                Message = result.Succeeded ? "2FA has been successfully disabled" : $"Failed to disable 2FA {result.Errors.FirstOrDefault()?.Description}",
                Data = result.Succeeded ? await _authService.GenerateUserLogin(userResult) : null,
            };
        }

        public async Task<ResultDTO> GenerateRecoveryCodes(ClaimsPrincipal user)
        {
            var userResult = await _userManager.GetUserAsync(user);

            var twoFactorEnabled = await _userManager.GetTwoFactorEnabledAsync(userResult);

            if (!twoFactorEnabled)
            {
                return new ResultDTO
                {
                    Status = Status.Error,
                    Message = "You do not have two-factor authentication enabled. Please enable it first."
                };
            }

            var recoveryCodes = await _userManager.GenerateNewTwoFactorRecoveryCodesAsync(userResult, 10);

            return new ResultDTO
            {
                Status = Status.Success,
                Message = "New recovery codes generated!",
                Data = recoveryCodes
            };
        }
    }
}
