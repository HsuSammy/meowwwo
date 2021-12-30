using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Product_shop : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        List<Product> products = ProductUtility.GetCategory3();
        Repeater1.DataSource = products;
        Repeater1.DataBind();

        MeowwwoDBEntities1 db = new MeowwwoDBEntities1();
        Label1.Text = db.Products.Where(c => c.ProductCategory == "1").Count().ToString();
        Label2.Text = db.Products.Where(c => c.ProductCategory == "2").Count().ToString();
        Label3.Text = db.Products.Where(c => c.ProductCategory == "3").Count().ToString();
        Label4.Text = db.Products.Count().ToString();



        if (IsPostBack == false)
        {

            //顏色篩選
            string color = Request.QueryString["color"];
            string tags = Request.QueryString["tags"];

            if (color != null && tags == null)
            {
                var colorList = products.Where(c => c.Color.Contains(color));
                Repeater1.DataSource = colorList;
                Repeater1.DataBind();
            }
            else if (color == null && tags != null)
            {
                var tagList = products.Where(c => c.Tags.Contains(tags));
                Repeater1.DataSource = tagList;
                Repeater1.DataBind();
            }
            else if (color != null && tags != null)
            {
                var searchList = products.Where(c => c.Tags.Contains(tags) && c.Color.Contains(color));
                Repeater1.DataSource = searchList;
                Repeater1.DataBind();
            }
            else
            {
                Repeater1.DataSource = products;
                Repeater1.DataBind();
            }
        }
    }

    //放大鏡搜尋
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        string txt = searchTxt.Text;
        if (!string.IsNullOrWhiteSpace(txt))
        {
            List<Product> products = ProductUtility.GetCategory3();
            //db.表格名稱.where(x => x.欄位 == 值).ToList()
            //db.表格名稱.where(x => x.欄位1 == 值1 && x.欄位2 == 值2).ToList()
            var search = products.Where
                (c => c.ProductName.Contains(txt) ||
                 c.Color.Contains(txt) ||
                 c.Price.ToString().Contains(txt) ||
                 c.ProductDetail.Contains(txt) ||
                 c.Tags.Contains(txt)).ToList();
            Repeater1.DataSource = search;
            Repeater1.DataBind();
            txt = "";
        }

    }
    //白色Btn
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        string Category3 = Request.QueryString["tags"];
        if (Category3 != null)
        {
            Response.Redirect($"~/Product_GoOut.aspx?color=white&tags={Category3}");
        }
        else
        {
            Response.Redirect("~/Product_GoOut.aspx?color=white");
        }
    }
    //黃色Btn
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        string Category3 = Request.QueryString["tags"];
        if (Category3 != null)
        {
            Response.Redirect($"~/Product_GoOut.aspx?color=yellow&tags={Category3}");
        }
        else
        {
            Response.Redirect("~/Product_GoOut.aspx?color=yellow");
        }
    }
    //紅色Btn
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        string Category3 = Request.QueryString["tags"];
        if (Category3 != null)
        {
            Response.Redirect($"~/Product_GoOut.aspx?color=red&tags={Category3}");
        }
        else
        {
            Response.Redirect("~/Product_GoOut.aspx?color=red");
        }
    }
    //綠色Btn
    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {
        string Category3 = Request.QueryString["tags"];
        if (Category3 != null)
        {
            Response.Redirect($"~/Product_GoOut.aspx?color=green&tags={Category3}");
        }
        else
        {
            Response.Redirect("~/Product_GoOut.aspx?color=green");
        }
    }
    //食物造型tag
    protected void Button1_Click(object sender, EventArgs e)
    {
        string Category_color3 = Request.QueryString["color"];
        if (Category_color3 != null)
        {
            Response.Redirect($"~/Product_GoOut.aspx?color={Category_color3}&tags=food");
        }
        else
        {
            Response.Redirect("~/Product_GoOut.aspx?tags=food");
        }
    }
    //背包tag
    protected void Button2_Click(object sender, EventArgs e)
    {
        string Category_color3 = Request.QueryString["color"];
        if (Category_color3 != null)
        {
            Response.Redirect($"~/Product_GoOut.aspx?color={Category_color3}&tags=bag");
        }
        else
        {
            Response.Redirect("~/Product_GoOut.aspx?tags=bag");
        }
    }
    //動物tag
    protected void Button3_Click(object sender, EventArgs e)
    {
        string Category_color3 = Request.QueryString["color"];
        if (Category_color3 != null)
        {
            Response.Redirect($"~/Product_GoOut.aspx?color={Category_color3}&tags=anima");
        }
        else
        {
            Response.Redirect("~/Product_GoOut.aspx?tags=anima");
        }
    }
    protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/Product_Detail.aspx?id={id}");
    }
}
   