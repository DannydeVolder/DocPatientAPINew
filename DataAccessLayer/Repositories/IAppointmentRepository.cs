using DataAccessLayer.Models;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace DataAccessLayer.Repositories
{
    public interface IAppointmentRepository : IBaseRepository<Appointment, Guid>
    {
        List<Appointment> GetAppointmentsByUserID(Guid userID);
    }
}
