using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FAQ : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["memberID"] != null)
        {
            HiddenField1.Value = Session["memberID"].ToString();
        }
      
    }

    //protected void Button1_Click(object sender, EventArgs e)
    //{
    //    //if (Session["memberID"] != null)
    //    //{
    //    //    Response.Redirect($"./Member_Delete.aspx?id={HiddenField1.Value}");
    //    //}
    //    //Response.Write("<script>alert('確認刪除？');location.href='Member_Login.aspx'; </script>");

    //}

    //protected void Button1_Click(object sender, EventArgs e)
    //{
    //    if (Session["memberID"] != null)
    //    {
    //        HiddenField1.Value = Session["memberID"].ToString();
    //    }
    //    else
    //    {
    //        Response.Write("<script>alert('您尚未成為會員'); </script>");
    //    }
    //}
}