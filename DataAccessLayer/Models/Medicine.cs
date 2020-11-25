using System;
using System.Collections.Generic;
using System.Text;
using System.Text.Json.Serialization;

namespace DataAccessLayer.Models
{
    public class Medicine : IEntity<Guid>
    {
        public Guid Id { get; set; }

        public string MedicineName { get; set; }
        public string Dosage { get; set; }

        public Guid? MedicalFileID { get; set; }
    }
}
