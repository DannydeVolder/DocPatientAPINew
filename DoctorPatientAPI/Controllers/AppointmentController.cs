using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Security.Claims;
using System.Threading.Tasks;
using BusinessLogic.DTO;
using BusinessLogic.Helpers;
using BusinessLogic.Services;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace DoctorPatientAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class AppointmentController : ControllerBase
    {
        private readonly IAppointmentService _appointmentService;


        public AppointmentController(IAppointmentService appointmentService)
        {
            _appointmentService = appointmentService;
        }

        [Authorize(AuthenticationSchemes = "AccessToken", Roles = Role.Patient)]
        [HttpPost("createappointment")]
        public async Task<IActionResult> CreateAppointment(CreateAppointmentDTO createAppointmentDTO)
        {
            if (ModelState.IsValid)
            {
                createAppointmentDTO.PatientID = Guid.Parse(User.FindFirstValue(ClaimTypes.NameIdentifier));
                var result = await _appointmentService.CreateAppointment(createAppointmentDTO);

                if(result != null)
                {
                    return Ok(result);
                }
                return BadRequest(new { message = "Something went wrong while creating appointment." });
            }
            return BadRequest(ModelState);
        }

        [Authorize(AuthenticationSchemes = "AccessToken", Roles = Role.Doctor + "," + Role.Patient)]
        [HttpDelete("deleteappointment")]
        public async Task<IActionResult> DeleteAppointment([Required] Guid appointmentId)
        {
            if (ModelState.IsValid)
            {
                var result = await _appointmentService.DeleteAppointment(appointmentId);

                if(result.Status == Status.Success)
                {
                    return Ok();
                }

                return BadRequest(new { message = result.Message });
            }
            return BadRequest(ModelState);
        }

        [Authorize(AuthenticationSchemes = "AccessToken", Roles = Role.Doctor + "," + Role.Patient)]
        [HttpGet("getmyappointments")]
        public async Task<IActionResult> GetMyAppointments()
        {
            var userId = User.FindFirstValue(ClaimTypes.NameIdentifier);
            var result = _appointmentService.GetMyAppointments(Guid.Parse(userId));

            if(result.Status == Status.Error)
            {
                return BadRequest(new { message = result.Message });
            }

            return Ok(result);
        }
    }
}
