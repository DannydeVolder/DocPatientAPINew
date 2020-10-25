using BusinessLogic.DTO;
using DataAccessLayer.Models;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLogic.Services
{
    public interface IMedicalFileService
    {

        Task<MedicalFile> AddMedicineToMedicalFile(AddMedicineToMedicalFileDTO addMedicineToMedicalFileDTO);
        Task<MedicalFile> AddDiagnosisToMedicalFile(AddDiagnosisToMedicalFileDTO addDiagnosisToMedicalFileDTO);

        Task<MedicalFile> GetMedicalFileByPatientId(Guid patientId);
    }
}
