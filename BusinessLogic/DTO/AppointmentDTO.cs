using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace BusinessLogic.DTO
{
    public class AppointmentDTO
    {
        public string Id { get; set; }
        public string DoctorName { get; set; }
        public DateTime DateAndTime { get; set; }
    }
}
