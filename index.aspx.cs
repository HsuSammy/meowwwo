using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {


            //新進商品*4
            List<Product> NewArrived = ProductUtility.GetNewArrived();
            Image1.ImageUrl = $"~/img/product/allProducts/{NewArrived[0].ImageFile}.jpg";
            Label1.Text = NewArrived[0].ProductName;
            Label2.Text = string.Format("{0:c0}", NewArrived[0].Price);
            HiddenField1.Value = NewArrived[0].ProductID.ToString();
            

            Image3.ImageUrl = $"~/img/product/allProducts/{NewArrived[1].ImageFile}.jpg";
            Label5.Text = NewArrived[1].ProductName;
            Label6.Text = string.Format("{0:c0}", NewArrived[1].Price);
            HiddenField3.Value = NewArrived[1].ProductID.ToString();

            Image5.ImageUrl = $"~/img/product/allProducts/{NewArrived[2].ImageFile}.jpg";
            Label9.Text = NewArrived[2].ProductName;
            Label10.Text = string.Format("{0:c0}", NewArrived[2].Price);
            HiddenField5.Value = NewArrived[2].ProductID.ToString();

            Image7.ImageUrl = $"~/img/product/allProducts/{NewArrived[3].ImageFile}.jpg";
            Label13.Text = NewArrived[3].ProductName;
            Label14.Text = string.Format("{0:c0}", NewArrived[3].Price);
            HiddenField7.Value = NewArrived[3].ProductID.ToString();


            //取4亂數，排除新進4個商品，並檢查id是否存在

            List<int> recommend = new List<int>();

            Random rnd = new Random();
            List<Product> prodList = ProductUtility.GetProducts();
            int Length_A = (prodList.Count) - 3;
            if (Page.IsPostBack == false)
            {
                while (true)
                {
                    int number = rnd.Next(1, Length_A);
                    if (recommend.Contains(number) || !prodList.Exists(t => t.ProductID == number))
                    {
                        continue;
                    }

                    recommend.Add(number);

                    if (recommend.Count == 4)
                    {
                        break;
                    }
                }
            }



            //隨機推荐*4
            Product select1 = ProductUtility.GetProducts(recommend[0]);
            Image2.ImageUrl = $"~/img/product/allProducts/{select1.ImageFile}.jpg";
            Label3.Text = select1.ProductName;
            Label4.Text = string.Format("{0:c0}", (select1.Price));
            HiddenField2.Value = select1.ProductID.ToString();

            Product select2 = ProductUtility.GetProducts(recommend[1]);
            Image4.ImageUrl = $"~/img/product/allProducts/{select2.ImageFile}.jpg";
            Label7.Text = select2.ProductName;
            Label8.Text = string.Format("{0:c0}", (select2.Price));
            HiddenField4.Value = select2.ProductID.ToString();

            Product select3 = ProductUtility.GetProducts(recommend[2]);
            Image6.ImageUrl = $"~/img/product/allProducts/{select3.ImageFile}.jpg";
            Label11.Text = select3.ProductName;
            Label12.Text = string.Format("{0:c0}", (select3.Price));
            HiddenField6.Value = select3.ProductID.ToString();

            Product select4 = ProductUtility.GetProducts(recommend[3]);
            Image8.ImageUrl = $"~/img/product/allProducts/{select4.ImageFile}.jpg";
            Label15.Text = select4.ProductName;
            Label16.Text = string.Format("{0:c0}", (select4.Price));
            HiddenField8.Value = select4.ProductID.ToString();
        }
    }
    //放大鏡→商品Detail
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect($"~/Product_Detail.aspx?id={HiddenField1.Value}");
    }
    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect($"~/Product_Detail.aspx?id={HiddenField2.Value}");
    }
    protected void ImageButton8_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect($"~/Product_Detail.aspx?id={HiddenField3.Value}");
    }
    protected void ImageButton11_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect($"~/Product_Detail.aspx?id={HiddenField4.Value}");
    }
    protected void ImageButton14_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect($"~/Product_Detail.aspx?id={HiddenField5.Value}");
    }
    protected void ImageButton17_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect($"~/Product_Detail.aspx?id={HiddenField6.Value}");
    }
    protected void ImageButton20_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect($"~/Product_Detail.aspx?id={HiddenField7.Value}");
    }
    protected void ImageButton23_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect($"~/Product_Detail.aspx?id={HiddenField8.Value}");
    }

    //Icon加購物車
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        int id = int.Parse(HiddenField1.Value);
        NewMethod(id);

    }
    protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
    {
        int id = int.Parse(HiddenField2.Value);
        NewMethod(id);

    }
    protected void ImageButton9_Click(object sender, ImageClickEventArgs e)
    {
        int id = int.Parse(HiddenField3.Value);
        NewMethod(id);


    }
    protected void ImageButton12_Click(object sender, ImageClickEventArgs e)
    {
        int id = int.Parse(HiddenField4.Value);
        NewMethod(id);
    }
    protected void ImageButton15_Click(object sender, ImageClickEventArgs e)
    {
        int id = int.Parse(HiddenField5.Value);
        NewMethod(id);
    }
    protected void ImageButton18_Click(object sender, ImageClickEventArgs e)
    {
        int id = int.Parse(HiddenField6.Value);
        NewMethod(id);
    }
    protected void ImageButton21_Click(object sender, ImageClickEventArgs e)
    {
        int id = int.Parse(HiddenField7.Value);
        NewMethod(id);
    }
    protected void ImageButton24_Click(object sender, ImageClickEventArgs e)
    {
        int id = int.Parse(HiddenField8.Value);
        NewMethod(id);
    }
    //共用方法
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
    //圖片超連結→商品Detail
    protected void Image1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect($"~/Product_Detail.aspx?id={HiddenField1.Value}");
    }
    protected void Image2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect($"~/Product_Detail.aspx?id={HiddenField2.Value}");
    }

    protected void Image3_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect($"~/Product_Detail.aspx?id={HiddenField3.Value}");
    }

    protected void Image4_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect($"~/Product_Detail.aspx?id={HiddenField4.Value}");
    }

    protected void Image5_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect($"~/Product_Detail.aspx?id={HiddenField5.Value}");
    }

    protected void Image6_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect($"~/Product_Detail.aspx?id={HiddenField6.Value}");
    }

    protected void Image7_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect($"~/Product_Detail.aspx?id={HiddenField7.Value}");
    }

    protected void Image8_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect($"~/Product_Detail.aspx?id={HiddenField8.Value}");
    }
}
