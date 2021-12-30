<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Product_Cart.aspx.cs" Inherits="Product_Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CssPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <section class="shopping-cart">
        <div class="container">
            <div class="row">
                <%--左側--%>
                <div class="col-lg-8">
                    <div class="shopping__cart__table">
                        <table>
                              <thead>
                                <tr>
                                    <th class="aa">產品</th>
                                    <th>數量</th>
                                    <th>小計</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <asp:Repeater ID="Repeater1" runat="server">
                                <HeaderTemplate>
                                    
                                </HeaderTemplate>
                                <ItemTemplate>
                                     <tbody>
                                <tr>
                                     <td class="product__cart__item">
                                        <div class="product__cart__item__pic">
                                            <a href="<%#Eval("ID","Product_Detail.aspx?id={0}")%>">
                                            <img src='<%#Eval("ImageFile" ,"/img/product/allProducts/{0}.jpg")%>' alt=""></a>
                                        </div>
                                        <div class="product__cart__item__text">
                                            <asp:HiddenField ID="HiddenField2" runat="server" Value='<%# Eval("Id") %>' />
                                            <h6><%#Eval("Name") %></h6>
                                           <h5><%#Eval("Price", "{0:c0}") %></h5>
                                        </div>
                                    </td>
                                 <%--   <td class="product__cart__item">
                                        <div class="product__cart__item__pic">
                                             <div class="product__cart__item__pic set-bg"  
                                                 data-setbg='<%#Eval("ImageFile" ,"/img/product/allProducts/{0}.jpg")%>' alt="" 
                                                 onclick="location.href='<%#Eval("ID","Product_Detail.aspx?id={0}")%>';"/>
                                        </div>
                                        <div class="product__cart__item__text">
                                            <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Eval("Id") %>' />
                                            <h6><%#Eval("Name") %></h6>
                                           <h5><%#Eval("Price", "{0:c0}") %></h5>
                                        </div>
                                    </td>--%>
                                    <td class="quantity__item">
                                        <div class="quantity">
                                            <div class="pro-qty-2">
                                            <asp:TextBox ID="cart"  Text='<%# Eval("Count") %>' runat="server"></asp:TextBox>
                                            </div>
                                           
                                        </div>
                                    </td>
                                    <td class="cart__price">
                                        <asp:Label ID="totalPrice" runat="server" Text=<%#Eval("Total", "{0:c0}") %>></asp:Label></td>
                                    <td class="cart__close">
                                        <%--<asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="img/icon/delete.png" OnClick="ImageButton1_Click"/></td>--%>
                                        <td class="cart__close"><a href='CartDeleteProduct.aspx?id=<%#Eval("Id")%>'><i class="fa fa-close"></i></a></td>
                                </tr>
                            </tbody>
                                </ItemTemplate>
                                <FooterTemplate>

                                </FooterTemplate>
                            </asp:Repeater>
                        </table>
                    </div>
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-sm-6">
                            <div class="continue__btn">
                                <a href="/Product_AllProducts.aspx">繼續購物</a>
                            </div>
                        </div>
                         <div class="col-lg-6 col-md-6 col-sm-6">
                            <div class="continue__btn update__btn">
                             <asp:Button ID="Button2" cssclass="login_btn" runat="server" Text="更新購物車" OnClick="Button2_Click" />
                                <%--<a href="#"><i class="fa fa-spinner"></i> 更新購物車</a>--%>
                            </div>
                        </div>
                    </div>
                </div>
                <%--右側--%>
                <div class="col-lg-4">
                     <div class="cart__discount">
                        <h6 onclick="_discount()">使用優惠券</h6>

                        <div action="#">
                         <asp:TextBox runat="server" placeholder="輸入折扣碼" class="discount" ID="discount" ></asp:TextBox>
                         <asp:Button runat="server" cssclass="login_btn" Text="使用"  OnClick="Unnamed_Click"/><br/>
                         <asp:Label ID="Label4" runat="server" Text="" CssClass="msg"></asp:Label>
                            <%--<input type="text" placeholder="Coupon code">--%>
                           <%-- <button type="submit">Apply</button>--%>
                        </div>
                    </div>
                    <div class="cart__total">
                        <h6>Cart total</h6>
                        <ul>
                            <li>小計 <span><asp:Label ID="Label1" runat="server"  Text="NT$0"></asp:Label></span></li><asp:HiddenField runat="server" id="_subtotal"></asp:HiddenField>
                            <li>折扣 <span><asp:Label ID="Label3" runat="server"  Text="NT$0"></asp:Label></span></li><asp:HiddenField runat="server" id="_discount"></asp:HiddenField>
                        </ul>
                        <ul>
                              <li>合計 <span><asp:Label ID="Label2" runat="server" Text="NT$0" cssclass="discount_font"></asp:Label></span></li> <asp:HiddenField runat="server" id="_total"></asp:HiddenField>
                        </ul>
                        <asp:Button ID="Button1" runat="server" Text="前往結帳" cssclass="login_btn" OnClick="Button1_Click" />
                       <%-- <a href="Product_CheckOut.aspx" class="primary-btn">前往結帳</a>--%>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptHolder" Runat="Server">
    <script>
        function _discount() {
            $("#ContentPlaceHolder1_discount").val("welcome");
        }
    </script>
</asp:Content>

