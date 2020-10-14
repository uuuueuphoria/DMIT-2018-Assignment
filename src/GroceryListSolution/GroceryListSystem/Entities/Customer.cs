namespace GroceryListSystem.Entities
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using System.Reflection.Emit;

    internal partial class Customer
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Customer()
        {
            Orders = new HashSet<Order>();
        }

        public int CustomerID { get; set; }

        [Required(ErrorMessage ="Customer last name is required")]
        [StringLength(35, ErrorMessage ="Last name is limited to 35 characters")]
        public string LastName { get; set; }

        [Required(ErrorMessage ="Customer first name is required")]
        [StringLength(25, ErrorMessage ="First name is limited to 25 characters")]
        public string FirstName { get; set; }

        [Required(ErrorMessage ="Address has to be entered")]
        [StringLength(30, ErrorMessage ="Address is limited to 30 characters")]
        public string Address { get; set; }

        [Required(ErrorMessage ="City is required")]
        [StringLength(30, ErrorMessage ="City is limited to 30 characters")]
        public string City { get; set; }

        [Required(ErrorMessage ="Province is required")]
        [StringLength(2, ErrorMessage ="Province is limited to 2 characters")]
        public string Province { get; set; }

        [Required(ErrorMessage ="Phone number is required")]
        [StringLength(12, ErrorMessage ="Phone number is limited to 12 digits")]
        public string Phone { get; set; }
        [NotMapped]
        public string FullName
        {
            get
            {
                return LastName + ", " + FirstName;
            }
        }
        [NotMapped]
        public string CityCustomer
        {
            get
            {
                return City + ": " + LastName + ", " + FirstName;
            }
        }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Order> Orders { get; set; }
    }
}
