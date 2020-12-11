using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Security.Claims;
using System.Threading.Tasks;
using BCrypt.Net;
using BusinessLogic.DTO;
using BusinessLogic.Exceptions;
using BusinessLogic.Helpers;
using BusinessLogic.Services;
using DataAccessLayer.Models;
using Microsoft.AspNetCore.Antiforgery;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Cors;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;

namespace DoctorPatientAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class AuthController : ControllerBase
    {
        private readonly IAuthService _authService;
        protected IAntiforgery _antiforgery;

        public AuthController(IAuthService authService, IAntiforgery antiforgery)
        {
            _antiforgery = antiforgery;
            _authService = authService;
        }

        [AllowAnonymous]
        [IgnoreAntiforgeryToken]
        [HttpPost("authenticate")]
        public async Task<IActionResult> Authenticate(AuthenticationAttemptDTO authAttemptDTO)
        {
            if (ModelState.IsValid)
            {
                try
                {
                    var response = await _authService.Authenticate(authAttemptDTO);


                    //Generate Access token HTTPonly cookie
                    Response.Cookies.Append(
                        "ACCESS_TOKEN",
                        response.JwtToken,
                        new CookieOptions
                        {
                            Expires = DateTime.Now.AddMinutes(15),
                            HttpOnly = true,
                            IsEssential = true
                        });

                    //Generate Refresh token HTTPonly cookie
                    Response.Cookies.Append(
                        "REFRESH_TOKEN",
                        response.RefreshToken,
                        new CookieOptions
                        {
                            Expires = DateTime.Now.AddDays(3),
                            HttpOnly = true,
                            IsEssential = true
                        });

                    HttpContext.User = response.claimsUserPrincipal;

                    var tokens = _antiforgery.GetAndStoreTokens(HttpContext);
                    Response.Cookies.Append(
                        "XSRF-REQUEST-TOKEN",
                        tokens.RequestToken,
                        new CookieOptions()
                        {
                            Expires = DateTime.Now.AddDays(3),
                            HttpOnly = false,
                            IsEssential = true
                        });

                    var result = new ResultDTO();
                    result.Status = Status.Success;
                    result.Message = "Successfully authenticated.";
                    result.Data = response;
                    return Ok(result);
                }
                catch (TwoFactorEnabledException ex)
                {
                    var result = new ResultDTO();
                    result.Status = Status.Error;
                    result.Message = "Two factor authentication is enabled, please provide your 2fa code.";
                    return Ok(result);
                }
                catch(UsernameOrPasswordIncorrectException ex)
                {
                    return BadRequest(new { message = "Username or password is incorrect." });
                }
            }
            return BadRequest(ModelState);
        }

        [IgnoreAntiforgeryToken]
        [Authorize(AuthenticationSchemes = "RefreshToken")]
        [HttpPost("signout")]
        public async Task<IActionResult> SignOut()
        {
            if (ModelState.IsValid)
            {
                var signedOut = await _authService.SignOut(Guid.Parse(User.FindFirstValue(ClaimTypes.NameIdentifier)));

                if (signedOut)
                {
                    Response.Cookies.Delete("ACCESS_TOKEN");
                    Response.Cookies.Delete("REFRESH_TOKEN");
                    Response.Cookies.Delete("XSRF-REQUEST-TOKEN");
                    return Ok();
                }

                else
                {
                    return BadRequest(new { message = "Something went wrong." });
                }
            }
            return BadRequest(ModelState);
        }

        [AllowAnonymous]
        [IgnoreAntiforgeryToken]
        [HttpPost("register")]
        public async Task<IActionResult> Register(RegisterAccountDTO registerAccountDTO)
        {
            if (ModelState.IsValid)
            {
                try
                {
                    var result = await _authService.Register(registerAccountDTO);
                    if (result == true)
                    {
                        return Ok();
                    }
                }
                catch(UserNameTakenException e)
                {
                    return BadRequest(new { message = e.Message });
                }
                catch (Exception)
                {
                    return BadRequest(new { message = "Something went wrong." });
                }
            }
            return BadRequest(new { message = "Something went wrong." });

        }

        [Authorize(AuthenticationSchemes = "AccessToken")]
        [HttpPost("registerdoctor")]
        public async Task<IActionResult> RegisterDoctor(RegisterAccountDTO registerAccountDTO)
        {
            if (ModelState.IsValid)
            {
                try
                {
                    var result = await _authService.RegisterDoctor(registerAccountDTO);
                    if (result == true)
                    {
                        return Ok();
                    }
                }
                catch (UserNameTakenException e)
                {
                    return BadRequest(new { message = e.Message });
                }
                catch (Exception)
                {
                    return BadRequest(new { message = "Something went wrong." });
                }
            }
            return BadRequest(new { message = "Something went wrong." });
        }

        [IgnoreAntiforgeryToken]
        [Authorize(AuthenticationSchemes = "RefreshToken")]
        [HttpPost("refresh")]
        public async Task<IActionResult> RefreshAccessToken()
        {
            var refreshCookieName = "REFRESH_TOKEN";

            try
            {
                var user = await _authService.RefreshAccessToken(HttpContext.Request.Cookies[refreshCookieName]);
                Response.Cookies.Append(
                    "ACCESS_TOKEN",
                    user.JwtToken,
                    new CookieOptions
                    {
                        Expires = DateTime.Now.AddMinutes(15),
                        HttpOnly = true,
                    });

                return Ok(user);
            }
            catch(Exception exception)
            {
                return BadRequest(new { message = "Something went wrong while refreshing access token." });
            }
        }



    }
}
