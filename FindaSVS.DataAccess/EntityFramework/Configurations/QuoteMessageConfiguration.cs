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
    internal class QuoteMessageConfiguration : EntityTypeConfiguration<QuoteMessage>
    {
        internal QuoteMessageConfiguration()
            : base()
        {
            this.ToTable("QuoteMessages");
            this.HasKey(c => c.QuoteMessageId);
            this.Property(c => c.QuoteMessageId)
                .IsRequired()
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.Identity);
            this.HasRequired(c => c.Customer)
                .WithMany(s => s.QuoteMessages)
                .HasForeignKey(c => c.CustomerId);
            this.HasRequired(c => c.Provider)
                .WithMany(s => s.QuoteMessages)
                .HasForeignKey(c => c.ProviderId);
        }
    }
}
