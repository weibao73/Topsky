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
    internal class ProviderConfiguration :  EntityTypeConfiguration<Provider>
    {
        internal ProviderConfiguration()
            : base()
        {
            this.ToTable("Providers");
            this.HasKey(p => p.ProviderId);
            this.Property(p => p.ProviderId)
                .IsRequired()
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.Identity);
            this.HasRequired(p => p.User)
                .WithRequiredPrincipal();
        }
    }
}
