using DataAccessLayer.Models;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.ChangeTracking;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Metadata;
using System.Threading.Tasks;

namespace DataAccessLayer.Contexts
{
    public class AppDbContext : IdentityDbContext<User, ApplicationRole, Guid>
    {



        public AppDbContext(DbContextOptions<AppDbContext> options) : base(options)
        {

        }


        public DbSet<Patient> Patients { get; set; }
        public DbSet<Doctor> Doctors { get; set; }

        public DbSet<MedicalFile> MedicalFiles { get; set; }
        public DbSet<Medicine> Medicine { get; set; }

        public DbSet<Diagnosis> Diagnosis { get; set; }

        protected override void OnModelCreating(ModelBuilder builder)
        {

            base.OnModelCreating(builder);


            builder.Entity<Doctor>()
                .HasMany(p => p.Patients)
                .WithOne(p => p.Doctor)
                .HasForeignKey(p => p.DoctorId)
                .OnDelete(DeleteBehavior.Restrict);

            builder.Entity<Medicine>()
                .HasOne(p => p.MedicalFile)
                .WithMany(p => p.Medicine)
                .HasForeignKey(p => p.MedicalFileID)
                .OnDelete(DeleteBehavior.Restrict);

            builder.Entity<MedicalFile>()
                .HasMany(p => p.Diagnosis)
                .WithOne(p => p.MedicalFile)
                .HasForeignKey(p => p.MedicalFileID)
                .OnDelete(DeleteBehavior.Restrict);

            builder.Entity<User>().ToTable("Users");
            builder.Entity<MedicalFile>().ToTable("MedicalFiles");
            builder.Entity<Medicine>().ToTable("Medicine");
            builder.Entity<Diagnosis>().ToTable("Diagnosis");






        }
    }
}
