using System;
using System.Collections.Generic;
using System.Text;
using System.Text.Json.Serialization;

namespace DataAccessLayer.Models
{
    public class MedicalFile : IEntity<Guid>
    {
        public Guid Id { get; set; }

        [JsonIgnore]
        public Patient Patient { get; set; }
        [JsonIgnore]
        public Guid? PatientId { get; set; }
        public IList<Medicine> Medicine { get; set; } = new List<Medicine>();

        public IList<Diagnosis> Diagnosis { get; set; } = new List<Diagnosis>();
    }
}
