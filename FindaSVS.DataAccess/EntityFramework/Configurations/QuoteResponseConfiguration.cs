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
    internal class QuoteResponseConfiguration : EntityTypeConfiguration<QuoteResponse>
    {
        internal QuoteResponseConfiguration()
            : base()
        {
            this.ToTable("QuoteResponses");
            this.HasKey(c => c.QuoteResponseId);
            this.Property(c => c.QuoteResponseId)
                .IsRequired()
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.Identity);
            this.HasRequired(c => c.Quote)
                .WithMany(s => s.QuoteResponses)
                .HasForeignKey(c => c.QuoteId);
            this.HasRequired(c => c.Provider)
                .WithMany(s => s.QuoteResponses)
                .HasForeignKey(c => c.ProviderId);
        }
    }
}
