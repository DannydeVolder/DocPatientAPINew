using DataAccessLayer.Contexts;
using DataAccessLayer.Models;
using System;
using System.Collections.Generic;
using System.Text;

namespace DataAccessLayer.Repositories
{
    public class DoctorRepository : BaseRepository<Doctor, Guid>, IDoctorRepository
    {
        public DoctorRepository(AppDbContext context) : base(context)
        {

        }
    }
}
