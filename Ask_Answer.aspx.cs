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
        int id = int.Parse(Request.QueryString["id"]);
        List<MessageBox> messageBoxes = MessageBoxUtility.GetMessagesDetail(id);
        foreach (var item in messageBoxes)
        {
            title.Text = item.Title;
            message.Text = item.Message;
            if (item.File != null)
            {
                Image1.ImageUrl = $"~/img/MessageBox/{item.File}";
            }

            if (item.Answer == null)
            {
                answer.Text = "客服尚未回覆";
            }
            else
            {
                answer.Text = item.Answer;
                service.Text = "MEOWWWO客服_小花喵_";
                AnsDate.Text = item.ADate;
            }
        }


    }


}