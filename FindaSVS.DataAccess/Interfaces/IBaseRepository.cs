using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FindaSVS.DataAccess.Interfaces
{
    public interface IBaseRepository<T> : IDisposable
    {
        IQueryable<T> GetAll();
        T GetByID(int id);
        T GetByID(string id);
        T Insert(T entity);
        void Update(T entity);
        void Delete(int id);
        void Delete(string id);
        void Save();

        IBaseRepository<T> WhereEquals(string propertyName, string value);
        IBaseRepository<T> WhereEquals(string propertyName, DateTime value);
        IBaseRepository<T> WhereGreaterThan(string propertyName, int value);
        IBaseRepository<T> For(string propertyName, string value);
        IBaseRepository<T> For(IList<KeyValuePair<string, string>> forCriteria);
        IBaseRepository<T> Top(int count);
        IBaseRepository<T> OrderBy(string propertyName, bool descending = false);
        IEnumerable<T> Execute();
    }
}
