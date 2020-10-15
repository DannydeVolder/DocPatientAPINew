using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using BCrypt.Net;
using BusinessLogic.DTO;
using BusinessLogic.Services;
using DoctorPatientAPI.Guards;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace DoctorPatientAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class AuthController : ControllerBase
    {
        private readonly IAuthService _authService;
        public AuthController(IAuthService authService)
        {
            _authService = authService;
        }

        [HttpPost("authenticate")]
        public async Task<IActionResult> Authenticate(AuthenticationAttemptDTO authAttemptDTO)
        {

            if (HttpContext.Items["User"] != null)
            {
                return BadRequest(new { message = "Already logged in." });
            }
            var response = await _authService.Authenticate(authAttemptDTO);

            if(response == null)
            {
                return BadRequest(new { message = "Username or password is incorrect." });
            }

            //Generate Access token HTTPonly cookie
            HttpContext.Response.Cookies.Append(
                "ACCESS_TOKEN",
                response.JwtToken,
                new CookieOptions
                {
                    Expires = DateTime.Now.AddMinutes(16),
                    HttpOnly = true,
                    Secure = true
                });

            //Generate Refresh token HTTPonly cookie
            HttpContext.Response.Cookies.Append(
                "REFRESH_TOKEN",
                response.RefreshToken,
                new CookieOptions
                {
                    Expires = DateTime.Now.AddDays(3),
                    HttpOnly = true,
                    Secure = true
                });

            return Ok(response);
        }

        [HttpPost("register")]
        public IActionResult Register(RegisterAccountDTO registerAccountDTO)
        {
            if (ModelState.IsValid)
            {
                try
                {
                    _authService.Register(registerAccountDTO);
                    return Ok();
                }
                catch (Exception e)
                {
                    return BadRequest(new { message = "Something went wrong." });
                }
            }
            return BadRequest(new { message = "Something went wrong." });

        }

        [Authorize(Roles = "Admin")]
        [HttpGet("refresh")]
        public async Task<IActionResult> RefreshAccessToken()
        {
            var refreshCookieName = "REFRESH_TOKEN";

            try
            {
                string refreshedAccessToken = await _authService.RefreshAccessToken(HttpContext.Request.Cookies[refreshCookieName]);
                HttpContext.Response.Cookies.Append(
                    "ACCESS_TOKEN",
                    refreshedAccessToken,
                    new CookieOptions
                    {
                        Expires = DateTime.Now.AddMinutes(16),
                        HttpOnly = true,
                        Secure = true
                    });

                return Ok();
            }
            catch(Exception ex) {}
            {
                return BadRequest(new { message = "Something went wrong while refreshing access token." });
            }
        }
    }
}
