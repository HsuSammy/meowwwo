using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.IO;
using System.Web.UI.WebControls;
using System.Globalization;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (Session["UserInfo"] != null)
        {
            Member user = Session["UserInfo"] as Member;
            HiddenField1.Value = user.MemberID.ToString();
            HiddenField2.Value = user.Password;
            name.Text = user.UserName;
            email.Text = user.Email;
            Label1.Text = user.Email;
            RadioButtonList1.Text = user.Gender;
            birth.Text = user.BirthDate.Value.ToShortDateString();
            phone.Text = user.Phone;
            address.Text = user.Address;
            RadioButtonList2.Text = user.EDM.ToString();
        }
        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        if (Page.IsPostBack == false)
        {
            if (Session["UserInfo"] != null)
            {
               

                Member user = Session["UserInfo"] as Member;
                //收件人資訊聯結
                List<MemberShipping> shippings = MemberShippingUtility.GetShipping(user.MemberID);
                Repeater1.DataSource = shippings;
                Repeater1.DataBind();

                //發問記錄
                List<MessageBox> messageBoxes = MessageBoxUtility.GetMessages(user.MemberID);
               
                Repeater2.DataSource = messageBoxes;
                Repeater2.DataBind();
                //發問記錄
                //foreach (var item in messageBoxes)
                //{
                //    List<MessageBox> _msg = MessageBoxUtility.GetMessagesDetail(item.Id);
                //    foreach (var item2 in _msg)
                //    {
                //        if (item.Answer != null)
                //        {
                //            answer.Attributes.Remove("class");
                //            answer.Attributes.Add("class", "step");
                //        }
                //    }
                //}
                //List<MessageBox> msg = MessageBoxUtility.GetMessagesDetail();

                //訂單狀態
                List<OrderList> orderLists = CheckOutUtility.GetOrderList(user.MemberID);
                Repeater1.DataSource = shippings;
                Repeater1.DataBind();

                if (orderLists.Count == 0)
                {
                    orderDetail.Style["Display"] = "None";
                    showMsg.Text = "無正在處理中訂單";
                }
                else
                {
                    orderDetail.Style["Display"] = "Block";
                    showMsg.Text = "訂單進度查詢";
                    orderCheck1.Attributes.Remove("class");
                    orderCheck1.Attributes.Add("class", "step");
                    orderCheck2.Attributes.Remove("class");
                    orderCheck2.Attributes.Add("class", "step");
                    orderCheck3.Attributes.Remove("class");
                    orderCheck3.Attributes.Add("class", "step");
                    foreach (var item in orderLists)
                    {
                        if (item.State == "4")//結案
                        {
                            orderDetail.Style["Display"] = "None";
                            showMsg.Text = "無正在處理中訂單";
                        }
                        else if (item.State == "0")//收到訂單
                        {
                            showMsg.Text = "訂單進度查詢";
                            Label3.Text = $"9048000{item.OrderID}";
                            Label6.Text = item.ShipName;
                            Label7.Text = item.Phone;
                            Label8.Text = item.Address;
                            Label9.Text = item.ShippedDate;
                            orderDetail.Style["Display"] = "Block";
                            showMsg.Text = "";
                        }
                        else if (item.State == "1")//處理中
                        {
                            showMsg.Text = "訂單進度查詢";
                            Label3.Text = $"9048000{item.OrderID}";
                            Label6.Text = item.ShipName;
                            Label7.Text = item.Phone;
                            Label8.Text = item.Address;
                            Label9.Text = item.ShippedDate;
                            orderDetail.Style["Display"] = "Block";
                            showMsg.Text = "";
                            orderCheck1.Attributes.Add("class", "step active");
                        }
                        else if (item.State == "2")
                        {
                            showMsg.Text = "訂單進度查詢";
                            Label3.Text = $"9048000{item.OrderID}";
                            Label6.Text = item.ShipName;
                            Label7.Text = item.Phone;
                            Label8.Text = item.Address;
                            Label9.Text = item.ShippedDate;
                            orderDetail.Style["Display"] = "Block";
                            orderCheck1.Attributes.Add("class", "step active");
                            orderCheck2.Attributes.Add("class", "step active");
                        }
                        else
                        {
                            showMsg.Text = "訂單進度查詢";
                            Label3.Text = $"9048000{item.OrderID}";
                            Label6.Text = item.ShipName;
                            Label7.Text = item.Phone;
                            Label8.Text = item.Address;
                            Label9.Text = item.ShippedDate;
                            orderDetail.Style["Display"] = "Block";
                            orderCheck1.Attributes.Add("class", "step active");
                            orderCheck2.Attributes.Add("class", "step active");
                            orderCheck3.Attributes.Add("class", "step active");
                        }
                    }
                }
            }
            else
            {
                Response.Redirect("~/Member_Login.aspx");
                orderDetail.Style["Display"] = "None";
                showMsg.Text = "請登入會員";
            }
        }


    }


    protected void creat_Click(object sender, EventArgs e)
    {
        Member user = Session["UserInfo"] as Member;
        int id = user.MemberID;
        MemberShipping shiper = new MemberShipping
         (id, TextBox1.Text, TextBox2.Text, TextBox4.Text, 0, TextBox3.Text);
        MemberShippingUtility.Add(shiper);
        Response.Redirect($"/Member_Center.aspx?type=shipper");

    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        if (title.Text == null)
        {
            Label10.Text = "請輸入主旨";
        }
        else if (message.Text == null)
        {
            Label10.Text = "請輸入內容";
        }
        string file;
        if (FileUpload1.HasFile)
        {
                file = FileUpload1.FileName;
                MessageBox messageBox = new MessageBox(0, int.Parse(Session["memberID"].ToString()), title.Text, message.Text,file,DateTime.Now.ToString("yyyy/MM/dd"));
                MessageBoxUtility.Add(messageBox);
                string path = Server.MapPath($"/img/MessageBox/{file}");
                FileUpload1.SaveAs(path);
                Response.Write("<script>alert('發送成功');location.href='Member_Center.aspx?type=message'; </script>");
        }
        else
        {
            MessageBox messageBox = new MessageBox(0, int.Parse(Session["memberID"].ToString()), title.Text, message.Text, DateTime.Now.ToString("yyyy/MM/dd"));
            MessageBoxUtility.Add(messageBox);
            Response.Write("<script>alert('發送成功');location.href='Member_Center.aspx?type=message'; </script>");

        }
    }
   

}




