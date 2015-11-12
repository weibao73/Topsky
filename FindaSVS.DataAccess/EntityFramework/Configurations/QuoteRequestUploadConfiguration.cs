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
    internal class QuoteRequestUploadConfiguration : EntityTypeConfiguration<QuoteRequestUpload>
    {
        internal QuoteRequestUploadConfiguration()
            : base()
        {
            this.ToTable("QuoteRequestUploads");
            this.HasKey(c => c.QuoteRequestUploadId);
            this.Property(c => c.QuoteRequestUploadId)
                .IsRequired()
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.Identity);
            this.HasRequired(c => c.QuoteRequest)
                .WithMany(s => s.QuoteRequestUploads)
                .HasForeignKey(c => c.QuoteRequestId);
        }
    }
}
