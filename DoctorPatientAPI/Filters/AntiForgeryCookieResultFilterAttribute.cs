using Microsoft.AspNetCore.Antiforgery;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc.Filters;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace DoctorPatientAPI.Filters
{
    public class AntiforgeryCookieResultFilterAttribute : ResultFilterAttribute
    {
        protected IAntiforgery Antiforgery { get; set; }

        public AntiforgeryCookieResultFilterAttribute(IAntiforgery antiforgery) => this.Antiforgery = antiforgery;

        public override void OnResultExecuting(ResultExecutingContext context)
        {
            var tokens = this.Antiforgery.GetAndStoreTokens(context.HttpContext);
            context.HttpContext.Response.Cookies.Append("X-XSRF-TOKEN", tokens.RequestToken, new CookieOptions() { HttpOnly = false });
        }
    }
}
