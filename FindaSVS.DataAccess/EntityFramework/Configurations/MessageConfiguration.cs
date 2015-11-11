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
    internal class MessageConfiguration : EntityTypeConfiguration<Message>
    {
        internal MessageConfiguration()
            : base()
        {
            this.ToTable("Messages");
            this.HasKey(c => c.MessageId);
            this.Property(c => c.MessageId)
                .IsRequired()
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.Identity);
            this.HasOptional(c => c.ParentMessage)
                .WithMany(c => c.ReplyMessages)
                .HasForeignKey(c => c.ParentId);
            this.HasRequired(c => c.Customer)
                .WithMany(c => c.Messages)
                .HasForeignKey(c => c.CustomerId);
            this.HasRequired(c => c.Provider)
                .WithMany(c => c.Messages)
                .HasForeignKey(c => c.ProviderId);
       }
    }
}
