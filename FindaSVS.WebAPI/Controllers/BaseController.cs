using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.OData;

using FindaSVS.Service.Manager.Interfaces;
using FindaSVS.Service.Manager;

namespace FindaSVS.WebAPI.Controllers
{
    public class BaseController<T> : ODataController where T : class
    {
        protected IBaseManager<T> manager;

        public BaseController(IBaseManager<T> manager)
        {
            this.manager = manager;
        }
    }
}
