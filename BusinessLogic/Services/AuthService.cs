using AutoMapper;
using BCrypt.Net;
using BusinessLogic.DTO;
using BusinessLogic.Exceptions;
using DataAccessLayer.Models;
using DataAccessLayer.Repositories;
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
        public AuthService(IOptions<AppSettings> appSettings, IUserRepository userRepository, IMapper mapper)
        {
            _appSettings = appSettings.Value;
            _userRepository = userRepository;
            _mapper = mapper;
        }
        public async Task<UserDTO> Authenticate(AuthenticationAttemptDTO authenticationAttemptDTO)
        {
            var user = await _userRepository.GetByUsername(authenticationAttemptDTO.Username);
            if (user != null )
            {
                bool validated = BC.Verify(authenticationAttemptDTO.Password, user.Password);
                if (validated)
                {
                    //generate JWT access token
                    var accessToken = GenerateJwtToken(user);
                    UserDTO userDTO = _mapper.Map<User, UserDTO>(user);
                    userDTO.JwtToken = accessToken;

                    //generate refresh token
                    var refreshToken = GenerateRefreshToken(user);

                    //hash refresh token
                    const int workFactor = 14;
                    string hashedRefreshToken = BC.HashPassword(refreshToken, workFactor);

                    //store refresh token in db
                    user.RefreshToken = hashedRefreshToken;
                    _userRepository.Update(user);

                    userDTO.RefreshToken = refreshToken;

                    return userDTO;
                }
            }
            else
            {
                return null;
            }

            return null;
        }

        private string GenerateJwtToken(User user)
        {
            // generate token that is valid for 15 minutes
            var tokenHandler = new JwtSecurityTokenHandler();
            var key = Encoding.ASCII.GetBytes(_appSettings.JwtSecret);
            var tokenDescriptor = new SecurityTokenDescriptor
            {
                Subject = new ClaimsIdentity(new[] { new Claim(_appSettings.ClaimsName, user.Id.ToString()) }),
                Expires = DateTime.UtcNow.AddMinutes(_appSettings.AccessTokenLifetime),
                SigningCredentials = new SigningCredentials(new SymmetricSecurityKey(key), SecurityAlgorithms.HmacSha512Signature)
            };
            var token = tokenHandler.CreateToken(tokenDescriptor);
            return tokenHandler.WriteToken(token);
        }

        private string GenerateRefreshToken(User user)
        {
            var tokenHandler = new JwtSecurityTokenHandler();
            var key = Encoding.ASCII.GetBytes(_appSettings.RefreshSecret);
            var tokenDescriptor = new SecurityTokenDescriptor
            {
                Subject = new ClaimsIdentity(new[] { new Claim(_appSettings.ClaimsName, user.Id.ToString()) }),
                Expires = DateTime.UtcNow.AddMinutes(_appSettings.RefreshTokenLifetime),
                SigningCredentials = new SigningCredentials(new SymmetricSecurityKey(key), SecurityAlgorithms.HmacSha512Signature)
            };
            var token = tokenHandler.CreateToken(tokenDescriptor);
            return tokenHandler.WriteToken(token);
        }

        public void Register(RegisterAccountDTO registerAccountDTO)
        {
            const int workFactor = 14;
            string hashedPw = BC.HashPassword(registerAccountDTO.Password, workFactor);
            User newUser = new Patient();
            newUser.FirstName = registerAccountDTO.FirstName;
            newUser.LastName = registerAccountDTO.LastName;
            newUser.Username = registerAccountDTO.Username;
            newUser.Password = hashedPw;
            _userRepository.Insert(newUser);

        }

        public async Task<string> RefreshAccessToken(string refreshToken)
        {
            var tokenHandler = new JwtSecurityTokenHandler();
            var tokenS = tokenHandler.ReadJwtToken(refreshToken);

            var userId = Guid.Parse(tokenS.Claims.First(claim => claim.Type == _appSettings.ClaimsName).Value);

            var user = await _userRepository.GetById(userId);

            if(user.RefreshToken == null)
            {
                throw new NoRefreshTokenException("No refresh token found in DB for this user.");
            }

            bool validated = BC.Verify(refreshToken, user.RefreshToken);
            if (!validated)
            {
                throw new BcryptAuthenticationException("Couldn't verify refreshtoken");
            }

            return GenerateJwtToken(user);


        }
    }
}
