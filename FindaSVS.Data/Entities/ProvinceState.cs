//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace FindaSVS.Data.Entities
{
    using System;
    using System.Collections.Generic;
    
    public partial class ProvinceState
    {
        public ProvinceState()
        {
            this.Cities = new HashSet<City>();
        }
    
        public int ProvinceStateId { get; set; }
        public int CountryId { get; set; }
        public string Code { get; set; }
        public string Name { get; set; }
    
        public virtual ICollection<City> Cities { get; set; }
        public virtual Country Country { get; set; }
    }
}
