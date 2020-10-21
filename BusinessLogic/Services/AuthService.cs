using AutoMapper;
using BCrypt.Net;
using BusinessLogic.DTO;
using BusinessLogic.Exceptions;
using DataAccessLayer.Models;
using DataAccessLayer.Repositories;
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
        private readonly IUserRepository _userRepository;
        private readonly IMapper _mapper;
        readonly UserManager<User> _userManager;
        readonly SignInManager<User> _signInManager;
        private readonly IUserClaimsPrincipalFactory<User> _principalFactory;


        public AuthService(IOptions<AppSettings> appSettings, 
            IUserRepository userRepository, 
            IMapper mapper, 
            UserManager<User> userManager,
            SignInManager<User> signInManager,
            IUserClaimsPrincipalFactory<User> principalFactory)
        {
            _appSettings = appSettings.Value;
            _userRepository = userRepository;
            _mapper = mapper;
            _signInManager = signInManager;
            _userManager = userManager;
            _principalFactory = principalFactory;
        }
        public async Task<UserDTO> Authenticate(AuthenticationAttemptDTO authenticationAttemptDTO)
        {

            var user = await _userManager.FindByNameAsync(authenticationAttemptDTO.Username);
            if (user != null)
            {
                var loginResult = await _signInManager.CheckPasswordSignInAsync(user, authenticationAttemptDTO.Password, false);

                if (!loginResult.Succeeded)
                {
                    return null;
                }

                UserDTO userDTO = _mapper.Map<User, UserDTO>(user);

                userDTO.claimsUserPrincipal = await _principalFactory.CreateAsync(user);


                //generate JWT access token
                var accessToken = GenerateJwtToken(user, userDTO.claimsUserPrincipal.Claims);

                userDTO.JwtToken = accessToken;

                //generate refresh token
                var refreshToken = GenerateRefreshToken(user, userDTO.claimsUserPrincipal.Claims);

                //hash refresh token
                const int workFactor = 14;
                string hashedRefreshToken = BC.HashPassword(refreshToken, workFactor);

                //store refresh token in db
                user.RefreshToken = hashedRefreshToken;
                await _userManager.UpdateAsync(user);
                //_userRepository.Update(user);

                userDTO.RefreshToken = refreshToken;
                return userDTO;

            }

            return null;
            

        }

        private string GenerateJwtToken(User user, IEnumerable<Claim> claims)
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

        private string GenerateRefreshToken(User user, IEnumerable<Claim> claims)
        {
            var tokenHandler = new JwtSecurityTokenHandler();
            var key = Encoding.ASCII.GetBytes(_appSettings.RefreshSecret);
            var tokenDescriptor = new SecurityTokenDescriptor
            {
                Subject = new ClaimsIdentity(claims),
                Expires = DateTime.UtcNow.AddMinutes(_appSettings.RefreshTokenLifetime),
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
            User newUser = new Patient();
            newUser.FirstName = registerAccountDTO.FirstName;
            newUser.LastName = registerAccountDTO.LastName;
            newUser.UserName = registerAccountDTO.Username;

            var identityResult = await _userManager.CreateAsync(newUser, registerAccountDTO.Password);

            if (identityResult.Succeeded)
            {
                return true;
            }
            return false;

        }

        public async Task<string> RefreshAccessToken(string refreshToken)
        {
            var tokenHandler = new JwtSecurityTokenHandler();
            var tokenS = tokenHandler.ReadJwtToken(refreshToken);
            Console.WriteLine(tokenS.Claims.ToList().Count);
            var userId = Guid.Parse(tokenS.Claims.First(claim => claim.Type == ClaimTypes.NameIdentifier).Value);
            var userName = tokenS.Claims.First(claim => claim.Type == ClaimTypes.Name).Value;

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


            return GenerateJwtToken(user, claimsUserPrincipal.Claims);

        }

    }
}
