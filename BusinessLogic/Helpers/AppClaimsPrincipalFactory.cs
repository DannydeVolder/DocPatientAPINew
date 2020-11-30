using DataAccessLayer.Models;
using Microsoft.AspNetCore.Identity;
using Microsoft.Extensions.Logging;
using Microsoft.Extensions.Options;
using System;
using System.Collections.Generic;
using System.Security.Claims;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLogic.Helpers
{
    public class AppClaimsPrincipalFactory : UserClaimsPrincipalFactory<User, ApplicationRole>
    {
        public AppClaimsPrincipalFactory(UserManager<User> userManager,
            RoleManager<ApplicationRole> roleManager,
            IOptions<IdentityOptions> optionsAccessor,
            ILogger<AppClaimsPrincipalFactory> logger)
            : base(userManager, roleManager, optionsAccessor)
        {

        }

        public override async Task<ClaimsPrincipal> CreateAsync(User user)
        {
            var principal = await base.CreateAsync(user);
            var roles = await UserManager.GetRolesAsync(user);
            List<Claim> claims = new List<Claim>();
            foreach (string s in roles)
            {
                Claim c = new Claim("roles", s);
                claims.Add(c);
            }
            
            ((ClaimsIdentity)principal.Identity).AddClaims(claims);

            return principal;
        }


    }
}
