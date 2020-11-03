using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;
using BusinessLogic.DTO;
using BusinessLogic.Exceptions;
using BusinessLogic.Services;
using Microsoft.AspNetCore.Antiforgery;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace DoctorPatientAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class TwoFactorController : ControllerBase
    {

        private readonly ITwoFactorService _twoFactorService;
        protected IAntiforgery _antiforgery;
        public TwoFactorController(ITwoFactorService twoFactorService, IAntiforgery antiforgery)
        {
            _twoFactorService = twoFactorService;
            _antiforgery = antiforgery;
        }

        [HttpGet("setupauthenticator")]
        [Authorize(AuthenticationSchemes = "AccessToken")]
        public async Task<IActionResult> SetupAuthenticator()
        {

            var authDetailsDTO = await _twoFactorService.SetupAuthenticator(User);
            return Ok(authDetailsDTO);

        }

        [HttpPost("disable2fa")]
        [Authorize(AuthenticationSchemes = "AccessToken")]
        public async Task<IActionResult> Disable2FA()
        {
            var result = await _twoFactorService.Disable2FA(User);
            if(result.Status == Status.Success) 
            {
                return Ok(result);
            }
            return BadRequest(result);
            
        }

        [IgnoreAntiforgeryToken]
        [HttpPost("verifyauthenticator")]
        [Authorize(AuthenticationSchemes = "AccessToken")]
        public async Task<IActionResult> VerifyAuthenticator(VerifyAuthenticatorDTO verifyAuthenticatorDTO)
        {
            if (ModelState.IsValid)
            {
                var result = await _twoFactorService.VerifyAuthenticator(verifyAuthenticatorDTO.VerificationCode, User);
                if(result.Status == Status.Success)
                {
                    return Ok(result);
                }
                else
                {
                    return BadRequest(result);
                }

            }
            return BadRequest(ModelState);
        }

        [AllowAnonymous]
        [IgnoreAntiforgeryToken]
        [HttpPost("twofactorlogin")]
        public async Task<IActionResult> TwoFactorLogin(AuthenticationAttemptDTO authenticationAttemptDTO)
        {
            if (ModelState.IsValid)
            {
                try
                {
                    var result = await _twoFactorService.TwoFactorLogin(authenticationAttemptDTO, false);
                    
                    if(result.Status == Status.Error)
                    {
                        return BadRequest(result);
                    }

                    var userDto = (UserDTO)result.Data;


                    //Generate Access token HTTPonly cookie
                    Response.Cookies.Append(
                        "ACCESS_TOKEN",
                        userDto.JwtToken,
                        new CookieOptions
                        {
                            Expires = DateTime.Now.AddMinutes(15),
                            HttpOnly = true,
                            IsEssential = true
                        });

                    //Generate Refresh token HTTPonly cookie
                    Response.Cookies.Append(
                        "REFRESH_TOKEN",
                        userDto.RefreshToken,
                        new CookieOptions
                        {
                            Expires = DateTime.Now.AddDays(3),
                            HttpOnly = true,
                            IsEssential = true
                        });

                    HttpContext.User = userDto.claimsUserPrincipal;

                    var tokens = _antiforgery.GetAndStoreTokens(HttpContext);
                    Response.Cookies.Append(
                        "XSRF-REQUEST-TOKEN",
                        tokens.RequestToken,
                        new CookieOptions()
                        {
                            HttpOnly = false,
                            IsEssential = true
                        });

                    return Ok(result);
                }
                catch (UsernameOrPasswordIncorrectException)
                {
                    return BadRequest(new { message = "Username or password is incorrect." });
                }

            }

            return BadRequest(ModelState);
        }

        [AllowAnonymous]
        [IgnoreAntiforgeryToken]
        [HttpPost("twofactorrecoverylogin")]
        public async Task<IActionResult> TwoFactorRecoveryLogin(AuthenticationAttemptDTO authenticationAttemptDTO)
        {
            if (ModelState.IsValid)
            {
                try
                {
                    var result = await _twoFactorService.TwoFactorLogin(authenticationAttemptDTO, true);

                    if (result.Status == Status.Error)
                    {
                        return BadRequest(result);
                    }

                    var userDto = (UserDTO)result.Data;


                    //Generate Access token HTTPonly cookie
                    Response.Cookies.Append(
                        "ACCESS_TOKEN",
                        userDto.JwtToken,
                        new CookieOptions
                        {
                            Expires = DateTime.Now.AddMinutes(15),
                            HttpOnly = true,
                            IsEssential = true
                        });

                    //Generate Refresh token HTTPonly cookie
                    Response.Cookies.Append(
                        "REFRESH_TOKEN",
                        userDto.RefreshToken,
                        new CookieOptions
                        {
                            Expires = DateTime.Now.AddDays(3),
                            HttpOnly = true,
                            IsEssential = true
                        });

                    HttpContext.User = userDto.claimsUserPrincipal;

                    var tokens = _antiforgery.GetAndStoreTokens(HttpContext);
                    Response.Cookies.Append(
                        "XSRF-REQUEST-TOKEN",
                        tokens.RequestToken,
                        new CookieOptions()
                        {
                            HttpOnly = false,
                            IsEssential = true
                        });

                    return Ok(result);
                }
                catch (UsernameOrPasswordIncorrectException)
                {
                    return BadRequest(new { message = "Username or password is incorrect." });
                }

            }

            return BadRequest(ModelState);
        }
    }
}
