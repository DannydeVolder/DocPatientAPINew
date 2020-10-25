using System;
using System.Collections.Generic;
using System.Text;

namespace DataAccessLayer.Models
{
    public class MedicalFile : IEntity<Guid>
    {
        public Guid Id { get; set; }

        public Patient Patient { get; set; }
        public Guid? PatientId { get; set; }
        public IList<Medicine> Medicine { get; set; } = new List<Medicine>();

        public IList<Diagnosis> Diagnosis { get; set; } = new List<Diagnosis>();
    }
}
