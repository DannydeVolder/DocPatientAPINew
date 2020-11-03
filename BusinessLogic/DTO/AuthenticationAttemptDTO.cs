using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace BusinessLogic.DTO
{
    public class AuthenticationAttemptDTO
    {
        [Required]
        [StringLength(200, MinimumLength = 1,
        ErrorMessage = "Username should be minimum 1 characters and a maximum of 200 characters")]
        public string Username { get; set; }

        [Required]
        [StringLength(200, MinimumLength = 8,
        ErrorMessage = "Password should be minimum 8 characters and a maximum of 200 characters")]
        public string Password { get; set; }

        [StringLength(6, MinimumLength = 6,
        ErrorMessage = "2FA Code should be 6 characters.")]
        public string TwoFactorCode { get; set; }

        [StringLength(8, MinimumLength = 8,
        ErrorMessage = "2FA Recovery code should be 8 characters.")]
        public string RecoveryCode { get; set; }
    }
}
