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
    internal class ServiceConfiguration : EntityTypeConfiguration<Service>
    {
        internal ServiceConfiguration()
            : base()
        {
            this.ToTable("Services");
            this.HasKey(c => c.ServiceId);
            this.Property(c => c.ServiceId)
                .IsRequired()
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.Identity);
            this.HasRequired(c => c.ServiceCatalog)
                .WithMany(s => s.Services)
                .HasForeignKey(c => c.ServiceCatalogId);
        }
    }
}
