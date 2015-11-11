using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Entity;
using System.Data.Entity.ModelConfiguration.Conventions;

using FindaSVS.Data.Entities;
using FindaSVS.DataAccess.EntityFramework.Configurations;

namespace FindaSVS.DataAccess.EntityFramework
{
    public class FindaSVSDbContext : DbContext
    {
        public FindaSVSDbContext()
            : base("FindaSVSDbContext")
        {
            Database.SetInitializer<FindaSVSDbContext>(null);
        }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Conventions.Remove<PluralizingTableNameConvention>();

            //configuration
            modelBuilder.Configurations.Add(new UserConfiguration());
            modelBuilder.Configurations.Add(new CustomerConfiguration());
            modelBuilder.Configurations.Add(new ProviderConfiguration());
            modelBuilder.Configurations.Add(new JobConfiguration());
            modelBuilder.Configurations.Add(new MessageConfiguration());
            modelBuilder.Configurations.Add(new OrderConfiguration());
            modelBuilder.Configurations.Add(new ProviderServiceConfiguration());
            modelBuilder.Configurations.Add(new QuoteConfiguration());
            modelBuilder.Configurations.Add(new QuoteRequestConfiguration());
            modelBuilder.Configurations.Add(new QuoteRequestMessageConfiguration());
            modelBuilder.Configurations.Add(new QuoteRequestUploadConfiguration());
            modelBuilder.Configurations.Add(new ScheduleConfiguration());
            modelBuilder.Configurations.Add(new ServiceCatalogConfiguration());
            modelBuilder.Configurations.Add(new ServiceConfiguration());
        }
    }
}
