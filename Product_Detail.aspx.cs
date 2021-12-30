using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Product_Detail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            if (Request.QueryString["id"] == null)
            {
                Response.Redirect("~/Product_AllProducts.aspx");
            }
            int id = int.Parse(Request.QueryString["id"]);
            HiddenField5.Value = id.ToString();
            Product products = ProductUtility.GetProducts(id);
            if (Request.QueryString["id"] != null)
            {
                productName.Text = products.ProductName;
                price.Text = string.Format("{0:c0}",(products.Price));
                /*price.Text = $"NT  ${products.Price}";*/
                detal.Text = products.ProductDetail;
                Image1.ImageUrl = $"~/img/product/detail/{products.ImageFile}-1.jpg";
                Image2.ImageUrl = $"~/img/product/detail/{products.ImageFile}-2.jpg";
                Image3.ImageUrl = $"~/img/product/detail/{products.ImageFile}-3.jpg";
                Image4.ImageUrl = $"~/img/product/detail/{products.ImageFile}-1.jpg";
                Image5.ImageUrl = $"~/img/product/detail/{products.ImageFile}-2.jpg";
                Image6.ImageUrl = $"~/img/product/detail/{products.ImageFile}-3.jpg";
            }
          



            List<int> recommend = new List<int>();
            Random rnd = new Random();
            List<Product> prodList = ProductUtility.GetProducts();
            int Length_A = prodList.Count;
            while (true)
            {
                int number = rnd.Next(1, Length_A);

                if (recommend.Contains(number))
                {
                    continue;
                }

                recommend.Add(number);

                if (recommend.Count == 4)
                {
                    break;
                }
            }
            
            //亂數產生的四個商品
            Product select1 = ProductUtility.GetImg($"product{recommend[0]}");
            Image7.ImageUrl = $"~/img/product/allProducts/{select1.ImageFile}.jpg";
            Label1.Text = select1.ProductName;
            Label2.Text = string.Format("{0:c0}", (select1.Price));
            HiddenField1.Value = select1.ProductID.ToString();

            Product select2 = ProductUtility.GetImg($"product{recommend[1]}");
            Image8.ImageUrl = $"~/img/product/allProducts/{select2.ImageFile}.jpg";
            Label3.Text = select2.ProductName;
            Label4.Text = string.Format("{0:c0}", (select2.Price));
            HiddenField2.Value = select2.ProductID.ToString();


            Product select3 = ProductUtility.GetImg($"product{recommend[2]}");
            Image9.ImageUrl = $"~/img/product/allProducts/{select3.ImageFile}.jpg";
            Label5.Text = select3.ProductName;
            Label6.Text = string.Format("{0:c0}", (select3.Price));
            HiddenField3.Value = select3.ProductID.ToString();

            Product select4 = ProductUtility.GetImg($"product{recommend[3]}");
            Image10.ImageUrl = $"~/img/product/allProducts/{select4.ImageFile}.jpg";
            Label7.Text = select4.ProductName;
            Label8.Text = string.Format("{0:c0}", (select4.Price));
            HiddenField4.Value = select4.ProductID.ToString();
        }
    }

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
    //加入購物車
    protected void Button1_Click(object sender, EventArgs e)
    {
        //int id = int.Parse(HiddenField5.Value);
        //Product product = ProductUtility.GetProducts(id);
        //Cart cart = new Cart(product.ProductID, product.ProductName, product.Price, product.ImageFile, int.Parse(count.Text));
        //List<Cart> cartList = null;
        //if (Session["ShoppingCart"] != null)
        //{
        //    cartList = Session["ShoppingCart"] as List<Cart>;
        //}
        //else
        //{
        //    cartList = new List<Cart>();
        //}
        //cartList.Add(cart);
        //Session["ShoppingCart"] = cartList;
        int id = int.Parse(HiddenField5.Value);
        Product product = ProductUtility.GetProducts(id);
        Cart cart = new Cart(product.ProductID, product.ProductName, product.Price, product.ImageFile, int.Parse(count.Text));
        List<Cart> cartList = null;
        if (Session["ShoppingCart"] != null)
        {
            cartList = Session["ShoppingCart"] as List<Cart>;

            bool isexit = false;

            foreach (Cart item in cartList)
            {
                if (id==item.Id)
                {
                    item.Count += cart.Count;
                    
                    //var aa = item;
                    //Cart text = new Cart(0, "text", 100, "text", 100);
                    //text.Count = 200;
                    //Cart cart1 = new Cart(product.ProductID, product.ProductName, product.Price, product.ImageFile, count);
                    //cartList.(cart1);
                    Session["ShoppingCart"] = cartList;
                    isexit = true;
                    break;
                }
                //else
                //{
                //    cartList.Add(cart);
                //    Session["ShoppingCart"] = cartList;
                //    break;
                //}
            }

            if (isexit==false)
            {
                cartList.Add(cart);
                Session["ShoppingCart"] = cartList;
               
            }

        }
        else
        {
            cartList = new List<Cart>();
            cartList.Add(cart);
            Session["ShoppingCart"] = cartList;
        }
        Response.Redirect("~/Product_Cart.aspx");
    }
   
    //商品→Detail
    protected void Image7_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect($"~/Product_Detail.aspx?id={HiddenField1.Value}");
    }

    protected void Image8_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect($"~/Product_Detail.aspx?id={HiddenField2.Value}");
    }

    protected void Image9_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect($"~/Product_Detail.aspx?id={HiddenField3.Value}");
    }

    protected void Image10_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect($"~/Product_Detail.aspx?id={HiddenField4.Value}");
    }

    //隨選商品Icon加入購物車
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
}



