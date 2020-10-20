using DataAccessLayer.Contexts;
using DataAccessLayer.Models;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace DataAccessLayer.Repositories
{
    public class BaseRepository<T, TPrimaryKey> : IBaseRepository<T, TPrimaryKey> where T : class, IEntity<TPrimaryKey>
    {
        protected readonly AppDbContext _context;
        private DbSet<T> _entities;
        public BaseRepository(AppDbContext context)
        {
            _context = context;
            _entities = context.Set<T>();
        }

        public void Delete(TPrimaryKey id)
        {
            if (id == null) throw new ArgumentNullException("entity");

            T entity = _entities.SingleOrDefault(s => EqualityComparer<TPrimaryKey>.Default.Equals(s.Id, id));
            _entities.Remove(entity);
            _context.SaveChanges();
        }

        public async Task<IEnumerable<T>> GetAll()
        {
            return await _entities.ToListAsync();
        }

        public async Task<T> GetById(TPrimaryKey id)
        {
            return await _entities.SingleOrDefaultAsync(s => EqualityComparer<TPrimaryKey>.Default.Equals(s.Id, id));
        }

        public void Insert(T entity)
        {
            if (entity == null) throw new ArgumentNullException("entity");

            _entities.Add(entity);
            _context.SaveChanges();
        }

        public void Update(T entity)
        {
            if (entity == null) throw new ArgumentNullException("entity");
            _entities.Update(entity);
            _context.SaveChanges();
        }
    }
}
