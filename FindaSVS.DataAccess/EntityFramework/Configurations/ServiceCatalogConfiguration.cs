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
    internal class ServiceCatalogConfiguration : EntityTypeConfiguration<ServiceCatalog>
    {
        internal ServiceCatalogConfiguration()
            : base()
        {
            this.ToTable("ServiceCatalogs");
            this.HasKey(c => c.ServiceCatalogId);
            this.Property(c => c.ServiceCatalogId)
                .IsRequired()
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.Identity);
            this.HasOptional(c => c.ParentServiceCatalog)
                .WithMany(c => c.ChildServiceCatalogs)
                .HasForeignKey(c => c.ParentId);
       }
    }
}
