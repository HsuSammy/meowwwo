using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.IO;
using System.Web.UI.WebControls;
using System.Globalization;
using System.Net.Mail;
using static SweetAlert;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        if (!IsPostBack)
        {
            if (Request.Cookies["Name"] != null && Request.Cookies["Password"] != null)
            {
                LoginEmail.Text = Request.Cookies["Name"].Value;
                LoginPassword.Attributes["value"] = Request.Cookies["Password"].Value;
            }
        }
    }


    protected void Button3_Click(object sender, EventArgs e)
    {
        label1.Text = string.Empty;
        label2.Text = string.Empty;
        Member mail = MemberUtility.GetMembers(LoginEmail.Text);
        Member login = MemberUtility.GetMembers(LoginEmail.Text, LoginPassword.Text);
        Response.Cookies["Name"].Expires = DateTime.Now.AddDays(-1);
        Response.Cookies["Password"].Expires = DateTime.Now.AddDays(-1);

        //記住我
        if (CheckBox3.Checked)
        {
            Response.Cookies["Name"].Expires = DateTime.Now.AddDays(7);
            Response.Cookies["Password"].Expires = DateTime.Now.AddDays(7);
            Response.Cookies["Name"].Value = this.LoginEmail.Text.Trim();
            Response.Cookies["Password"].Value = this.LoginPassword.Text.Trim();
        }
        else
        {
            if (Request.Cookies["Name"] != null)
            {
                string loginMail = HttpContext.Current.Request.Cookies["Name"].Value;
                if (loginMail == LoginEmail.Text)
                {
                    Response.Cookies["Name"].Expires = DateTime.Now.AddDays(7);
                    Response.Cookies["Password"].Expires = DateTime.Now.AddDays(7);
                    Response.Cookies["Name"].Value = this.LoginEmail.Text.Trim();
                    Response.Cookies["Password"].Value = this.LoginPassword.Text.Trim();
                }
            }
        };

        //登入會員
        if (string.IsNullOrEmpty(LoginEmail.Text) || string.IsNullOrWhiteSpace(LoginEmail.Text))
        {
            label1.Text = "請輸入E-mail";
        }
        else if (mail == null)
        {
            label1.Text = "查無此帳號，請重新輸入";
        }
        else if (login == null)
        {
            label2.Text = "密碼不正確，請重新輸入";
        }
        else
        {
            int MemberID = login.MemberID;
            Session["memberID"] = MemberID;
            Session["UserInfo"] = login;
            Response.Redirect("~/index.aspx");
        }
        //if (login == null)
        //{
        //    label2.Text = "錯誤";
        //}
    }


    //註冊會員
    protected void Button4_Click(object sender, EventArgs e)
    {
        if (registerPas.Text != confirmpas.Text)
        {
            Label3.Text = "輸入的密碼不相符，新重新輸入";
            //Response.Redirect("./Member_login.aspx?type=register");
        }
        else
        {
            int select;
            if (CheckBox1.Checked)
            {
                select = 1;
            }
            else
            {
                select = 0;
            }
          
                DateTime birthday = DateTime.ParseExact(datepicker.Text, "yyyy-MM-dd", CultureInfo.InvariantCulture);
                Member members = new Member
             (0, registerName.Text, registerPas.Text, registerMail.Text, registerPhone.Text, registerAdd.Text,
             DateTime.Now, select, Gender.Text, birthday);
                MemberUtility.Add(members);
          
            Response.Write("<script>alert('註冊成功');location.href='Member_Login.aspx'; </script>");
            //new SweetDialog().Show(this, "註冊成功，請重新輸入", "", (int)SweetDialog.MessageIcon.INFO);

            Response.Redirect("~/Member_login.aspx");
        }
    }
    //忘記密碼
    protected void Button1_Click(object sender, EventArgs e)
    {
      Member _mail = MemberUtility.GetMembers(TextBox1.Text);
        if (_mail == null)
        {
            sendTo.Text = "查無此會員帳號，請重新輸入";
            Response.Write("<script>alert('查無此會員帳號，請重新輸入');location.href='Member_Login.aspx'; </script>");
            //new SweetDialog().Show(this, "查無此會員帳號，請重新輸入", "", (int)SweetDialog.MessageIcon.INFO);
        }
        else
        {
            MailMessage mail = new MailMessage();
            //收信者email
            mail.To.Add($"{TextBox1.Text}");

            //前面是發信email後面是顯示的名稱
            mail.From = new MailAddress("meowwwo.pet@gmail.com", "喵嗚寵物網");

            //標題
            mail.Subject = $"{_mail.UserName}您好，信件內容提供您所設定的密碼，謝謝";

            //設定優先權
            mail.Priority = MailPriority.Normal;

            mail.SubjectEncoding = System.Text.Encoding.UTF8;

            //內容
            mail.Body = $"<h3>您的密碼為：{_mail.Password}</h3><br/><h4><a href=' http://localhost:54977/Member_Login.aspx ' >請點我進行登入 </h4>";

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
            Response.Write("<script>alert('已傳送');location.href='Member_Login.aspx'; </script>");
        }
    }

    //protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    //{
    //    LoginEmail.Text = "sammyhsu@hotmail.com.tw";
        
    //}

    //protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    //{
    //    LoginEmail.Text = "bubu@mmm.com";
    //}

    //protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    //{
    //    //Response.Redirect("~/Member_Login.aspx?type=register");
    //    registerName.Text = "許咘咘";
    //    registerMail.Text = "bubu@mmm.com";
    //    datepicker.Text = "2000/10/15";
    //    registerPhone.Text = "0988111";
    //    registerAdd.Text = "新北市永和區仁愛路1號";
    //}

    
}
    
