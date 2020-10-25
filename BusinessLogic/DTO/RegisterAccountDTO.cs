using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace BusinessLogic.DTO
{
    public class RegisterAccountDTO
    {
        [Required]
        [StringLength(200, MinimumLength = 1,
        ErrorMessage = "First Name should be minimum 1 characters and a maximum of 200 characters")]
        public string FirstName { get; set; }
        [Required]
        [StringLength(200, MinimumLength = 1,
        ErrorMessage = "Last name should be minimum 1 characters and a maximum of 200 characters")]
        public string LastName { get; set; }
        [Required]
        [StringLength(200, MinimumLength = 1,
        ErrorMessage = "Username should be minimum 1 characters and a maximum of 200 characters")]
        public string Username { get; set; }

        [Required]
        [DataType(DataType.Date)]
        public DateTime DateOfBirth { get; set; }

        [Required]
        [StringLength(200, MinimumLength = 8,
        ErrorMessage = "Password should be minimum 1 characters and a maximum of 200 characters")]
        public string Password { get; set; }
    }
}
