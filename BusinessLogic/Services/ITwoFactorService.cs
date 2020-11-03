using BusinessLogic.DTO;
using System;
using System.Collections.Generic;
using System.Security.Claims;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLogic.Services
{
    public interface ITwoFactorService
    {
        Task<AuthenticatorDetailsDTO> SetupAuthenticator(ClaimsPrincipal user);
        Task<ResultDTO> VerifyAuthenticator(string verificationCode, ClaimsPrincipal user);

        Task<ResultDTO> TwoFactorLogin(AuthenticationAttemptDTO authenticationAttemptDTO, bool isRecovery);

        Task<ResultDTO> Disable2FA(ClaimsPrincipal user);
    }
}
