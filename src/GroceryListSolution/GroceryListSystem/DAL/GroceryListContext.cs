namespace GroceryListSystem.DAL
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;
    #region Addition namespaces
    using GroceryListSystem.Entities;
    #endregion  

    internal partial class GroceryListContext : DbContext
    {
        public GroceryListContext()
            : base("name=GroceryListDB")
        {
        }

        public virtual DbSet<Category> Categories { get; set; }
        public virtual DbSet<Customer> Customers { get; set; }
        public virtual DbSet<Delivery> Deliveries { get; set; }
        public virtual DbSet<OrderList> OrderLists { get; set; }
        public virtual DbSet<Order> Orders { get; set; }
        public virtual DbSet<Picker> Pickers { get; set; }
        public virtual DbSet<Product> Products { get; set; }
        public virtual DbSet<Store> Stores { get; set; }

        
    }
}
