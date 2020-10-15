using Microsoft.AspNetCore.Http;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace DoctorPatientAPI.Middlewares
{
    public class GetJWTFromCookieMiddleware
    {
        private readonly RequestDelegate _next;

        public GetJWTFromCookieMiddleware(RequestDelegate next)
        {
            _next = next;
        }

        public async Task InvokeAsync(HttpContext context)
        {
            if (context.Request.Path.StartsWithSegments("/api/auth/refresh"))
            {
                // Skip doing anything in this middleware and continue as usual
                await _next(context);
                return;
            }

            var authenticationCookieName = "ACCESS_TOKEN";
            var cookie = context.Request.Cookies[authenticationCookieName];
            if (cookie != null)
            {
                var token = cookie;
                context.Request.Headers.Append("Authorization", "Bearer " + token);
            }

            await _next.Invoke(context);
        }
    }
}
