using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using FindaSVS.DataAccess.Interfaces;
using FindaSVS.DataAccess.EntityFramework;
using FindaSVS.DataAccess.Factory;
using FindaSVS.Service.Manager.Interfaces;

namespace FindaSVS.Service.Manager
{
    public class BaseManager<T> : IBaseManager<T> where T : class
    {
        protected IBaseRepository<T> repository;

        public BaseManager()
        {
            this.repository = RepositoryFactory.CreateRepositoryInstance<T, BaseRepository<T>>();
        }

        public BaseManager(IBaseRepository<T> repository)
        {
            this.repository = repository;
        }

        public IQueryable<T> GetAll()
        {
            return this.repository.GetAll();
        }

        public void Dispose()
        {
            this.repository.Dispose();
        }
    }
}
