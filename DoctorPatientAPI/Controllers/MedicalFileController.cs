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
    [Authorize(AuthenticationSchemes = "AccessToken")]
    [Route("api/[controller]")]
    [ApiController]
    public class MedicalFileController : ControllerBase
    {

        private readonly IMedicalFileService _medicalFileService;

        public MedicalFileController(IMedicalFileService medicalFileService)
        {
            _medicalFileService = medicalFileService;
        }

        [Authorize(AuthenticationSchemes = "AccessToken", Roles = Role.Doctor)]
        [HttpPost("adddiagnosis")]
        public async Task<IActionResult> AddDiagnosisToMedicalFile(AddDiagnosisToMedicalFileDTO addDiagnosisToMedicalFileDTO)
        {
            if (ModelState.IsValid)
            {
                var result = await _medicalFileService.AddDiagnosisToMedicalFile(addDiagnosisToMedicalFileDTO);
                if (result != null)
                {
                    return Ok(result);
                }
                return BadRequest(new { message = "Something went wrong." });
            }
            return BadRequest(ModelState);
        }

        [Authorize(AuthenticationSchemes = "AccessToken", Roles = Role.Doctor)]
        [HttpPost("addmedication")]
        public async Task<IActionResult> AddMedicineToMedicalFile(AddMedicineToMedicalFileDTO addMedicineToMedicalFileDTO)
        {
            if (ModelState.IsValid)
            {
                var result = await _medicalFileService.AddMedicineToMedicalFile(addMedicineToMedicalFileDTO);
                if (result != null)
                {
                    return Ok();
                }
                return BadRequest(new { message = "Something went wrong." });
            }
            return BadRequest(ModelState);
        }

        [Authorize(AuthenticationSchemes = "AccessToken", Roles = Role.Doctor + "," + Role.Patient)]
        [HttpGet("getbyid")]
        public async Task<IActionResult> GetMedicalFileByPatientId([Required] Guid patientId)
        {
            if (ModelState.IsValid)
            {
                var result = await _medicalFileService.GetMedicalFileByPatientId(patientId);
                if (result != null)
                {
                    return Ok(result);
                }
                return BadRequest(new { message = "Something went wrong." });
            }
            return BadRequest(ModelState);

        }
    }
}
