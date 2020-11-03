using System;
using System.Collections.Generic;
using System.Text;

namespace BusinessLogic.DTO
{
    public class ResultDTO
    {
        public Status Status { get; set; }
        public string Message { get; set; }
        public object Data { get; set; }
    }

    public enum Status
    {
        Success = 1,
        Error = 2
    }
}
