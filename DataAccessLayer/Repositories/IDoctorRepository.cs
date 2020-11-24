using DataAccessLayer.Models;
using System;
using System.Collections.Generic;
using System.Text;

namespace DataAccessLayer.Repositories
{
    public interface IDoctorRepository : IBaseRepository<Doctor, Guid>
    {
    }
}
