using System;
using System.Collections.Generic;
using System.Linq;
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
    public class DoctorController : ControllerBase
    {
        private readonly IDoctorService _doctorService;

        public DoctorController(IDoctorService doctorService)
        {
            _doctorService = doctorService;
        }

        [Authorize(AuthenticationSchemes = "AccessToken", Roles = Role.Doctor + "," + Role.Patient)]
        [HttpGet]
        public async Task<IEnumerable<DoctorDTO>> GetAllAsync()
        {
            var doctors = await _doctorService.ListAsync();
            return doctors;
        }
    }
}
