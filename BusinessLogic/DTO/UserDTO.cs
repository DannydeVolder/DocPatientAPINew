using DataAccessLayer.Models;
using System;
using System.Collections.Generic;
using System.Security.Claims;
using System.Text;
using System.Text.Json.Serialization;

namespace BusinessLogic.DTO
{
    public class UserDTO
    {
        public Guid Id { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Username { get; set; }
        public IList<string> Roles { get; set; }

        [JsonIgnore]
        public string JwtToken { get; set; }

        [JsonIgnore]
        public string RefreshToken { get; set; }

        [JsonIgnore]
        public ClaimsPrincipal claimsUserPrincipal { get; set; }
    }
}
