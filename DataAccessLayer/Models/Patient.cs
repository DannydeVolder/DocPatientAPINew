using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace DataAccessLayer.Models
{
    public class Patient : User
    {
        public DateTime DateOfBirth { get; set; }

        public Doctor Doctor { get; set; }
        public Guid? DoctorId { get; set; }

    }
}
