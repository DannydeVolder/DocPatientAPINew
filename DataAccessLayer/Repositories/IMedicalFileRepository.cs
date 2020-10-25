using DataAccessLayer.Models;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace DataAccessLayer.Repositories
{
    public interface IMedicalFileRepository : IBaseRepository<MedicalFile, Guid>
    {
        Task<MedicalFile> addMedicineToMedicalFile(Guid medicalFileID, Medicine medicine);
        Task<MedicalFile> addDiagnosisToMedicalFile(Guid medicalFileID, Diagnosis diagnosis);
        Task<MedicalFile> getMedicalFileByPatientId(Guid patientId);
    }
}
