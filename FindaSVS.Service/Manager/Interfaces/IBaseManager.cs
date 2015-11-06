using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FindaSVS.Service.Manager.Interfaces
{
    public interface IBaseManager<T> : IDisposable
    {
        IQueryable<T> GetAll();
    }
}
