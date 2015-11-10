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
    internal class QuoteUploadConfiguration : EntityTypeConfiguration<QuoteUpload>
    {
        internal QuoteUploadConfiguration()
            : base()
        {
            this.ToTable("QuoteUploads");
            this.HasKey(c => c.QuoteUploadId);
            this.Property(c => c.QuoteUploadId)
                .IsRequired()
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.Identity);
            this.HasRequired(c => c.Quote)
                .WithMany(s => s.QuoteUploads)
                .HasForeignKey(c => c.QuoteId);
        }
    }
}
