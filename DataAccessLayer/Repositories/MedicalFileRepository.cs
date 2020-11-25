using DataAccessLayer.Contexts;
using DataAccessLayer.Models;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace DataAccessLayer.Repositories
{
    public class MedicalFileRepository : BaseRepository<MedicalFile, Guid>, IMedicalFileRepository
    {
        private readonly IPatientRepository _patientRepository;
        public MedicalFileRepository(AppDbContext context, IPatientRepository patientRepository) : base(context)
        {
            _patientRepository = patientRepository;
        }

        public async Task<MedicalFile> addDiagnosisToMedicalFile(Guid medicalFileID, Diagnosis diagnosis)
        {
           
            var medicalFile = await _context.MedicalFiles.SingleOrDefaultAsync(x => x.PatientId == medicalFileID);
            if(medicalFile == null)
            {
                var patient = await _patientRepository.GetById(medicalFileID);
                MedicalFile file = new MedicalFile();
                file.Patient = patient;
                await Insert(file);
                var medicalFile2 = await _context.MedicalFiles.SingleOrDefaultAsync(x => x.PatientId == medicalFileID);
                medicalFile2.Diagnosis.Add(diagnosis);
                var result1 = await _context.SaveChangesAsync();

                if (result1 > 0)
                {
                    return medicalFile2;
                }

                return null;
            }

            medicalFile.Diagnosis.Add(diagnosis);
            var result2 = await _context.SaveChangesAsync();

            if (result2 > 0)
            {
                return medicalFile;
            }

            return null;
        }

        public async Task<MedicalFile> addMedicineToMedicalFile(Guid medicalFileID, Medicine medicine)
        {
            var medicalFile = await _context.MedicalFiles.SingleOrDefaultAsync(x => x.PatientId == medicalFileID);
            if (medicalFile == null)
            {
                var patient = await _patientRepository.GetById(medicalFileID);
                MedicalFile file = new MedicalFile();
                file.Patient = patient;
                await Insert(file);
                var medicalFile2 = await _context.MedicalFiles.SingleOrDefaultAsync(x => x.PatientId == medicalFileID);
                medicalFile2.Medicine.Add(medicine);
                var result1 = await _context.SaveChangesAsync();

                if (result1 > 0)
                {
                    return medicalFile2;
                }

                return null;
            }
            medicalFile.Medicine.Add(medicine);
            var result = await _context.SaveChangesAsync();
            if(result > 0)
            {
                return medicalFile;
            }
            return null;
        }

        public async Task<MedicalFile> getMedicalFileByPatientId(Guid patientId)
        {
            var patient = await _patientRepository.GetById(patientId);
            Console.WriteLine(patient.FirstName);
            if(patient == null)
            {
                return null;
            }
            var medicalFileResult = await _context.MedicalFiles.Include(m => m.Medicine).Include(m => m.Diagnosis).SingleOrDefaultAsync(x => x.PatientId == patientId);
            if(medicalFileResult == null)
            {

                MedicalFile file = new MedicalFile();
                file.Patient = patient;
                await Insert(file);
            }
            return await _context.MedicalFiles.Include(m => m.Medicine).Include(m => m.Diagnosis).SingleOrDefaultAsync(x => x.PatientId == patientId);
        }
    }
}
