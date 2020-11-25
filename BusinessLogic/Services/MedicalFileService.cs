using BusinessLogic.DTO;
using DataAccessLayer.Models;
using DataAccessLayer.Repositories;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLogic.Services
{
    public class MedicalFileService : IMedicalFileService
    {
        private readonly IMedicalFileRepository _medicalFileRepository;
        public MedicalFileService(IMedicalFileRepository medicalFileRepository)
        {
            _medicalFileRepository = medicalFileRepository;
        }

        public async Task<MedicalFile> AddDiagnosisToMedicalFile(AddDiagnosisToMedicalFileDTO addDiagnosisToMedicalFileDTO)
        {
            Diagnosis diagnosis = new Diagnosis();
            diagnosis.DiagnosisName = addDiagnosisToMedicalFileDTO.DiagnosisName;
            diagnosis.DiagnosisInformation = addDiagnosisToMedicalFileDTO.DiagnosisInformation;
            var result = await _medicalFileRepository.addDiagnosisToMedicalFile(addDiagnosisToMedicalFileDTO.MedicalFileID, diagnosis);

            return result;
        }

        public async Task<MedicalFile> AddMedicineToMedicalFile(AddMedicineToMedicalFileDTO addMedicineToMedicalFileDTO)
        {
            Medicine medicine = new Medicine();
            medicine.MedicineName = addMedicineToMedicalFileDTO.MedicineName;
            medicine.Dosage = addMedicineToMedicalFileDTO.MedicineDosage;
            var result = await _medicalFileRepository.addMedicineToMedicalFile(addMedicineToMedicalFileDTO.MedicalFileID, medicine);

            return result;


        }

        public async Task<MedicalFile> GetMedicalFileByPatientId(Guid patientId)
        {
            var medicalFile = await _medicalFileRepository.getMedicalFileByPatientId(patientId);
            return medicalFile;
        }
    }
}
