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
    internal class ProviderServiceConfiguration :  EntityTypeConfiguration<ProviderService>
    {
        internal ProviderServiceConfiguration()
            : base()
        {
            this.ToTable("ProviderServices");
            this.HasKey(p => p.ProviderServiceId);
            this.Property(p => p.ProviderServiceId)
                .IsRequired()
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.Identity);
            this.HasRequired(p => p.Service)
                .WithMany(s => s.ProviderServices)
                .HasForeignKey(p => p.ServiceId);
            this.HasRequired(p => p.Provider)
                .WithMany(p => p.ProviderServices)
                .HasForeignKey(p => p.ProviderId);
        }
    }
}
