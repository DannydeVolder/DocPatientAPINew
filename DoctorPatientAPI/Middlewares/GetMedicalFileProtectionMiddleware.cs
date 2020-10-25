using BusinessLogic.Helpers;
using Microsoft.AspNetCore.Http;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Security.Claims;
using System.Threading.Tasks;

namespace DoctorPatientAPI.Middlewares
{
    public class GetMedicalFileProtectionMiddleware
    {
        private readonly RequestDelegate _next;

        public GetMedicalFileProtectionMiddleware(RequestDelegate next)
        {
            _next = next;
        }

        public async Task InvokeAsync(HttpContext context)
        {
            if (!context.Request.Path.StartsWithSegments("/api/medicalfile/getbyid"))
            {
                // Skip doing anything in this middleware and continue as usual
                await _next(context);
                return;
            }
            else
            {
                if (context.User.HasClaim(ClaimTypes.Role, Role.Doctor) || context.User.HasClaim(ClaimTypes.Role, Role.Admin))
                {

                    await _next(context);
                    return;
                }
                else
                {
                    if (context.Request.Query["patientId"] == context.User.Claims.FirstOrDefault(x => x.Type == ClaimTypes.NameIdentifier).Value)
                    {
                        await _next(context);
                        return;

                    }
                }
                context.Response.Clear();
                context.Response.StatusCode = (int)HttpStatusCode.Forbidden;
                await context.Response.WriteAsync("Unauthorized");
            }

        }
    }
}
