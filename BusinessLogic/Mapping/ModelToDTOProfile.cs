using AutoMapper;
using BusinessLogic.DTO;
using DataAccessLayer.Models;
using System;
using System.Collections.Generic;
using System.Text;

namespace BusinessLogic.Mapping
{
    public class ModelToDTOProfile : Profile
    {
        public ModelToDTOProfile()
        {
            CreateMap<User, PatientDTO>();
            CreateMap<User, UserDTO> ();
        }
    }
}
