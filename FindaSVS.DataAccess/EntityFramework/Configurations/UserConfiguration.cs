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
    internal class UserConfiguration : EntityTypeConfiguration<User>
    {
        internal UserConfiguration()
            : base()
        {
            this.ToTable("Users");
            this.HasKey(u => u.UserId);
            this.Property(u => u.UserId)
                .IsRequired()
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.Identity);
        }
    }
}
