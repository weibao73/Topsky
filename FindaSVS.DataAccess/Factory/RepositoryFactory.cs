using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using FindaSVS.DataAccess.Interfaces;

namespace FindaSVS.DataAccess.Factory
{
    public class RepositoryFactory
    {
        public static TRepository CreateRepositoryInstance<T, TRepository>()
            where TRepository : IBaseRepository<T>, new()
        {
            return new TRepository();
        }

        public static TRepository CreateRepositoryInstance<T, TRepository>(params object[] args)
            where TRepository : IBaseRepository<T>
        {
            return (TRepository)Activator.CreateInstance(typeof(TRepository), args);
        }
    }
}
