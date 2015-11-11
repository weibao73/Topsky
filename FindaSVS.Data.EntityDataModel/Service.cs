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
    
    public partial class Service
    {
        public Service()
        {
            this.ProviderServices = new HashSet<ProviderService>();
            this.QuoteRequests = new HashSet<QuoteRequest>();
        }
    
        public int ServiceId { get; set; }
        public Nullable<int> ServiceCatalogId { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
    
        public virtual ServiceCatalog ServiceCatalog { get; set; }
        public virtual ICollection<ProviderService> ProviderServices { get; set; }
        public virtual ICollection<QuoteRequest> QuoteRequests { get; set; }
    }
}
