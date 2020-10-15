using AutoMapper;
using BusinessLogic.DTO;
using DataAccessLayer.Models;
using DataAccessLayer.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace BusinessLogic.Services
{
    public class PatientService : IPatientService
    {
        private readonly IMapper _mapper;

        private readonly IPatientRepository _patientRepository;

        public PatientService(IPatientRepository patientRepository, IMapper mapper)
        {
            _patientRepository = patientRepository;
            _mapper = mapper;
        }

        public async Task<IEnumerable<PatientDTO>> ListAsync()
        {
            var patients = await _patientRepository.GetAll();
            var patientsDTO = _mapper.Map<IEnumerable<User>, IEnumerable<PatientDTO>>(patients);
            return patientsDTO;
        }
    }
}
