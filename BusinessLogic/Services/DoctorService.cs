using AutoMapper;
using BusinessLogic.DTO;
using DataAccessLayer.Models;
using DataAccessLayer.Repositories;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLogic.Services
{
    public class DoctorService : IDoctorService
    {
        private readonly IDoctorRepository _doctorRepository;
        private readonly IMapper _mapper;
        public DoctorService(IDoctorRepository doctorRepository, IMapper mapper)
        {
            _doctorRepository = doctorRepository;
            _mapper = mapper;
        }

        public async Task<IEnumerable<DoctorDTO>> ListAsync()
        {
            var doctors = await _doctorRepository.GetAll();
            var doctorsDTO = _mapper.Map<IEnumerable<User>, IEnumerable<DoctorDTO>>(doctors);
            return doctorsDTO;
        }

        public async Task<DoctorDTO> GetDoctor(Guid doctorId)
        {
            var doctor = await _doctorRepository.GetById(doctorId);
            var doctorDTO = _mapper.Map<User, DoctorDTO>(doctor);
            return doctorDTO;
        }
    }
}
