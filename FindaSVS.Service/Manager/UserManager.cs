using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using FindaSVS.DataAccess.Interfaces;
using FindaSVS.DataAccess.EntityFramework;
using FindaSVS.DataAccess.Factory;
using FindaSVS.Service.Manager.Interfaces;
using FindaSVS.Data.Entities;

namespace FindaSVS.Service.Manager
{
    public class UserManager : BaseManager<User>, IUserManager
    {
        public override IQueryable<User> GetAll()
        {
            return this.repository.GetAll().Where(u => u.FirstName == "Tom1");
        }
    }
}
