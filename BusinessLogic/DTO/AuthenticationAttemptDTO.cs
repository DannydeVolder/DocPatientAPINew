using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace BusinessLogic.DTO
{
    public class AuthenticationAttemptDTO
    {
        [Required]
        [StringLength(200, MinimumLength = 5,
        ErrorMessage = "Username should be minimum 5 characters and a maximum of 200 characters")]
        public string Username { get; set; }

        [Required]
        [StringLength(200, MinimumLength = 8,
        ErrorMessage = "Password should be minimum 8 characters and a maximum of 200 characters")]
        public string Password { get; set; }
    }
}
