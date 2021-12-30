<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        List<Cart> cartList = Session["ShoppingCart"] as List<Cart>;
        int id = int.Parse(Request.QueryString["id"]);
        var itemToRemove = cartList.Single(r => r.Id == id);
        cartList.Remove(itemToRemove);
        Response.Redirect("Product_Cart.aspx");
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
    </form>
</body>
</html>
