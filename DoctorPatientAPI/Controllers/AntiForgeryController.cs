using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Antiforgery;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace DoctorPatientAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class AntiForgeryController : ControllerBase
    {
        private readonly IAntiforgery _antiForgery;

        public AntiForgeryController(IAntiforgery antiForgery) 
        {
            _antiForgery = antiForgery;
        }

        [Authorize]
        [IgnoreAntiforgeryToken]
        public IActionResult GenerateCSRFTokens()
        {
            var tokens = _antiForgery.GetAndStoreTokens(HttpContext);

            Response.Cookies.Append("XSRF-REQUEST-TOKEN", tokens.RequestToken, new CookieOptions
            {
                HttpOnly = false
            });

            return NoContent();
        }
    }
}
