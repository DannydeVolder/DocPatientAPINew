using System;
using System.Collections.Generic;
using System.Text;

namespace BusinessLogic
{
    public class AppSettings
    {
        public string JwtSecret { get; set; }
        public string RefreshSecret { get; set; }
        public string ClaimsName { get; set; }
        public string ClaimsUser { get; set; }
        public int AccessTokenLifetime { get; set; }
        public int RefreshTokenLifetime { get; set; }
    }
}
