using System;
using System.Collections.Generic;
using System.Text;

namespace BusinessLogic.Exceptions
{
    public class UserNameTakenException : Exception
    {

        public UserNameTakenException()
        {

        }

        public UserNameTakenException(string message) : base(message)
        {
                
        }
    }
}
