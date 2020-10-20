using DataAccessLayer.Models;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace DataAccessLayer.Repositories
{
    public interface IUserRepository : IBaseRepository<User, Guid>
    {
        Task<User> GetByUsername(string username);
    }
}
