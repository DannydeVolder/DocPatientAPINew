using AutoMapper;
using BusinessLogic.Services;
using DataAccessLayer.Startup;
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
            services.AddScoped<IPatientService, PatientService>();
            services.AddScoped<IAuthService, AuthService>();
            services.AddAutoMapper(typeof(DependencySetup));
            services.Configure<AppSettings>(configuration.GetSection("AppSettings"));
            DependencySetupDAL.ConfigureServices(services, configuration);
        }

    }
}
