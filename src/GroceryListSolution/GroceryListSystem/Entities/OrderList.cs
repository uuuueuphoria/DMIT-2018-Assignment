namespace GroceryListSystem.Entities
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("OrderList")]
    internal partial class OrderList
    {
        public int OrderListID { get; set; }

        public int OrderID { get; set; }

        public int ProductID { get; set; }

        public double QtyOrdered { get; set; }

        public double QtyPicked { get; set; }

        [Column(TypeName = "money")]
        public decimal Price { get; set; }

        [Column(TypeName = "money")]
        public decimal Discount { get; set; }

        [StringLength(100, ErrorMessage ="Customer comment is limited to 100 characters")]
        public string CustomerComment { get; set; }

        [StringLength(100, ErrorMessage ="Pick issue is limited to 100 characters")]
        public string PickIssue { get; set; }

        public virtual Order Order { get; set; }

        public virtual Product Product { get; set; }
    }
}
