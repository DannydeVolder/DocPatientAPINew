using BusinessLogic.DTO;
using DataAccessLayer.Models;
using Microsoft.IdentityModel.Tokens;
using System;
using System.Collections.Generic;
using System.IdentityModel.Tokens.Jwt;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLogic.Services
{
    public interface IAuthService
    {
        Task<UserDTO> Authenticate(AuthenticationAttemptDTO authenticationAttemptDTO);
        Task Register(RegisterAccountDTO registerAccountDTO);

        Task<string> RefreshAccessToken(string refreshToken);


    }
}
