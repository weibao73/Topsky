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
    internal class OrderConfiguration :  EntityTypeConfiguration<Order>
    {
        internal OrderConfiguration()
            : base()
        {
            this.ToTable("Orders");
            this.HasKey(u => u.OrderId);
            this.Property(u => u.OrderId)
                .IsRequired()
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.Identity);
            this.HasRequired(o => o.Quote)
                .WithOptional(q => q.Order);
        }
    }
}
