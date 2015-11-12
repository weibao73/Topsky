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
    internal class QuoteRequestMessageConfiguration : EntityTypeConfiguration<QuoteRequestMessage>
    {
        internal QuoteRequestMessageConfiguration()
            : base()
        {
            this.ToTable("QuoteRequestMessages");
            this.HasKey(c => c.QuoteRequestMessageId);
            this.Property(c => c.QuoteRequestMessageId)
                .IsRequired()
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.Identity);
            this.HasRequired(c => c.QuoteRequest)
                .WithMany(q => q.QuoteRequestMessages)
                .HasForeignKey(c => c.QuoteQuestId);
            this.HasRequired(c => c.Customer)
                .WithMany(s => s.QuoteRequestMessages)
                .HasForeignKey(c => c.CustomerId);
            this.HasRequired(c => c.Provider)
                .WithMany(s => s.QuoteRequestMessages)
                .HasForeignKey(c => c.ProviderId);
        }
    }
}
