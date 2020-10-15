using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace DataAccessLayer.Models
{
    public class Doctor : User
    {

        public IList<Patient> Patients { get; set; } = new List<Patient>();
    }
}
