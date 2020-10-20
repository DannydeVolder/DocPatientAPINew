using DataAccessLayer.Contexts;
using DataAccessLayer.Models;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace DataAccessLayer.Repositories
{
    public class PatientRepository : BaseRepository<Patient, Guid>, IPatientRepository
    {
        public PatientRepository(AppDbContext context) : base(context)
        {

        }
    }
}
