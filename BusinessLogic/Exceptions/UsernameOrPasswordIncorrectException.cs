using System;
using System.Collections.Generic;
using System.Text;

namespace BusinessLogic.Exceptions
{
    public class UsernameOrPasswordIncorrectException : Exception
    {
        public UsernameOrPasswordIncorrectException()
        {

        }

        public UsernameOrPasswordIncorrectException(string message) : base(message)
        {

        }
    }
}
