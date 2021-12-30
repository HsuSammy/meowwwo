using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// MessageBoxUtility 的摘要描述
/// </summary>
public class MessageBoxUtility
{
    public static void Add(MessageBox m)
    {
        MeowwwoDBEntities1 db = new MeowwwoDBEntities1();
        db.MessageBoxes.Add(m);
        db.SaveChanges();
    }

    public static List<MessageBox> GetMessages(int MemberID)
    {
        MeowwwoDBEntities1 db = new MeowwwoDBEntities1();
        return db.MessageBoxes.Where(o => o.MemberID == MemberID).ToList();
    }

    public static List<MessageBox> GetMessagesDetail(int id)
    {
        MeowwwoDBEntities1 db = new MeowwwoDBEntities1();
        return db.MessageBoxes.Where(o => o.Id == id).ToList();
    }
}