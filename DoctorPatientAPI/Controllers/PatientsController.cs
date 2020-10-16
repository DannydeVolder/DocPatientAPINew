using BusinessLogic.Services;
using BusinessLogic.DTO;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices.ComTypes;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;

namespace DoctorPatientAPI.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class PatientsController : ControllerBase
    {
        private readonly IPatientService _patientService;

        public PatientsController(IPatientService patientService)
        {
            _patientService = patientService;
        }


        [Authorize]
        [HttpGet]
        public async Task<IEnumerable<PatientDTO>> GetAllAsync()
        {
            var patients = await _patientService.ListAsync();
            return patients;
        }
    }
}
