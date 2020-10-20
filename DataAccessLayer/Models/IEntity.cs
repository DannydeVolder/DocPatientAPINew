using System;
using System.Collections.Generic;
using System.Text;

namespace DataAccessLayer.Models
{
    public interface IEntity<T>
    {
        public T Id { get; set; }

    }
}
