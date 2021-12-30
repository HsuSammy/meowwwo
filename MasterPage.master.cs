using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

        //購物車計數
        if (Session["ShoppingCart"] != null)
        {
            List<Cart> carts = Session["ShoppingCart"] as List<Cart>;
            int c = 0;
            foreach (var item in carts)
            {
                c += item.Count;
            }
            cartCount.Text = c.ToString();
        }
        //UserName
        if (Page.IsPostBack == false)
        {
            if (Session["UserInfo"] != null)
            {
                Member member = Session["UserInfo"] as Member;
                userName.Text = member.UserName;
            }
            
        }
      
    }
}
