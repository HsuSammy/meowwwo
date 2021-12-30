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

        //分類產品數量
        MeowwwoDBEntities1 db = new MeowwwoDBEntities1();
        Label1.Text = db.Products.Where(c => c.ProductCategory == "1").Count().ToString();
        Label2.Text = db.Products.Where(c => c.ProductCategory == "2").Count().ToString();
        Label3.Text = db.Products.Where(c => c.ProductCategory == "3").Count().ToString();
        Label4.Text = db.Products.Count().ToString();

        if (IsPostBack==false)
        {

        //顏色篩選
        List<Product> products = ProductUtility.GetProducts();
        string color = Request.QueryString["color"];
        string tags = Request.QueryString["tags"];
       
        if (color!=null && tags ==null)
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
        else if (color!=null && tags !=null)
        {var searchList = products.Where(c => c.Tags.Contains(tags) && c.Color.Contains(color));
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
            List<Product> products = ProductUtility.GetProducts();
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
        string tags1 = Request.QueryString["tags"];
        if (tags1!= null )
        {
            Response.Redirect($"~/Product_AllProducts.aspx?color=white&tags={tags1}");
        }
        else 
        {
            Response.Redirect("~/Product_AllProducts.aspx?color=white");
        }
    }
    //黃色Btn
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        string tags1 = Request.QueryString["tags"];
        if (tags1 != null)
        {
            Response.Redirect($"~/Product_AllProducts.aspx?color=yellow&tags={tags1}");
        }
        else
        {
            Response.Redirect("~/Product_AllProducts.aspx?color=yellow");
        }
    }
    //紅色Btn
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        string tags1 = Request.QueryString["tags"];
        if (tags1 != null)
        {
            Response.Redirect($"~/Product_AllProducts.aspx?color=red&tags={tags1}");
        }
        else
        {
            Response.Redirect("~/Product_AllProducts.aspx?color=red");
        }
    }
    //綠色Btn
    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {
        string tags1 = Request.QueryString["tags"];
        if (tags1 != null)
        {
            Response.Redirect($"~/Product_AllProducts.aspx?color=green&tags={tags1}");
        }
        else
        {
            Response.Redirect("~/Product_AllProducts.aspx?color=green");
        }
    }

  
    protected void Button1_Click(object sender, EventArgs e)
    {
        string color = Request.QueryString["color"];
        if (color != null)
        {
            Response.Redirect($"~/Product_AllProducts.aspx?color={color}&tags=food");
        }
        else
        {
            Response.Redirect("~/Product_AllProducts.aspx?tags=food");
        }
    }
    //背包tag
    protected void Button2_Click(object sender, EventArgs e)
    {
        string color = Request.QueryString["color"];
        if (color != null)
        {
            Response.Redirect($"~/Product_AllProducts.aspx?color={color}&tags=bag");
        }
        else
        {
            Response.Redirect("~/Product_AllProducts.aspx?tags=bag");
        }
    }
    //動物tag
    protected void Button3_Click(object sender, EventArgs e)
    {
        string color = Request.QueryString["color"];
        if (color != null)
        {
            Response.Redirect($"~/Product_AllProducts.aspx?color={color}&tags=anima");
        }
        else
        {
            Response.Redirect("~/Product_AllProducts.aspx?tags=anima");
        }
    }



   
    protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
    {
        List<Cart> cartList = Session["ShoppingCart"] as List<Cart>;
        
        foreach (RepeaterItem item in Repeater1.Items)
        {
            //找ID
            HiddenField hidd = item.FindControl("HiddenField1") as HiddenField;
            int id = int.Parse(hidd.Value);
        }
      
      
    }
    private void NewMethod(int id)
    {
        Product product = ProductUtility.GetProducts(id);
        List<Cart> cartList = null;
        if (Session["ShoppingCart"] != null)
        {
            cartList = Session["ShoppingCart"] as List<Cart>;

            foreach (Cart item in cartList)
            {
                if (id == item.Id)
                {
                    item.Count += 1;
                    Session["ShoppingCart"] = cartList;
                    break;
                }
                else
                {
                    Cart cart = new Cart(product.ProductID, product.ProductName, product.Price, product.ImageFile, 1);
                    cartList.Add(cart);
                    Session["ShoppingCart"] = cartList;
                    break;
                }
            }
        }
        else
        {
            cartList = new List<Cart>();
            Cart cart = new Cart(product.ProductID, product.ProductName, product.Price, product.ImageFile, 1);
            cartList.Add(cart);
            Session["ShoppingCart"] = cartList;
        }
        Response.Redirect("~/Product_Cart.aspx");
    }
}
//switch (color)
//{
//    case "white":
//        var white = products.Where(c => c.Color.Contains("white"));
//        Repeater1.DataSource = white;
//        Repeater1.DataBind();
//        break;
//    case "yellow":
//         var yellow = products.Where(c => c.Color.Contains("yellow"));
//        Repeater1.DataSource = yellow;
//        Repeater1.DataBind();
//        break;
//    case "orange":
//        var orange = products.Where(c => c.Color.Contains("orange"));
//        Repeater1.DataSource = orange;
//        Repeater1.DataBind();
//        break;
//    case "pink":
//        var pink = products.Where(c => c.Color.Contains("pink"));
//        Repeater1.DataSource = pink;
//        Repeater1.DataBind();
//        break;
//    case "red":
//        var red = products.Where(c => c.Color.Contains("red"));
//        Repeater1.DataSource = red;
//        Repeater1.DataBind();
//        break;
//    case "brown":
//        var brown = products.Where(c => c.Color.Contains("brown"));
//        Repeater1.DataSource = brown;
//        Repeater1.DataBind();
//        break;
//    case "gray":
//        var gray = products.Where(c => c.Color.Contains("gray"));
//        Repeater1.DataSource = gray;
//        Repeater1.DataBind();
//        break;
//    case "black":
//        var black = products.Where(c => c.Color.Contains("black"));
//        Repeater1.DataSource = black;
//        Repeater1.DataBind();
//        break;
//    case "blue":
//        var blue = products.Where(c => c.Color.Contains("blue"));
//        Repeater1.DataSource = blue;
//        Repeater1.DataBind();
//        break;
//    case "green":
//        var green = products.Where(c => c.Color.Contains("green"));
//        Repeater1.DataSource = green;
//        Repeater1.DataBind();
//        break;
//    default:
//        Repeater1.DataSource = products;
//        Repeater1.DataBind();
//        break;
//}

