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
    internal class JobConfiguration :  EntityTypeConfiguration<Job>
    {
        internal JobConfiguration()
            : base()
        {
            this.ToTable("Jobs");
            this.HasKey(u => u.JobId);
            this.Property(u => u.JobId)
                .IsRequired()
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.Identity);
            this.HasRequired(j => j.Order)
                .WithMany(o => o.Jobs)
                .HasForeignKey(j => j.OrderId);
            this.HasRequired(j => j.Schedule)
                .WithRequiredPrincipal();
        }
    }
}
