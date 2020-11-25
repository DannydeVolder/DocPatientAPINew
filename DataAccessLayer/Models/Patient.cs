using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.Json.Serialization;
using System.Threading.Tasks;

namespace DataAccessLayer.Models
{
    public class Patient : User
    {

        public Doctor Doctor { get; set; }
        public Guid? DoctorId { get; set; }

        public MedicalFile MedicalFile { get; set; }

    }
}
