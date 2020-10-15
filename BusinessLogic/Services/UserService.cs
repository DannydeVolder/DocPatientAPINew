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
    public class UserService : IUserService
    {
        private readonly IMapper _mapper;
        private readonly IUserRepository _userRepository;

        public UserService(IUserRepository userRepository, IMapper mapper)
        {
            _userRepository = userRepository;
            _mapper = mapper;
        }
        public async Task<UserDTO> GetById(Guid userId)
        {
            var user = await _userRepository.GetById(userId);
            var userDTO = _mapper.Map<User, UserDTO>(user);

            return userDTO;
        }

        public async Task<UserDTO> GetByUserName(string username)
        {
            var user = await _userRepository.GetByUsername(username);
            var userDTO = _mapper.Map<User, UserDTO>(user);
            return userDTO;
        }
    }
}
