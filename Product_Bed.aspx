<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Product_Bed.aspx.cs" Inherits="Product_shop" %>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="CssPlaceHolder" runat="Server">
</asp:Content>--%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <section class="product_list">
        <div class="container">
            <div>
                <div class="blog__item__pic set-bg" data-setbg="img/banner/banner1-1.png"></div>

            </div>
            <div class="row product_list_body">
                <div class="col-lg-3 ">
                    <div class="shop__sidebar ">
                        <div class="shop__sidebar__search">
                            <div action="#">
                                <asp:TextBox ID="searchTxt" runat="server" placeholder="Search..." ></asp:TextBox>&nbsp 
                               
                               <asp:ImageButton ID="ImageButton1" ImageUrl="img/icon/search.png" runat="server" CssClass="btn_search" OnClick="ImageButton1_Click" />

                            </div>
                        </div>
                        <div class="shop__sidebar__accordion ">
                            <div class="accordion" id="accordionExample">
                                <div class="card">
                                    <div class="card-heading">
                                        <a data-toggle="collapse" data-target="#collapseOne">產品分類</a>
                                    </div>
                                    <div id="collapseOne" class="collapse show" data-parent="#accordionExample">
                                        <div class="card-body">
                                            <div class="shop__sidebar__categories">
                                                <ul class="nice-scroll">
                                                    <li><a href="./Product_AllProducts.aspx">全部商品&nbsp;(<asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>)</a></li>
                                                    <li><a href="./Product_Bed.aspx">喵嗚的床&nbsp;(<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>)</a></li>
                                                    <li><a href="./Product_Play.aspx">舒壓小物&nbsp;(<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>)</a></li>
                                                    <li><a href="./Product_GoOut.aspx">外出用品&nbsp;(<asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>)</a></li>
                                               
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="card">
                                    <div class="card-heading">
                                        <a data-toggle="collapse" data-target="#collapseFive">顏色</a>
                                    </div>
                                    <div id="collapseFive" class="collapse show" data-parent="#accordionExample">
                                   
                                        <div class="card-body">
                                            <div class="shop__sidebar__color">
                                                 <asp:ImageButton ID="ImageButton2" ImageUrl="img/Button/white.jpg" runat="server" CssClass="mybtn"  OnClick="ImageButton2_Click"/>
                                                 <asp:ImageButton ID="ImageButton3" ImageUrl="img/Button/yellow.jpg" runat="server" CssClass="mybtn" OnClick="ImageButton3_Click" />
                                                  <asp:ImageButton ID="ImageButton4" ImageUrl="img/Button/red.jpg" runat="server" CssClass="mybtn" OnClick="ImageButton4_Click" />
                                                 <asp:ImageButton ID="ImageButton5" ImageUrl="img/Button/green.jpg" runat="server" CssClass="mybtn" OnClick="ImageButton5_Click" />

                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-heading">
                                        <a data-toggle="collapse" data-target="#collapseSix">標籤</a>
                                    </div>
                                    <div id="collapseSix" class="collapse show" data-parent="#accordionExample">
                                        <div class="card-body">
                                            <div class="shop__sidebar__tags">
                                       <%--           <a href="Product_Allproducts.aspx?tags=麻繩">麻繩</a>
                                                <a href="Product_Allproducts.aspx?tags=背包">背包</a>
                                                <a href="Product_Allproducts.aspx?tags=貓抓板">貓抓板</a>--%>

                                                <asp:Button ID="Button1" runat="server" Text="食物造型" cssclass="tagBtn" OnClick="Button1_Click"/>
                                                 <asp:Button ID="Button2" runat="server" Text="背包" cssclass="tagBtn"  OnClick="Button2_Click"/>
                                                 <asp:Button ID="Button3" runat="server" Text="動物" cssclass="tagBtn" OnClick="Button3_Click"/>
                                             <%--    <asp:Button ID="Button4" runat="server" Text="床" cssclass="tagBtn"/onclick="Button4_Click">
                                                 <asp:Button ID="Button5" runat="server" Text="背包" cssclass="tagBtn"onclick="Button5_Click"/>
                                                 <asp:Button ID="Button6" runat="server" Text="貓抓板" cssclass="tagBtn"/>
                                                <asp:Button ID="Button7" runat="server" Text="水果" cssclass="tagBtn"/>
                                                <asp:Button ID="Button8" runat="server" Text="小玩具" cssclass="tagBtn"/>--%>
                                               
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-9">
                    <div class="shop__product__option">
                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="shop__product__option__left">
                                    <p>Showing 1–12 of 126 results</p>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="shop__product__option__right">
                                    <p>Sort by Price:</p>
                                    <select>
                                        <option value="">Low To High</option>
                                        <option value="">$0 - $55</option>
                                        <option value="">$55 - $100</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <asp:Repeater ID="Repeater1" runat="server">
                            <HeaderTemplate>
                                <div class="row">
                            </HeaderTemplate>
                            <ItemTemplate>
                                <div >
                                    <div class="product__item">
                                    <div class="product__item__pic set-bg"  data-setbg='<%#Eval("ImageFile" ,"/img/product/allProducts/{0}.jpg")%>' alt="" onclick="location.href='<%#Eval("ProductID","Product_Detail.aspx?id={0}")%>';"/>
                                            <ul class="product__hover">
                                           <li><a href="<%#Eval("ProductID","Product_Detail.aspx?id={0}")%>"><img src="img/icon/heart.png" alt=""></a></li>
                                           <li><a href="<%#Eval("ProductID","Product_Detail.aspx?id={0}")%>"><img src="img/icon/search.png" alt=""></a></li>
<%--                                    <li><a href="<%#Eval("ProductID","shopping-cart.aspx?id={0}")%>"><img src="img/icon/cart.png" alt=""></a></li>--%>
                                           <li id="addToCart"><img src="img/icon/cart.png" alt=""></li>

                                        </ul>
                                    </div>

                                    <div class="product__item__text ">
                                        <h6 ><%#Eval("productName") %></h6>
                                        <%--<a href="#" class="add-cart">+ Add To Cart</a>--%>
                                        
                                        <h5 ><%#Eval("Price", " ${0:c0}") %></h5>
                                       
                                      <%--  <div class="product__color__select">
                                             
                                            <label for="pc-4">
                                               <i class="fa fa-user-circle" >
                                            </label>--%>
                                          <%--  <label class="active black" for="pc-5">
                                                <input type="radio" id="pc-5">
                                            </label>
                                            <label class="grey" for="pc-6">
                                                <input type="radio" id="pc-6">
                                            </label>--%>
                                        <%--</div>--%>
                                    </div>
                                </div>
                                </div>
                            </ItemTemplate>
                            <FooterTemplate>
                                </div>
                            </FooterTemplate>
                        </asp:Repeater>

                    </div>
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="product__pagination">
                                <a class="active" href="#">1</a>
                                <a href="#">2</a>
                                <a href="#">3</a>
                                <span>...</span>
                                <a href="#">21</a>
                            </div>
                        </div>
                    </div>
                </div>
         
    </section>
    <script>

    
    </script>
</asp:Content>
<%--<asp:Content ID="Content3" ContentPlaceHolderID="ScriptHolder" runat="Server">
</asp:Content>--%>

