using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Product_CheckOut : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

      
            if (Session["UserInfo"] == null)
            {
            Response.Write("<script>alert('請登入會員');location.href='Member_Login.aspx'; </script>");
            Response.Redirect("Member_Login.aspx");
            }
          
        
        if (Page.IsPostBack == false)
        {
            if (Session["ShoppingCart"] != null)
            {
                int discount = 0;
                if (Session["Discount"] != null)
                {
                     discount = int.Parse(Session["Discount"].ToString());
                    Label1.Text = string.Format("{0:c0}", -(discount));
                }

                List<Cart> carts = Session["ShoppingCart"] as List<Cart>;
                Repeater1.DataSource = carts;
                Repeater1.DataBind();
                int Subtotal = 0;
                foreach (var item in carts)
                {
                    Subtotal += item.Total;
                }
                int Alltotal = Subtotal - discount;
                _total.Text = string.Format("{0:c0}", (Alltotal));
            }
            if (Session["UserInfo"] != null)
            {
                Member user = Session["UserInfo"] as Member;
                //資料欄位
                int id = user.MemberID;
                name.Text = user.UserName;
                phone.Text = user.Phone;
                email.Text = user.Email;
                address.Text = user.Address;

                //dropdownList
                List<MemberShipping> add = MemberShippingUtility.GetShipping(id);
                ddlModel.DataSource = add;
                ddlModel.DataValueField = "ID";
                ddlModel.DataTextField = "Name";
                ddlModel.DataBind();
                ListItem LI = new ListItem();
                LI.Text = "--SELECT--";
                LI.Value = "0";
                ddlModel.Items.Insert(0, LI);
                ddlModel.SelectedIndex = 0;

                //Repeater2.DataSource = add;
                //Repeater2.DataBind();

               

            }
        }
        if (Session["UserInfo"] != null)
        {
            if (ddlModel.SelectedItem.Value != null)
            {
                Member user = Session["UserInfo"] as Member;
                int id = user.MemberID;
                List<MemberShipping> add = MemberShippingUtility.GetShipping(id);
                foreach (var item in add)
                {
                    if (ddlModel.SelectedItem.Value == item.ID.ToString())
                    {
                        name.Text = item.Name;
                        phone.Text = item.Phone;
                        email.Text = item.Email;
                        address.Text = item.Address;
                        break;
                    }


                }
            }
        }
        //if (Page.IsPostBack == false)
        //{
        //    if (Session["UserInfo"] != null)
        //    {
        //        Member user = Session["UserInfo"] as Member;
        //        //資料欄位
        //        int id = user.MemberID;
        //        name.Text = user.UserName;
        //        phone.Text = user.Phone;
        //        email.Text = user.Email;
        //        address.Text = user.Address;

        //        //dropdownList
        //        List<MemberShipping> add = MemberShippingUtility.GetShipping(id);
        //        ddlModel.DataSource = add;
        //        ddlModel.DataValueField = "ID";
        //        ddlModel.DataTextField = "Name";
        //        ddlModel.DataBind();
        //        ListItem LI = new ListItem();
        //        LI.Text = "--SELECT--";
        //        LI.Value = "0";
        //        ddlModel.Items.Insert(0, LI);
        //        ddlModel.SelectedIndex = 0;

        //        //Repeater2.DataSource = add;
        //        //Repeater2.DataBind();

        //        if (ddlModel.SelectedItem.Value != null)
        //        {
        //            foreach (var item in add)
        //            {
        //                if (ddlModel.SelectedItem.Value == item.ID.ToString())
        //                {
        //                    name.Text = item.Name;
        //                    phone.Text = item.Phone;
        //                    email.Text = item.Email;
        //                    address.Text = item.Address;
        //                    break;
        //                }

        //                //else if (ddlModel.SelectedValue == null)
        //                //{
        //                //    name.Text = user.UserName;
        //                //    phone.Text = user.Phone;
        //                //    email.Text = user.Email;
        //                //    address.Text = user.Address;
        //                //}

        //                //}
        //            }
        //        }

        //        //HiddenField1.Value = user.MemberID.ToString();
        //        //購買商品內容
        //        if (Session["ShoppingCart"] != null)
        //        {
        //            List<Cart> carts = Session["ShoppingCart"] as List<Cart>;
        //            Repeater1.DataSource = carts;
        //            Repeater1.DataBind();
        //            int total = 0;
        //            foreach (var item in carts)
        //            {
        //                total += item.Price;
        //            }
        //            _total.Text = string.Format("{0:c0}", (total));
        //        }
        //    }
        //}
    }


      protected void Button1_Click(object sender, EventArgs e)
    {
        
        Member user = Session["UserInfo"] as Member;
        int id = user.MemberID;
        string discountPrice=Session["Discount"].ToString();
        string discountName = Session["DiscountName"].ToString();
        OrderList myList = new OrderList(id, 0, DateTime.Now.ToLongDateString(), name.Text, email.Text, phone.Text, address.Text, "0", discountName, int.Parse(discountPrice));
        CheckOutUtility.AddList(myList);
        
        if (myList != null)
        {
            List<Cart> carts = Session["ShoppingCart"] as List<Cart>;
            foreach (var item in carts)
            {
                OrderDetail orderDetail =
                    new OrderDetail(0, id, item.Id, myList.OrderID, item.Count, int.Parse(Payment.SelectedValue), int.Parse(pickUp.SelectedValue));
                CheckOutUtility.AddDetail(orderDetail);

            }
            if (Payment.SelectedValue=="1")
            {
                Response.Redirect($"~/Payment.aspx?id={myList.OrderID}");
            }
            else
            {
                Response.Redirect($"~/OrderComplete.aspx?id={myList.OrderID}");
            }
            
        }
    }

}
