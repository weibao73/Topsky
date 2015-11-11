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
    internal class ScheduleConfiguration :  EntityTypeConfiguration<Schedule>
    {
        internal ScheduleConfiguration()
            : base()
        {
            this.ToTable("Schedules");
            this.HasKey(u => u.ScheduleId);
            this.Property(u => u.ScheduleId)
                .IsRequired()
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.Identity);
            this.HasRequired(s => s.Provider)
                .WithMany(p => p.Schedules)
                .HasForeignKey(s => s.ProviderId);
        }
    }
}
