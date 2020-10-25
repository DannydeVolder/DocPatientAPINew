using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace BusinessLogic.DTO
{
    public class AddDiagnosisToMedicalFileDTO
    {
        [Required]
        public Guid MedicalFileID { get; set; }

        [Required]
        [StringLength(200, MinimumLength = 1,
        ErrorMessage = "Diagnosis name should be minimum 1 characters and a maximum of 500 characters")]
        public string DiagnosisName { get; set; }

        [Required]
        [StringLength(500, MinimumLength = 1,
        ErrorMessage = "Diagnosis information should be minimum 1 characters and a maximum of 500 characters")]
        public string DiagnosisInformation { get; set; }
    }
}
