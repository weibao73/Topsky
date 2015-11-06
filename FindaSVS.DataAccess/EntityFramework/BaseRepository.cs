using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.Entity;

using FindaSVS.DataAccess.Interfaces;
using FindaSVS.DataAccess.EntityFramework;

namespace FindaSVS.DataAccess.EntityFramework
{
    public class BaseRepository<T> : IBaseRepository<T> where T : class
    {
        protected readonly IDbSet<T> dbSet;
        protected FindaSVSDbContext dbContext;
        protected IQueryable<T> dbResultSet;

        public BaseRepository()
        {
            this.dbContext = new FindaSVSDbContext();
            this.dbSet = dbContext.Set<T>();
            this.dbResultSet = dbSet;
        }

        public BaseRepository(FindaSVSDbContext dbContext)
        {
            this.dbContext = dbContext;
            this.dbSet = dbContext.Set<T>();
            this.dbResultSet = dbSet;
        }

        public T Insert(T entity)
        {
            return dbSet.Add(entity);
        }

        public void Update(T entity)
        {
            dbSet.Attach(entity);
            dbContext.Entry(entity).State = EntityState.Modified;
        }

        public void Delete(T entity)
        {
            dbSet.Remove(entity);
        }

        public void Delete(int id)
        {
            T entity = this.dbSet.Find(id);
            this.dbSet.Remove(entity);
        }

        public void Delete(string id)
        {
            T entity = dbSet.Find(id);
            dbSet.Remove(entity);
        }

        public void Save()
        {
            dbContext.SaveChanges();
        }

        public IQueryable<T> GetAll()
        {
            return dbSet;
        }

        public T GetByID(int id)
        {
            return dbSet.Find(id);
        }

        public T GetByID(string id)
        {
            return dbSet.Find(id);
        }

        public IBaseRepository<T> WhereEquals(string propertyName, string value)
        {
            dbResultSet = dbResultSet.Where(string.Format("{0}=@0", propertyName), value);
            return this;
        }

        public IBaseRepository<T> WhereEquals(string propertyName, DateTime value)
        {
            dbResultSet = dbResultSet.Where(string.Format("{0}=@0", propertyName), value);
            return this;
        }

        public IBaseRepository<T> WhereGreaterThan(string propertyName, int value)
        {
            dbResultSet = dbResultSet.Where(string.Format("{0}>@0", propertyName), value);
            return this;
        }

        public IBaseRepository<T> For(string type, string value)
        {
            return WhereEquals(type, value);
        }

        public IBaseRepository<T> For(IList<KeyValuePair<string, string>> forCriteria)
        {
            foreach (var pair in forCriteria)
            {
                WhereEquals(pair.Key, pair.Value);
            }
            return this;
        }

        public IBaseRepository<T> Top(int count)
        {
            dbResultSet = (IQueryable<T>)dbResultSet.Take(count);
            return this;
        }

        public IBaseRepository<T> OrderBy(string propertyName, bool @descending = false)
        {
            dbResultSet = dbResultSet.OrderBy(string.Format("{0}{1}", propertyName, descending ? " DESC" : string.Empty));
            return this;
        }

        public IEnumerable<T> Execute()
        {
            var result = dbResultSet.AsEnumerable();
            //Reset
            dbResultSet = dbSet;

            return result;
        }

        public void Dispose()
        {
            dbContext.Dispose();
        }

    }
}
