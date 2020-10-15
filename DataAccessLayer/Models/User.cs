using System;
using System.Collections.Generic;
using System.Text;

namespace DataAccessLayer.Models
{
    public class User : BaseEntity
    {
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Password { get; set; }
        public string Username { get; set; }
        public string RefreshToken { get; set; }  
        public IList<Role> Roles { get; set; } = new List<Role>();

    }
}
