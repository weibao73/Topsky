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
    
    public partial class QuoteRespons
    {
        public QuoteRespons()
        {
            this.Orders = new HashSet<Order>();
        }
    
        public int QuoteResponseId { get; set; }
        public int QuoteId { get; set; }
        public int ProviderId { get; set; }
        public bool IsFixedRate { get; set; }
        public bool IsHourlyRate { get; set; }
        public Nullable<decimal> FixedRate { get; set; }
        public Nullable<decimal> HourlyRate { get; set; }
        public Nullable<decimal> EstimatedRate { get; set; }
        public Nullable<decimal> EstimatedHours { get; set; }
        public System.DateTime RequestDateTime { get; set; }
        public Nullable<System.DateTime> ResponseDateTime { get; set; }
        public string Decription { get; set; }
        public byte Status { get; set; }
    
        public virtual ICollection<Order> Orders { get; set; }
        public virtual Provider Provider { get; set; }
        public virtual Quote Quote { get; set; }
    }
}