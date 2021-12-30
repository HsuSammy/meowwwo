using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// MemberUtility 的摘要描述
/// </summary>
public class MemberUtility
{
   public static void Add(Member m)
    {
        MeowwwoDBEntities1 db = new MeowwwoDBEntities1();
        db.Members.Add(m);
        db.SaveChanges();
    }
    public static List<Member> GetMembers()
    {
        MeowwwoDBEntities1 db = new MeowwwoDBEntities1();
        return db.Members.ToList();
    }
    public static Member GetMembers(string email,string password)
    {
        MeowwwoDBEntities1 db = new MeowwwoDBEntities1();
        var query = from m in db.Members
                    where ( m.Email == email && m.Password == password)
                    select m;
        return query.FirstOrDefault();
    }
    public static Member GetMembers(string email)
    {
        MeowwwoDBEntities1 db = new MeowwwoDBEntities1();
        return db.Members.SingleOrDefault(m => m.Email == email);
    }

    public static void Update(Member m)
    {
        MeowwwoDBEntities1 db = new MeowwwoDBEntities1();
        db.Entry(m).State = System.Data.Entity.EntityState.Modified;
        db.SaveChanges();
    }
 

}