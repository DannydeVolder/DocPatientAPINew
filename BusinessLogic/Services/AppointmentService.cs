using AutoMapper;
using BusinessLogic.DTO;
using DataAccessLayer.Models;
using DataAccessLayer.Repositories;
using System;
using System.Collections.Generic;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLogic.Services
{
    public class AppointmentService : IAppointmentService
    {
        private readonly IAppointmentRepository _appointmentRepository;
        private readonly IMapper _mapper;

        public AppointmentService(IAppointmentRepository appointmentRepository, IMapper mapper)
        {
            _appointmentRepository = appointmentRepository;
            _mapper = mapper;
        }

        public async Task<Appointment> CreateAppointment(CreateAppointmentDTO createAppointmentDTO)
        {
            Appointment appointment = new Appointment();
            appointment.AppointmentName = createAppointmentDTO.AppointmentName;
            appointment.Date = createAppointmentDTO.Date;
            appointment.Time = createAppointmentDTO.Time;
            appointment.DoctorId = createAppointmentDTO.DoctorID;
            appointment.PatientId = createAppointmentDTO.PatientID;
            var result = await _appointmentRepository.Insert(appointment);

            if(result > 0)
            {
                return appointment;
            }
            return null;
        }

        public async Task<ResultDTO> DeleteAppointment(Guid appointmentID)
        {

            var deleted = _appointmentRepository.Delete(appointmentID);

            if (deleted)
            {
                ResultDTO result1 = new ResultDTO();
                result1.Message = "Appointment succesfully deleted.";
                result1.Status = Status.Success;
                return result1;
            }

            ResultDTO result2 = new ResultDTO();
            result2.Message = "Something went wrong while deleting appointment, or appointment doesn't exist.";
            result2.Status = Status.Error;
            return result2;
        }

        public ResultDTO GetMyAppointments(Guid userId)
        {
             var appointmentResult = _appointmentRepository.GetAppointmentsByUserID(userId);
            var appointmentsDTO = _mapper.Map<List<Appointment>, List<AppointmentDTO>>(appointmentResult);


            if(appointmentsDTO != null && appointmentsDTO.Count > 0)
            {
                ResultDTO result = new ResultDTO();
                result.Status = Status.Success;
                result.Data = appointmentsDTO;
                return result;

            }
            else if(appointmentsDTO.Count == 0)
            {
                ResultDTO result2 = new ResultDTO();
                result2.Message = "No appointments found for this user.";
                result2.Status = Status.Error;
                return result2;
            }
            else
            {
                ResultDTO result3 = new ResultDTO();
                result3.Message = "Something went wrong while retrieving appointments.";
                result3.Status = Status.Error;
                return result3;
            }

        }
    }
}
