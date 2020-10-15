using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using BusinessLogic.DTO;
using DataAccessLayer.Models;

namespace BusinessLogic.Services
{
    public interface IPatientService
    {

        Task<IEnumerable<PatientDTO>> ListAsync();

    }
}
