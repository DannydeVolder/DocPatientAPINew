using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace BusinessLogic.DTO
{
    public class VerifyAuthenticatorDTO
    {
        [Required]
        public Guid UserId { get; set; }
        [Required]
        public string VerificationCode { get; set; }
    }
}
