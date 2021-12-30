using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for MemberCenter
/// </summary>
public class MemberCenterUtility
{
    public MemberCenterUtility(int orderId, int productID, int OrderCount, string imageFile, int price)
    {
        OrderId = orderId;
        ProductID = productID;
        Count = OrderCount;
        ImageFile = imageFile;
        Price = price;
        
    }

    public int OrderId { get; set; }
    public int ProductID { get; set; }
    public int Count { get; set; }
    public string ImageFile { get; set; }
    public int Price { get; set; }
    public int Total
    {
        get
        {
            return Price * Count;
        }
    }

  


    public static List<OrderList> GetOrderListByOrderID(int OrderID)
    {
        MeowwwoDBEntities1 db = new MeowwwoDBEntities1();
        return db.OrderLists.Where(o => o.OrderID == OrderID).ToList();
    }
    public static MemberShipping GetShippingByName(string shipperName)
    {
        MeowwwoDBEntities1 db = new MeowwwoDBEntities1();

        return db.MemberShippings.SingleOrDefault(o => o.Name == shipperName);
    }
    public static List<OrderDetail> GetDetailWithProduct(int orderId)
    {
        MeowwwoDBEntities1 db = new MeowwwoDBEntities1();
        return db.OrderDetails.
        Where(o => o.OrderID == orderId).
        Include(o => o.Product).ToList();
    }
}