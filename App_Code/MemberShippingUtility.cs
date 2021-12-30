using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for MemberShipping
/// </summary>
public class MemberShippingUtility
{
    public static List<MemberShipping> GetMemberShipping()
    {
        MeowwwoDBEntities1 db = new MeowwwoDBEntities1();
        return db.MemberShippings.ToList();
    }
    public static MemberShipping GetImg(int id)
    {
        MeowwwoDBEntities1 db = new MeowwwoDBEntities1();
        return db.MemberShippings.SingleOrDefault(o => o.MemberID == id);
    }

    public static List<MemberShipping> GetShipping(int MemberID)
    {
        MeowwwoDBEntities1 db = new MeowwwoDBEntities1();
        return db.MemberShippings.Where(o => o.MemberID == MemberID).ToList();
    }
    public static void Update(MemberShipping m)
    {
        MeowwwoDBEntities1 db = new MeowwwoDBEntities1();
        db.Entry(m).State = System.Data.Entity.EntityState.Modified;
        db.SaveChanges();
    }
    public static void Add(MemberShipping m)
    {
        MeowwwoDBEntities1 db = new MeowwwoDBEntities1();
        db.MemberShippings.Add(m);
        db.SaveChanges();
    }
}