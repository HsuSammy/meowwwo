<%@ WebService Language="C#" Class="WebService" %>

using System;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.Data.Entity;
using System.Linq;
using System.Data;
using System.Collections.Generic;

[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// 若要允許使用 ASP.NET AJAX 從指令碼呼叫此 Web 服務，請取消註解下列一行。
[System.Web.Script.Services.ScriptService]
public class WebService : System.Web.Services.WebService
{
    //[WebMethod]
    //public void AddPayment(Payment m)
    //{
    //    MeowwwoDBEntities1 db = new MeowwwoDBEntities1();
    //    Payment pay = new Payment(m.Id, m.OrderID, m.cardNumber);
    //    db.Payments.Add(pay);
    //    db.SaveChanges();
    //}

    [WebMethod(EnableSession =true)]
    public void Update(int memberId, string Gender, DateTime birthDate, string phone, string address, int EDM)
    {
        MeowwwoDBEntities1 db = new MeowwwoDBEntities1();
        Member aa = db.Members.SingleOrDefault(m => m.MemberID == memberId);

        aa.MemberID = memberId;
        aa.Gender = Gender;
        aa.BirthDate = birthDate;
        aa.Phone = phone;
        aa.Address = address;
        aa.EDM = EDM;
        db.SaveChanges();

        if (Session["UserInfo"] != null)
        {
            Member user = Session["UserInfo"] as Member;
            user.MemberID = memberId;
            user.Gender = Gender;
            user.BirthDate = birthDate;
            user.Phone = phone;
            user.Address = address;
            user.EDM = EDM;
        }

    }
    [WebMethod]
    public void DeleteMember(int MemberID)
    {
        MeowwwoDBEntities1 db = new MeowwwoDBEntities1();
        Member member = db.Members.SingleOrDefault(p => p.MemberID == MemberID);
        db.Members.Remove(member);
        db.SaveChanges();
    }

    [WebMethod]
    public void ChangePassword(int memberId, string password)
    {
        MeowwwoDBEntities1 db = new MeowwwoDBEntities1();
        Member aa = db.Members.SingleOrDefault(m => m.MemberID == memberId);
        aa.MemberID = memberId;
        aa.Password = password;
        db.SaveChanges();
    }

    [WebMethod]
    public ShippingResult GetShipping(int ID)
    {
        MeowwwoDBEntities1 db = new MeowwwoDBEntities1();
        //return db.MemberShippings.Where(o => o.MemberID == MemberID).ToList();
        return db.MemberShippings.Where(o => o.ID == ID).Select(o => new ShippingResult()
        {
            ID = o.ID,
            MemberID = o.MemberID,
            Name = o.Name,
            Phone = o.Phone,
            Address = o.Address,
            Email = o.Email
        }).SingleOrDefault();
    }





    [WebMethod]
    public void UpdateShipping(int id, int memberId, string Name, string Phone, string Email, string address)
    {
        MeowwwoDBEntities1 db = new MeowwwoDBEntities1();
        MemberShipping aa = db.MemberShippings.SingleOrDefault(m => m.ID == id);

        aa.ID = id;
        aa.MemberID = memberId;
        aa.Name = Name;
        aa.Phone = Phone;
        aa.Email = Email;
        aa.Address = address;
        db.SaveChanges();
    }


    [WebMethod]
    public void DeleteShipping(int id)
    {
        MeowwwoDBEntities1 db = new MeowwwoDBEntities1();
        MemberShipping memberShipping = db.MemberShippings.SingleOrDefault(m => m.ID == id);
        db.MemberShippings.Remove(memberShipping);
        db.SaveChanges();
    }

    [WebMethod]
    public ShippingResult GetMembers(string email)
    {
        MeowwwoDBEntities1 db = new MeowwwoDBEntities1();
        return db.Members.Where(c => c.Email == email).Select(c => new ShippingResult()
        {
            MemberID = c.MemberID,
            Name = c.UserName,
            Email = c.Email,
        }).FirstOrDefault();

    }
    public void Deleteshipping(int id)
    {
        MeowwwoDBEntities1 db = new MeowwwoDBEntities1();
        MemberShipping memberShipping = db.MemberShippings.SingleOrDefault(m => m.ID == id);
        db.SaveChanges();
    }


    public class ShippingResult
    {
        public int MemberID { get; set; }
        public string Name { get; set; }
        public string Phone { get; set; }
        public string Address { get; set; }
        public int ID { get; set; }
        public string Email { get; set; }
    }

    [WebMethod]
    public List<OrderDetail> GetDetails(int memberID)
    {
        MeowwwoDBEntities1 db = new MeowwwoDBEntities1();
        return db.OrderDetails.Where(m => m.MemberID == memberID).Select(m => new OrderDetail()
        {
            ID = m.ID,
            MemberID = m.MemberID,
            ProductID = m.ProductID,
            OrderID = m.OrderID,
            Count = m.Count,
            Payment = m.Payment,
            PickUp = m.PickUp
        }).ToList();

    }
    public class OrderDetail
    {
        public int ID { get; set; }
        public int MemberID { get; set; }
        public int ProductID { get; set; }
        public int OrderID { get; set; }
        public int Count { get; set; }
        public int Payment { get; set; }
        public int PickUp { get; set; }
    }

    [WebMethod]
    public List<OrderList> GetLists(int memberID)
    {
        MeowwwoDBEntities1 db = new MeowwwoDBEntities1();
        List<OrderList> oList = db.OrderLists.Where(m => m.MemberID == memberID).Select(m => new OrderList()
        {
            MemberID = m.MemberID,
            OrderID = m.OrderID,
            OrderDate = m.OrderDate,
            ShippedDate = m.ShippedDate,
            Email = m.Email,
            Phone = m.Phone,
            Address = m.Address,
            State = m.State
        }).ToList();

        return oList.OrderByDescending(m => DateTime.Parse(m.OrderDate)).ToList();

    }
    public class OrderList
    {
        public int MemberID { get; set; }
        public int OrderID { get; set; }
        public string OrderDate { get; set; }
        public string ShippedDate { get; set; }
        public string ShipName { get; set; }
        public string Email { get; set; }
        public string Phone { get; set; }
        public string Address { get; set; }
        public string State { get; set; }
    }

}


