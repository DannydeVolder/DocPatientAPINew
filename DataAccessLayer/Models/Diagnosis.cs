using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Text;

namespace DataAccessLayer.Models
{
    public class Diagnosis : IEntity<Guid>
    {
        public Guid Id { get; set; }

        public string DiagnosisName { get; set; }
        public string DiagnosisInformation { get; set; }

        public Guid? MedicalFileID { get; set; }
    }
}
