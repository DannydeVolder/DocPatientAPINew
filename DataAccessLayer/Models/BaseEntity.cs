using System;
using System.Collections.Generic;
using System.Text;

namespace DataAccessLayer.Models
{
    public class BaseEntity : IEntity
    {
        public Guid Id { get; set; }
}
}
