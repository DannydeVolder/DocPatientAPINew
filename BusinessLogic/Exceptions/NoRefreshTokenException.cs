using System;
using System.Collections.Generic;
using System.Text;

namespace BusinessLogic.Exceptions
{
    class NoRefreshTokenException : Exception
    {
        public NoRefreshTokenException()
        {

        }

        public NoRefreshTokenException(string message) : base(message)
        {

        }
    }
}
