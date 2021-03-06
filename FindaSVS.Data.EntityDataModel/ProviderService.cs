//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace FindaSVS.Data.EntityDataModel
{
    using System;
    using System.Collections.Generic;
    
    public partial class ProviderService
    {
        public int ProviderServiceId { get; set; }
        public int ServiceId { get; set; }
        public int ProviderId { get; set; }
        public bool IsFixedRate { get; set; }
        public bool IsHourlyRate { get; set; }
        public bool IsPartsNeeded { get; set; }
        public bool IsHomeVisitAllowed { get; set; }
        public Nullable<decimal> FixedRate { get; set; }
        public Nullable<decimal> HourlyRate { get; set; }
        public Nullable<decimal> HomeVisitRate { get; set; }
        public string Description { get; set; }
    
        public virtual Provider Provider { get; set; }
        public virtual Service Service { get; set; }
    }
}
