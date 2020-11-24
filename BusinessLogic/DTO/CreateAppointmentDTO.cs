using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;
using System.Text.Json.Serialization;

namespace BusinessLogic.DTO
{
    public class CreateAppointmentDTO
    {
        [JsonIgnore]
        public Guid PatientID { get; set; }

        [Required]
        public Guid DoctorID { get; set; }

        [Required]
        [StringLength(200, MinimumLength = 1,
        ErrorMessage = "Appointment name should be minimum 1 characters and a maximum of 200 characters")]
        public string AppointmentName { get; set; }

        [Required]
        [DataType(DataType.Date)]
        public DateTime Date { get; set; }

        [Required]
        [StringLength(5, MinimumLength = 5, ErrorMessage = "Time string must be 5 characters min and max.")]
        public string Time { get; set; }
    }
}
