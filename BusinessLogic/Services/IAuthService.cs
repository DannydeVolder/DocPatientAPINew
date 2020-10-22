using BusinessLogic.DTO;
using DataAccessLayer.Models;
using Microsoft.AspNetCore.Identity;
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
        Task<bool> Register(RegisterAccountDTO registerAccountDTO);

        Task<string> RefreshAccessToken(string refreshToken);

        Task<bool> SignOut(Guid userId);

    }
}
