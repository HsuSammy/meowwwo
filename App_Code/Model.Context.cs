//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;

public partial class MeowwwoDBEntities1 : DbContext
{
    public MeowwwoDBEntities1()
        : base("name=MeowwwoDBEntities1")
    {
    }

    protected override void OnModelCreating(DbModelBuilder modelBuilder)
    {
        throw new UnintentionalCodeFirstException();
    }

    public virtual DbSet<MemberShipping> MemberShippings { get; set; }
    public virtual DbSet<Member> Members { get; set; }
    public virtual DbSet<OrderDetail> OrderDetails { get; set; }
    public virtual DbSet<Admin> Admins { get; set; }
    public virtual DbSet<Discount> Discounts { get; set; }
    public virtual DbSet<OrderList> OrderLists { get; set; }
    public virtual DbSet<Product> Products { get; set; }
    public virtual DbSet<MessageBox> MessageBoxes { get; set; }
    public virtual DbSet<Payment> Payments { get; set; }
}
