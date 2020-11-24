using BusinessLogic.DTO;
using DataAccessLayer.Models;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLogic.Services
{
    public interface IAppointmentService
    {
        Task<Appointment> CreateAppointment(CreateAppointmentDTO createAppointmentDTO);

        Task<ResultDTO> DeleteAppointment(Guid appointmentID);

        ResultDTO GetMyAppointments(Guid userId);
    }
}
