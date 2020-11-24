using BusinessLogic.DTO;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLogic.Services
{
    public interface IDoctorService
    {
        Task<IEnumerable<DoctorDTO>> ListAsync();

        Task<DoctorDTO> GetDoctor(Guid doctorId);
    }
}
