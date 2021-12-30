using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for CartUtility
/// </summary>
public class CheckOutUtility
{
    public static void Add(Payment m)
    {
        MeowwwoDBEntities1 db = new MeowwwoDBEntities1();
        db.Payments.Add(m);
        db.SaveChanges();
    }

    public static Payment GetPayment(int orderID)
    {
        MeowwwoDBEntities1 db = new MeowwwoDBEntities1();
        return db.Payments.SingleOrDefault(o => o.OrderID == orderID);
    }
    public static void AddList(OrderList m)
    {
        MeowwwoDBEntities1 db = new MeowwwoDBEntities1();
        db.OrderLists.Add(m);
        db.SaveChanges();
    }

    public static List<OrderList> GetOrderList(int MemberID)
    {
        MeowwwoDBEntities1 db = new MeowwwoDBEntities1();
        return db.OrderLists.Where(o => o.MemberID == MemberID).ToList();
    }

   
    public static List<OrderDetail> GetDetail(int MemberID)
    {
        MeowwwoDBEntities1 db = new MeowwwoDBEntities1();
        return db.OrderDetails.Where(o => o.MemberID == MemberID).ToList();
    }

   
    public static void AddDetail(OrderDetail o)
    {
        MeowwwoDBEntities1 db = new MeowwwoDBEntities1();
        db.OrderDetails.Add(o);
        db.SaveChanges();
    }
    //public static void AddToCart(int id)
    //{
    //    Product product = ProductUtility.GetProducts(id);
    //    Cart cart = new Cart(product.ProductID, product.ProductName, product.Price, product.ImageFile, product.Count);
    //    List<Cart> cartList = null;
    //    if (Session["ShoppingCart"] != null)
    //    {
    //        cartList = Session["ShoppingCart"] as List<Cart>;

    //        foreach (Cart item in cartList)
    //        {
    //            if (id == item.Id)
    //            {
    //                item.Count += 1;
    //                Session["ShoppingCart"] = cartList;
    //                break;
    //            }
    //            else
    //            {
    //                cartList.Add(cart);
    //                Session["ShoppingCart"] = cartList;
    //                break;
    //            }
    //        }
    //    }
    //    else
    //    {
    //        cartList = new List<Cart>();
    //        cartList.Add(cart);
    //        Session["ShoppingCart"] = cartList;
    //    }

    //}
}