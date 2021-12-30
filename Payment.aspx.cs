using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default4 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //string id = Request.QueryString["id"];
        HiddenField1.Value = Request.QueryString["id"];
    }

    protected void checkOK_Click(object sender, EventArgs e)
    {
        //int orderID = int.Parse(Request.QueryString["id"]);
        //string NewString = Regex.Replace(cardInput.Text, @"\s", "");
        if (Request.QueryString["id"]!=null)
        {
            Payment pay = new Payment(0, int.Parse(Request.QueryString["id"]), Regex.Replace(cardInput.Text, @"\s", ""));
            CheckOutUtility.Add(pay);
            //Response.Write("<script>alert('付款成功'); </script>");
        }
        
        Response.Redirect($"OrderComplete.aspx?id={Request.QueryString["id"]}");
       
    }
}