using System;
using System.Collections.Generic;
using System.Text;

namespace BusinessLogic.Exceptions
{
    public class TwoFactorEnabledException : Exception
    {
        public TwoFactorEnabledException()
        {

        }

        public TwoFactorEnabledException(string message) : base(message)
        {

        }
    }
}
