using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;



/// <summary>
/// ModelPartial 的摘要描述
/// </summary>
public partial class Payment
{
    public Payment(int id, int orderID, string cardNumber)
    {
        this.Id = id;
        this.OrderID = orderID;
        this.cardNumber = cardNumber;
    }
    public Payment() { }
}
public partial class MessageBox
{
    public MessageBox(int id, int? memberID, string title, string message, string file, string QDate)
    {
        this.Id = id;
        this.MemberID = memberID;
        this.Title = title;
        this.Message = message;
        this.File = file;
        this.QDate = QDate;
        
    }
    public MessageBox(int id, int? memberID, string title, string message, string file,string QDate,string answer)
    {
        this.Id = id;
        this.MemberID = memberID;
        this.Title = title;
        this.Message = message;
        this.File = file;
        this.QDate = QDate;
        this.Answer = answer;
    }
    public MessageBox(int id, int? memberID, string title, string message, string QDate)
    {
        this.Id = id;
        this.MemberID = memberID;
        this.Title = title;
        this.Message = message;
        this.QDate = QDate;
    }
    public MessageBox() { }
}
public partial class Discount
{
    public Discount(int id, string name, string code, int price)
    {
        this.Id = id;
        this.Name = name;
        this.Code = code;
        this.Price = price;
    }

    public Discount() { }
}

public partial class Member
    {
   
    public Member(int memberID, string userName, string phone, string address, int? eDM, string gender, DateTime birthDate)
        {
            MemberID = memberID;
            UserName = userName;
            Phone = phone;
            Address = address;
            EDM = eDM;
            Gender = gender;
            BirthDate = birthDate;
        }
    public Member(int memberID,string password)
    {
        MemberID = memberID;
        Password = password;
    }
    public Member(int memberID, string userName, string password, string email, string phone, string address, DateTime joinDate, int? eDM, string gender, DateTime birthDate)
    {
        this.MemberID = memberID;
        this.UserName = userName;
        this.Password = password;
        this.Email = email;
        this.Phone = phone;
        this.Address = address;
        this.JoinDate = joinDate;
        this.EDM = eDM;
        this.Gender = gender;
        BirthDate = birthDate;
      
    }
}
public partial class Product
{
    public Product(int productID, string productName, string productCategory, int price, int count, string productDetail, string color, string tags, string imageFile)
    {
        ProductID = productID;
        ProductName = productName;
        ProductCategory = productCategory;
        Price = price;
        Count = count;
        ProductDetail = productDetail;
        Color = color;
        Tags = tags;
        ImageFile = imageFile;
    }
  


}
public partial class MemberShipping
{
   
        public MemberShipping(int memberID, string name, string phone, string address, int iD, string email)
        {
            MemberID = memberID;
            Name = name;
            Phone = phone;
            Address = address;
            ID = iD;
            Email = email;
       
        }

      
    public MemberShipping() { }
   
}

public partial class MemberShipping
{
    public MemberShipping(  int iD, string name, string phone,string email,string address)
    {
        ID = iD;
        Name = name;
        Phone = phone;
        Email = email;
        Address = address;
    }
}

public partial class OrderList
{
    

    public OrderList(int memberID, int orderID, string orderDate, string shipName, string email, string phone, string address, string state, string discountName, int? discountPrice)
    {
        this.MemberID = memberID;
        this.OrderID = orderID;
        this.OrderDate = orderDate;
        this.ShipName = shipName;
        this.Email = email;
        this.Phone = phone;
        this.Address = address;
        this.State = state;
        this.DiscountName = discountName;
        this.DiscountPrice = discountPrice;
    }

}
public partial class OrderList
{
    //public OrderList(int memberID, int orderID, string orderDate, string shipName, string phone, string address, string email, string state, Member member)
    //{
    //    this.MemberID = memberID;
    //    this.OrderID = orderID;
    //    this.OrderDate = orderDate;
    //    this.ShipName = shipName;
    //    this.Phone = phone;
    //    this.Address = address;
    //    this.Email = email;
    //    this.Member = member;
    //}
    public OrderList(int memberID, int orderID, string orderDate, string shipName, string phone, string address, string email,string state)
    {
        this.MemberID = memberID;//會員
        this.OrderID = orderID;//購買ID
        this.OrderDate = orderDate;//購買日
        this.ShipName = shipName;//收件人
        this.Phone = phone;
        this.Address = address;
        this.Email = email;
        this.State = state;
    }

}

public partial class OrderDetail
{
    public OrderDetail(int iD, int memberID, int productID, int orderID, int count, int payment, int pickUp)
    {
        this.ID = iD;
        this.MemberID = memberID;
        this.ProductID = productID;
        this.OrderID = orderID;
        this.Count = count;
        this.Payment = payment;
        this.PickUp = pickUp;
    }
    public OrderDetail() { }

}