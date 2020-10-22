using Microsoft.AspNetCore.Identity;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLogic.Services
{
    public interface IRoleService
    {
        Task<IdentityResult> CreateRole(string roleName);
    }
}
