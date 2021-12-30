using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Member_OrderDetail_aspx : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        int OrderID = int.Parse(Request.QueryString["id"]);
        List<OrderList> orderLists = MemberCenterUtility.GetOrderListByOrderID(OrderID);
        string shipName = "";
        int _discount = 0;
        foreach (var item in orderLists)
        {
            name.Text = item.ShipName;
            shipName = item.ShipName;
            phone.Text = item.Phone;
            address.Text = item.Address;
            email.Text = item.Email;
            orderID.Text = $"9048000{item.OrderID.ToString()}";
            discountName.Text = item.DiscountName;
            discount.Text = string.Format("{0:c0}", (item.DiscountPrice));
            _discount = Convert.ToInt32(item.DiscountPrice);
            orderDate.Text = item.OrderDate;
            if (item.ShippedDate==null)
            {
                shippingDate.Text = "尚未出貨";
            }
            else
            {
                shippingDate.Text = item.ShippedDate;
            }
            
        }
        MemberShipping shipping = MemberCenterUtility.GetShippingByName(shipName);
        var detailList = MemberCenterUtility.GetDetailWithProduct(int.Parse(Request.QueryString["id"]));
        var productList = detailList.Select(x => new { x.Product.ProductID,x.Product.ProductName,x.Product.ImageFile,x.Product.Price, x.Count }).ToList();
        Repeater1.DataSource = productList;
        Repeater1.DataBind();

        int Subtotal= 0;
        
        foreach (var item in productList)
        {
            Subtotal += (item.Count * item.Price);
        }
        subtotal.Text = string.Format("{0:c0}", (Subtotal));
        total.Text = string.Format("{0:c0}", (Subtotal - _discount));
       
        switch (detailList[0].Payment.ToString())
        {
            case "1":
                pickup.Text = "宅配";
                break;
            case "2":
                pickup.Text = "超商取貨";
                break;
            case "3":
                pickup.Text = "門市自取";
                break;
        }
        switch (detailList[0].PickUp.ToString())
        {
            case "1":
                payment.Text = "刷卡";
                Payment cardNum = CheckOutUtility.GetPayment(OrderID);
                num.Text ="("+cardNum.cardNumber.Substring(12)+")";


                break;
            case "2":
                payment.Text = "匯款";
                break;
            case "3":
                payment.Text = "貨到付款";
                break;
        }
    }
}