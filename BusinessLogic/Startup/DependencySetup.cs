using AutoMapper;
using BusinessLogic.Services;
using DataAccessLayer.Contexts;
using DataAccessLayer.Models;
using DataAccessLayer.Startup;
using Microsoft.AspNetCore.Identity;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using System;
using System.Collections.Generic;
using System.Text;

namespace BusinessLogic.Startup
{
    public class DependencySetup
    {

        public static void ConfigureServices(IServiceCollection services, IConfiguration configuration)
        {
            IdentityBuilder builder = services.AddIdentityCore<User>(opt =>
                {
                    opt.Password.RequireDigit = true;
                    opt.Password.RequiredLength = 8;
                    opt.Password.RequireNonAlphanumeric = false;
                    opt.Password.RequireUppercase = true;
                    opt.Password.RequireLowercase = true;
                }
            );

            builder = new IdentityBuilder(builder.UserType, typeof(ApplicationRole), builder.Services);

            builder.AddEntityFrameworkStores<AppDbContext>();

            builder.AddRoleValidator<RoleValidator<ApplicationRole>>();
            builder.AddRoleManager<RoleManager<ApplicationRole>>();

            builder.AddSignInManager<SignInManager<User>>();

            services.AddScoped<IPatientService, PatientService>();
            services.AddScoped<IAuthService, AuthService>();
            services.AddAutoMapper(typeof(DependencySetup));
            services.Configure<AppSettings>(configuration.GetSection("AppSettings"));
            DependencySetupDAL.ConfigureServices(services, configuration);
        }

    }
}
