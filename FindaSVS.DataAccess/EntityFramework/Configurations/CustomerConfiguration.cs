using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Entity.ModelConfiguration;
using System.ComponentModel.DataAnnotations.Schema;

using FindaSVS.Data.Entities;

namespace FindaSVS.DataAccess.EntityFramework.Configurations
{
    internal class CustomerConfiguration :  EntityTypeConfiguration<Customer>
    {
        internal CustomerConfiguration()
            : base()
        {
            this.ToTable("Customers");
            this.HasKey(u => u.CustomerId);
            this.Property(u => u.CustomerId)
                .IsRequired()
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.Identity);
            this.HasRequired(c => c.User)
                .WithRequiredPrincipal();
        }
    }
}
