using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace BusinessLogic.DTO
{
    public class AppointmentDTO
    {
        public Guid Id { get; set; }
        public DoctorDTO doctor { get; set; }
        public DateTime Date { get; set; }
        public string Time { get; set; }
        public string AppointmentName { get; set; }
    }
}
