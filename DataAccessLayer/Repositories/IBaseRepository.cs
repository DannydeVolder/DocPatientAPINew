using DataAccessLayer.Models;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace DataAccessLayer.Repositories
{
    public interface IBaseRepository<T, TPrimaryKey> where T: IEntity<TPrimaryKey>
    {
        Task<IEnumerable<T>> GetAll();
        Task<T> GetById(TPrimaryKey id);
        Task<int> Insert(T entity);
        void Update(T entity);
        bool Delete(TPrimaryKey id);
    }
}
