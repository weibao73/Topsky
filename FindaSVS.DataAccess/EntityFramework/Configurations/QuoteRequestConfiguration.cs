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
    internal class QuoteRequestConfiguration : EntityTypeConfiguration<QuoteRequest>
    {
        internal QuoteRequestConfiguration()
            : base()
        {
            this.ToTable("QuoteRequests");
            this.HasKey(c => c.QuoteQuestId);
            this.Property(c => c.QuoteQuestId)
                .IsRequired()
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.Identity);
            this.HasRequired(c => c.Customer)
                .WithMany(s => s.QuoteRequests)
                .HasForeignKey(c => c.CustomerId);
            this.HasRequired(c => c.Service)
                .WithMany(s => s.QuoteRequests)
                .HasForeignKey(c => c.ServiceId);
        }
    }
}
