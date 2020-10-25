using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace BusinessLogic.DTO
{
    public class AddMedicineToMedicalFileDTO
    {
        [Required]
        public Guid MedicalFileID { get; set; }

        [Required]
        [StringLength(200, MinimumLength = 1,
        ErrorMessage = "Medicine name should be minimum 1 characters and a maximum of 200 characters")]
        public string MedicineName { get; set; }

        [Required]
        [StringLength(200, MinimumLength = 1,
        ErrorMessage = "Medicine dosage should be minimum 1 characters and a maximum of 200 characters")]
        public string MedicineDosage { get; set; }
    }
}
