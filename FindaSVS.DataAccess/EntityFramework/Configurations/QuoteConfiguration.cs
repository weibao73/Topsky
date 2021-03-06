﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Entity.ModelConfiguration;
using System.ComponentModel.DataAnnotations.Schema;

using FindaSVS.Data.Entities;

namespace FindaSVS.DataAccess.EntityFramework.Configurations
{
    internal class QuoteConfiguration : EntityTypeConfiguration<Quote>
    {
        internal QuoteConfiguration()
            : base()
        {
            this.ToTable("Quotes");
            this.HasKey(c => c.QuoteId);
            this.Property(c => c.QuoteId)
                .IsRequired()
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.Identity);
            this.HasRequired(c => c.QuoteRequest)
                .WithMany(s => s.Quotes)
                .HasForeignKey(c => c.QuoteRequestId);
            this.HasRequired(c => c.Provider)
                .WithMany(s => s.Quotes)
                .HasForeignKey(c => c.ProviderId);
        }
    }
}
