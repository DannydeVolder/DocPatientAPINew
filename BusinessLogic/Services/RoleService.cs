using DataAccessLayer.Models;
using Microsoft.AspNetCore.Identity;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLogic.Services
{
    public class RoleService : IRoleService
    {
        private readonly RoleManager<ApplicationRole> _roleManager;
        public RoleService(RoleManager<ApplicationRole> roleManager)
        {
            _roleManager = roleManager;
        }
        public async Task<IdentityResult> CreateRole(string roleName)
        {
            return await _roleManager.CreateAsync(new ApplicationRole(roleName));
        }
    }
}
