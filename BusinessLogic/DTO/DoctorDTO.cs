using System;
using System.Collections.Generic;
using System.Text;

namespace BusinessLogic.DTO
{
    public class DoctorDTO
    {
        public Guid Id { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public DateTime DateOfBirth { get; set; }
    }
}
