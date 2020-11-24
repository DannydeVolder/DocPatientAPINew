using System;
using System.Collections.Generic;
using System.Text;

namespace DataAccessLayer.Models
{
    public class Appointment : IEntity<Guid>
    {
        public Guid Id { get;  set; }

        public string AppointmentName { get; set; }

        public DateTime Date{ get; set; }

        public string Time { get; set; }

        public Patient Patient { get; set; }
        public Guid? PatientId { get; set; }

        public Doctor Doctor { get; set; }
        public Guid? DoctorId { get; set; }
    }
}
