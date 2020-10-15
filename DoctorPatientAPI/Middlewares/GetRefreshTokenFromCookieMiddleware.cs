using Microsoft.AspNetCore.Http;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace DoctorPatientAPI.Middlewares
{
    public class GetRefreshTokenFromCookieMiddleware
    {
        private readonly RequestDelegate _next;

        public  GetRefreshTokenFromCookieMiddleware(RequestDelegate next)
        {
            _next = next;
        }

        public async Task Invoke(HttpContext context)
        {
            if (context.Request.Path.StartsWithSegments("/api/auth/refresh"))
            {
                var refreshCookieName = "REFRESH_TOKEN";
                var cookie = context.Request.Cookies[refreshCookieName];
                if (cookie != null)
                {
                    var token = cookie;
                    context.Request.Headers.Append("Authorization", "Bearer " + token);
                }
            }


            await _next.Invoke(context);
        }
    }

}
