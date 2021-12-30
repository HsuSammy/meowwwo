using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Cart 的摘要描述
/// </summary>
public class Cart
{
    public Cart(int id, string name, int price, string imageFile, int count)
    {
        Id = id;
        Name = name;
        Price = price;
        ImageFile = imageFile;
        Count = count;
    }

    public int Id { get; set; }
    public string Name { get; set; }
    public int Price { get; set; }
    public string ImageFile { get; set; }
    public int Count { get; set; }
    public int Total
    {
        get
        {
            return Price * Count;
        }
    }

    public static List<Discount> GetDiscount()
    {
        MeowwwoDBEntities1 db = new MeowwwoDBEntities1();
        return db.Discounts.ToList();
    }

} 