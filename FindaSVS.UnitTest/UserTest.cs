using System;
using System.Linq;
using System.Collections.Generic;
using Microsoft.VisualStudio.TestTools.UnitTesting;

using FindaSVS.Data.Entities;
using FindaSVS.DataAccess.Interfaces;
using FindaSVS.DataAccess.EntityFramework;

namespace FindaSVS.UnitTest
{
    [TestClass]
    public class UserTest
    {
        [TestMethod]
        public void TestMethod1()
        {
            IBaseRepository<User> repository = new BaseRepository<User>();
            IEnumerable<User> users = repository
                .For("FirstName", "Tom1")
                .Execute();

            Assert.AreEqual(users.Count(), 1);
        }
    }
}
