using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;

public partial class Contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        if (email.Text== null  && name.Text ==null)
        {
            Label1.Text = "姓名、E-Mail為必填欄位";
        }
        else
        {
            MailMessage mail = new MailMessage();
            //收信者email
            mail.To.Add("meowwwo.pet@gmail.com");

            //前面是發信email後面是顯示的名稱
            mail.From = new MailAddress($"{email.Text}", $"{name.Text}");

            //標題
            mail.Subject = $"來自官網_客戶[{name.Text}]的提問";

            //設定優先權
            mail.Priority = MailPriority.Normal;

            mail.SubjectEncoding = System.Text.Encoding.UTF8;

            //內容
            mail.Body = $"<h1>來自官網</h1><h2>客戶名稱: {name.Text}</h4><h4>E-mail: {email.Text}<h4><br/><p>提問內容:{quesion.Text}<p>";

            //內容使用html
            mail.IsBodyHtml = true;
            mail.BodyEncoding = System.Text.Encoding.UTF8;

            //設定gmail的smtp (這是google的)
            SmtpClient MySmtp = new SmtpClient("smtp.gmail.com", 587);

            //您在gmail的帳號密碼
            MySmtp.Credentials = new System.Net.NetworkCredential("meowwwo.pet@gmail.com", "meomeo123");

            //開啟ssl
            MySmtp.EnableSsl = true;

            //發送郵件
            MySmtp.Send(mail);

            //放掉宣告出來的MySmtp
            MySmtp = null;

            //放掉宣告出來的mail
            mail.Dispose();
            Response.Write("<script>alert('感謝您的來信，我們將儘速回覆');location.href='Contact.aspx'; </script>");
            email.Text = "";
            name.Text = "";
        }
     
    }
}