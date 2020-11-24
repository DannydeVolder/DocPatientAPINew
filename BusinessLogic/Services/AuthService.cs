using AutoMapper;
using BCrypt.Net;
using BusinessLogic.DTO;
using BusinessLogic.Exceptions;
using BusinessLogic.Helpers;
using DataAccessLayer.Models;
using DataAccessLayer.Repositories;
using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.AspNetCore.Identity;
using Microsoft.Extensions.Options;
using Microsoft.IdentityModel.Tokens;
using System;
using System.Collections.Generic;
using System.IdentityModel.Tokens.Jwt;
using System.Linq;
using System.Security.Claims;
using System.Text;
using System.Threading.Tasks;
using BC = BCrypt.Net.BCrypt;

namespace BusinessLogic.Services
{
    public class AuthService : IAuthService
    {

        private readonly AppSettings _appSettings;
        private readonly IMapper _mapper;
        private readonly UserManager<User> _userManager;
        private readonly SignInManager<User> _signInManager;
        private readonly IUserClaimsPrincipalFactory<User> _principalFactory;
        private readonly IMedicalFileRepository _medicalFileRepository;

        public AuthService(IOptions<AppSettings> appSettings, 
            IMapper mapper, 
            UserManager<User> userManager,
            SignInManager<User> signInManager,
            IUserClaimsPrincipalFactory<User> principalFactory,
            IMedicalFileRepository medicalFileRepository)
        {
            _appSettings = appSettings.Value;
            _mapper = mapper;
            _signInManager = signInManager;
            _userManager = userManager;
            _principalFactory = principalFactory;
            _medicalFileRepository = medicalFileRepository;
        }
        public async Task<UserDTO> Authenticate(AuthenticationAttemptDTO authenticationAttemptDTO)
        {

            var user = await _userManager.FindByNameAsync(authenticationAttemptDTO.Username);

            if (user != null)
            {


                var loginResult = await _signInManager.CheckPasswordSignInAsync(user, authenticationAttemptDTO.Password, false);
                if (!loginResult.Succeeded)
                {
                    throw new UsernameOrPasswordIncorrectException();
                }

                var twoFAEnabled = await _userManager.GetTwoFactorEnabledAsync(user);
                if (twoFAEnabled)
                {
                    throw new TwoFactorEnabledException();
                }

                var userDto = await GenerateUserLogin(user);

                return userDto;


            }
            else
            {
                throw new UsernameOrPasswordIncorrectException();
            }

        }

        public async Task<UserDTO> GenerateUserLogin(User user)
        {
            UserDTO userDTO = _mapper.Map<User, UserDTO>(user);


            userDTO.TwoFactorEnabled = await _userManager.GetTwoFactorEnabledAsync(user);

            userDTO.HasAuthenticator = await _userManager.GetAuthenticatorKeyAsync(user) != null;

            //userDTO.TwoFactorClientRemembered = await _signInManager.IsTwoFactorClientRememberedAsync(user);

            userDTO.claimsUserPrincipal = await _principalFactory.CreateAsync(user);

            //generate JWT access token
            var accessToken = GenerateJwtToken(userDTO.claimsUserPrincipal.Claims);

            userDTO.JwtToken = accessToken;

            //generate refresh token
            var refreshToken = GenerateRefreshToken(userDTO.claimsUserPrincipal.Claims);

            //hash refresh token
            const int workFactor = 14;
            string hashedRefreshToken = BC.HashPassword(refreshToken, workFactor);

            //store refresh token in db
            user.RefreshToken = hashedRefreshToken;
            var updateResult = await _userManager.UpdateAsync(user);
            var roles = await _userManager.GetRolesAsync(user);

            if (updateResult.Succeeded)
            {
                userDTO.Roles = roles;
                userDTO.RefreshToken = refreshToken;
                return userDTO;
            }
            return null;
        }

        private string GenerateJwtToken(IEnumerable<Claim> claims)
        {
            // generate token that is valid for 15 minutes
            var tokenHandler = new JwtSecurityTokenHandler();
            var key = Encoding.ASCII.GetBytes(_appSettings.JwtSecret);
            var tokenDescriptor = new SecurityTokenDescriptor
            {
                Subject = new ClaimsIdentity(claims),
                Expires = DateTime.UtcNow.AddMinutes(_appSettings.AccessTokenLifetime),
                SigningCredentials = new SigningCredentials(new SymmetricSecurityKey(key), SecurityAlgorithms.HmacSha512Signature)
            };
            var token = tokenHandler.CreateToken(tokenDescriptor);
            return tokenHandler.WriteToken(token);
        }

        private string GenerateRefreshToken(IEnumerable<Claim> claims)
        {
            var tokenHandler = new JwtSecurityTokenHandler();
            var key = Encoding.ASCII.GetBytes(_appSettings.RefreshSecret);
            var tokenDescriptor = new SecurityTokenDescriptor
            {
                Subject = new ClaimsIdentity(claims),
                Expires = DateTime.UtcNow.AddDays(_appSettings.RefreshTokenLifetime),
                SigningCredentials = new SigningCredentials(new SymmetricSecurityKey(key), SecurityAlgorithms.HmacSha512Signature)
            };
            var token = tokenHandler.CreateToken(tokenDescriptor);
            return tokenHandler.WriteToken(token);
        }

        public async Task<bool> Register(RegisterAccountDTO registerAccountDTO)
        {

            var user = await _userManager.FindByNameAsync(registerAccountDTO.Username);

            if(user != null)
            {
                throw new UserNameTakenException("This username is already taken.");
            }
            Patient newUser = new Patient();
            newUser.FirstName = registerAccountDTO.FirstName;
            newUser.LastName = registerAccountDTO.LastName;
            newUser.UserName = registerAccountDTO.Username;
            newUser.DateOfBirth = registerAccountDTO.DateOfBirth;

            var identityResult = await _userManager.CreateAsync(newUser, registerAccountDTO.Password);
            var roleResult = await _userManager.AddToRoleAsync(newUser, Role.Patient);
            MedicalFile medicalFile = new MedicalFile();
            medicalFile.Patient = newUser;
            await _medicalFileRepository.Insert(medicalFile);

            if (identityResult.Succeeded && roleResult.Succeeded)
            {
                return true;
            }
            return false;

        }

        public async Task<UserDTO> RefreshAccessToken(string refreshToken)
        {
            var tokenHandler = new JwtSecurityTokenHandler();
            var tokenS = tokenHandler.ReadJwtToken(refreshToken);
            Console.WriteLine(tokenS.Claims.ToList().Count);
            var userName = tokenS.Claims.First(claim => claim.Type == "unique_name").Value;

            var user = await _userManager.FindByNameAsync(userName);



            if (user.RefreshToken == null)
            {
                throw new NoRefreshTokenException("No refresh token found in DB for this user.");
            }

            bool validated = BC.Verify(refreshToken, user.RefreshToken);
            if (!validated)
            {
                throw new BcryptAuthenticationException("Couldn't verify refreshtoken");
            }

            var claimsUserPrincipal = await _principalFactory.CreateAsync(user);

            UserDTO userDTO = _mapper.Map<User, UserDTO>(user);
            userDTO.JwtToken = GenerateJwtToken(claimsUserPrincipal.Claims);
            var roles = await _userManager.GetRolesAsync(user);
            userDTO.Roles = roles;

            return userDTO;

        }

        public async Task<bool> SignOut(Guid userId)
        {
            Console.WriteLine(userId);
            var user = await _userManager.FindByIdAsync(userId.ToString());
            if (user != null)
            {
                user.RefreshToken = null;
                var updateResult = await _userManager.UpdateAsync(user);

                return updateResult.Succeeded;

            }
            return false;

        }

        public async Task<bool> RegisterDoctor(RegisterAccountDTO registerAccountDTO)
        {
            var user = await _userManager.FindByNameAsync(registerAccountDTO.Username);

            if (user != null)
            {
                throw new UserNameTakenException("This username is already taken.");
            }
            User newUser = new Doctor();
            newUser.FirstName = registerAccountDTO.FirstName;
            newUser.LastName = registerAccountDTO.LastName;
            newUser.UserName = registerAccountDTO.Username;
            newUser.DateOfBirth = registerAccountDTO.DateOfBirth;

            var identityResult = await _userManager.CreateAsync(newUser, registerAccountDTO.Password);
            var roleResult = await _userManager.AddToRoleAsync(newUser, Role.Doctor);
            if (identityResult.Succeeded && roleResult.Succeeded)
            {
                return true;
            }
            return false;
        }

        public async Task<bool> RegisterAdmin(RegisterAccountDTO registerAccountDTO)
        {
            var user = await _userManager.FindByNameAsync(registerAccountDTO.Username);

            if (user != null)
            {
                throw new UserNameTakenException("This username is already taken.");
            }
            User newUser = new Patient();
            newUser.FirstName = registerAccountDTO.FirstName;
            newUser.LastName = registerAccountDTO.LastName;
            newUser.UserName = registerAccountDTO.Username;

            var identityResult = await _userManager.CreateAsync(newUser, registerAccountDTO.Password);
            var roleResult = await _userManager.AddToRoleAsync(newUser, Role.Admin);

            if (identityResult.Succeeded && roleResult.Succeeded)
            {
                return true;
            }
            return false;
        }
    }
}
