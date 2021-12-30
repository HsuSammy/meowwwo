using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Product_Cart : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {

            if (Session["ShoppingCart"] != null)
            {
                List<Cart> carts = Session["ShoppingCart"] as List<Cart>;
                Repeater1.DataSource = carts;
                Repeater1.DataBind();
                int total = 0;
                foreach (Cart item in carts)
                {
                    total += item.Total;
                }
                _subtotal.Value = total.ToString();
                Label1.Text = string.Format("{0:c0}", (total));
                if (Session["Discount"] != null)
                {//如果優惠券已存在
                    int count = int.Parse(Session["Discount"].ToString());
                    Label3.Text = string.Format("{0:c0}", -(count));
                    Label2.Text = string.Format("{0:c0}", (total - count));
                }
                else
                {
                    _total.Value = total.ToString();
                    Label2.Text = string.Format("{0:c0}", (total));
                }
            }
        }
    }


    //前往結帳
    protected void Button1_Click(object sender, EventArgs e)
    {
        Member member = Session["UserInfo"] as Member;
        if (Session["UserInfo"] != null)
        {
            Response.Redirect($"Product_CheckOut.aspx?id={member.MemberID}");
        }
        else
        {
            Response.Write("<script>alert('登入會員進行結帳');location.href='Member_Login.aspx'; </script>");
        }

    }


    //更改購物車數量與小計
    protected void Button2_Click(object sender, EventArgs e)
    {
        List<Cart> cartList = Session["ShoppingCart"] as List<Cart>;

        foreach (RepeaterItem item in Repeater1.Items)
        {
            //找數量
            TextBox txtBox = item.FindControl("cart") as TextBox;
            int count = int.Parse(txtBox.Text);

            //找ID
            HiddenField hidd = item.FindControl("HiddenField2") as HiddenField;
            int id = int.Parse(hidd.Value);
            if (count != 0)
            {
                cartList.SingleOrDefault(c => c.Id == id).Count = count;
            }
            else
            {
                cartList.SingleOrDefault(c => c.Id == id).Count = count;
                var itemToRemove = cartList.Single(r => r.Count == 0);
                cartList.Remove(itemToRemove);
            }
        }

        Repeater1.DataSource = cartList;
        Repeater1.DataBind();
        int total = 0;
        foreach (Cart item in cartList)
        {
            total += item.Total;
        }
        Label1.Text = string.Format("{0:c0}", (total));
        if (Session["Discount"] != null)
        {//如果優惠券已存在
            int count = int.Parse(Session["Discount"].ToString());
            Label3.Text = string.Format("{0:c0}", -(count));
            Label2.Text = string.Format("{0:c0}", (total - count));
        }
        else
        {
            _total.Value = total.ToString();
            Label2.Text = string.Format("{0:c0}", (total));
        }
        Session["ShoppingCart"] = cartList;


        //更新masterpage上面的購物數量
        int shoppingCount = 0;
        foreach (var item in cartList)
        {
            shoppingCount += item.Count;
        }
        Label lb = Master.FindControl("cartCount") as Label;
        lb.Text = shoppingCount.ToString();
    }


    protected void Unnamed_Click(object sender, EventArgs e)
    {

        if (Session["ShoppingCart"] == null)
        {
            Label4.Text = "請先將商品加入購物車";
        }
        else
        {
            if (discount.Text != null)
            {
                List<Discount> discounts = Cart.GetDiscount();
               
                foreach (var item in discounts)
                {
                    Label3.Text = string.Format("{0:c0}", -(0));
                    _discount.Value = "0";
                    Label4.Text = "";
                    if (item.Code.ToUpper() == discount.Text.ToUpper())
                    {
                        Label3.Text = string.Format("{0:c0}", -(item.Price));
                        _discount.Value = item.Price.ToString();
                        string discountName = item.Name;
                        Session["Discount"] = _discount.Value;
                        Session["DiscountName"] = discountName;
                        break;
                    }
                    else
                    {
                        Label4.Text = "此優惠代碼無效";
                    }
                }
               
                int subtotal = int.Parse(_subtotal.Value) - int.Parse(_discount.Value);
                _total.Value = subtotal.ToString();
                Label2.Text = string.Format("{0:c0}", (subtotal));


            }
        }
    }


}


