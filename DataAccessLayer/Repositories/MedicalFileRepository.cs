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
        public MedicalFileRepository(AppDbContext context) : base(context)
        {
                
        }

        public async Task<MedicalFile> addDiagnosisToMedicalFile(Guid medicalFileID, Diagnosis diagnosis)
        {
            var medicalFile = await _context.MedicalFiles.SingleOrDefaultAsync(x => x.PatientId == medicalFileID);
            medicalFile.Diagnosis.Add(diagnosis);
            var result = await _context.SaveChangesAsync();

            if(result > 0)
            {
                return medicalFile;
            }

            return null;
        }

        public async Task<MedicalFile> addMedicineToMedicalFile(Guid medicalFileID, Medicine medicine)
        {
            var medicalFile = await _context.MedicalFiles.SingleOrDefaultAsync(x => x.PatientId == medicalFileID);
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
            return await _context.MedicalFiles.Include(m => m.Medicine).Include(m => m.Diagnosis).SingleOrDefaultAsync(x => x.PatientId == patientId);
        }
    }
}
