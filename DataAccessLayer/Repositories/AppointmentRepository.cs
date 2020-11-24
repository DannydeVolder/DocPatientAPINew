using DataAccessLayer.Contexts;
using DataAccessLayer.Models;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccessLayer.Repositories
{
    public class AppointmentRepository : BaseRepository<Appointment, Guid>, IAppointmentRepository
    {

        public AppointmentRepository(AppDbContext context) : base(context)
        {
        }

        public List<Appointment> GetAppointmentsByUserID(Guid userID)
        {
            var appointments = _context.Appointments.Include(d => d.Doctor).Where(x => x.PatientId == userID || x.DoctorId == userID);
            return appointments.ToList();
        }
    }
}
