using BusinessLogic;
using BusinessLogic.Services;
using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.Options;
using Microsoft.IdentityModel.Tokens;
using System;
using System.Collections.Generic;
using System.IdentityModel.Tokens.Jwt;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DoctorPatientAPI.Middlewares
{
    public class RefreshTokenMiddleware
    {
        private readonly RequestDelegate _next;
        private readonly AppSettings _appSettings;

        public RefreshTokenMiddleware(RequestDelegate next, IOptions<AppSettings> appSettings)
        {
            _next = next;
            _appSettings = appSettings.Value;
        }

        public async Task Invoke(HttpContext context, IUserService userService)
        {
            if (context.Request.Path.StartsWithSegments("/api/auth/refresh"))
            {
                var refreshToken = context.Request.Headers["Authorization"].FirstOrDefault()?.Split(" ").Last();

                if (refreshToken != null)
                    await attachUserToContext(context, userService, refreshToken);
            }


            await _next(context);
        }
        private async Task attachUserToContext(HttpContext context, IUserService userService, string refreshToken)
        {
            try
            {
                var tokenHandler = new JwtSecurityTokenHandler();
                var key = Encoding.ASCII.GetBytes(_appSettings.RefreshSecret);
                tokenHandler.ValidateToken(refreshToken, new TokenValidationParameters
                {
                    ValidateIssuerSigningKey = true,
                    IssuerSigningKey = new SymmetricSecurityKey(key),
                    ValidateIssuer = false,
                    ValidateAudience = false,
                    // set clockskew to zero so tokens expire exactly at token expiration time (instead of 5 minutes later)
                    ClockSkew = TimeSpan.Zero
                }, out SecurityToken validatedToken);

                var validatedRefreshToken = (JwtSecurityToken)validatedToken;
                var userId = Guid.Parse(validatedRefreshToken.Claims.First(x => x.Type == _appSettings.ClaimsName).Value);

                // attach user to context on successful jwt validation
                context.Items[_appSettings.ClaimsUser] = await userService.GetById(userId);
            }
            catch
            {
                context.Items.Clear();
            }
        }
    }
}
