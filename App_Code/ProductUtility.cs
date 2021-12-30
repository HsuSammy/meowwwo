using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text;
using System.Windows;

/// <summary>
/// Summary description for ProductUtility
/// </summary>
public class ProductUtility
{

    //public static void Add(WishList w)
    //{
    //    MeowwwoDBEntities1 db = new MeowwwoDBEntities1();
    //    db.WishLists.Add(w);
    //    db.SaveChanges();
    //}
    public static List<Product> GetProducts()
    {
        MeowwwoDBEntities1 db = new MeowwwoDBEntities1();
        return db.Products.ToList();
    }
    public static Product GetProducts(int id)
    {
        MeowwwoDBEntities1 db = new MeowwwoDBEntities1();
        return db.Products.SingleOrDefault(p => p.ProductID == id);
    }

   

    public static Product GetImg(string img)
    {
        MeowwwoDBEntities1 db = new MeowwwoDBEntities1();
        return db.Products.SingleOrDefault(p => p.ImageFile == img);
    }
    public static List<Product> GetCategory1()
    {
        MeowwwoDBEntities1 db = new MeowwwoDBEntities1();
        var _productList = db.Products.Where(x => x.ProductCategory == "1").ToList();
        return _productList;
    }
    public static List<Product> GetCategory2()
    {
        MeowwwoDBEntities1 db = new MeowwwoDBEntities1();
        var _productList = db.Products.Where(x => x.ProductCategory == "2").ToList();
        return _productList;
   
    }
    public static List<Product> GetCategory3()
    {
        MeowwwoDBEntities1 db = new MeowwwoDBEntities1();
        var _productList = db.Products.Where(x => x.ProductCategory == "3").ToList();
        return _productList;
    }

    public static List<Product> GetNewArrived()
    {
        MeowwwoDBEntities1 db = new MeowwwoDBEntities1();
        var lastFourProducts = db.Products.OrderByDescending(p => p.ProductID).Take(4).ToList();
        return lastFourProducts;
      
    }
}

