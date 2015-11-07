using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.OData;

using FindaSVS.Data.Entities;
using FindaSVS.Service.Manager.Interfaces;
using FindaSVS.Service.Manager;

namespace FindaSVS.WebAPI.Controllers
{
    public class UsersController : BaseController<User>
    {
        public UsersController(IBaseManager<User> manager)
            : base(manager)
        {
        }

        [EnableQuery]
        public IQueryable<User> Get()
        {
            return this.manager.GetAll();
        }
    }
}
