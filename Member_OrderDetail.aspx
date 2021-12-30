<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Member_OrderDetail.aspx.cs" Inherits="Member_OrderDetail_aspx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CssPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container mypadding-top mypadding-end">
     
        <div class="content-body">
            <section class="card">
                <div id="invoice-template" class="card-body">
                    <!-- Invoice Company Details -->
                    <div id="invoice-company-details" class="row">
                        <div class="col-md-6 col-sm-12 text-left text-md-left">
                            <ul class="px-0 list-unstyled">
                                <li class="text-bold-700">收件人姓名：<asp:Label ID="name" runat="server" Text="Label"></asp:Label></li>
                                <li>收件人電話：<asp:Label ID="phone" runat="server" Text="Label"></asp:Label></li>
                                <li>收件人地址：<asp:Label ID="address" runat="server" Text="Label"></asp:Label></li>
                                <li>電子郵件：<asp:Label ID="email" runat="server" Text="Label"></asp:Label></li>
                            </ul>

                        </div>
                        <div class="col-md-6 col-sm-12 text-center text-md-right">
                            <h2 class="menu-title">訂單編號</h2>
                            <h4><asp:Label ID="orderID" runat="server" Text="9048000{id}"></asp:Label></h4>
                            <div class="unstyled">下單日期：<asp:Label ID="orderDate" runat="server" Text=""></asp:Label></div>
                            <div class="unstyled">出貨日期：<asp:Label ID="shippingDate" runat="server" Text="尚未出貨"></asp:Label></div>
                            <a href="./Member_Center.aspx?type=history" class="btn btn-secondary btn-sm" role="button">返回查詢頁</a>
                            <%--下單日期--%>
                        </div>
                    </div>
                    <!--/ Invoice Company Details -->
                    <div id="invoice-items-details" class="pt-2">
                        <div class="row">
                            <div class="table-responsive col-sm-12">
                                <table class="table table-bordered">
                                    <thead>
                                        <tr>
                                            <th>商品圖片</th>
                                            <th class="menu-title">商品名稱</th>
                                            <th class="text-right menu-title">數量</th>
                                            <th class="text-right menu-title">單價</th>
                                            <th class="text-right menu-title">小計</th>
                                        </tr>
                                    </thead>
                                    <asp:Repeater ID="Repeater1" runat="server">
                                        <HeaderTemplate>
                                             <tbody>
                                        </HeaderTemplate>
                                        <ItemTemplate>
                                             <tr>
                                            <th scope="row"> <div class="orderDetail_img set-bg"  data-setbg='<%#Eval("ImageFile" ,"/img/product/allProducts/{0}.jpg")%>' alt="" onclick="location.href='<%#Eval("ProductID","Product_Detail.aspx?id={0}")%>';"/></th>
                                            <td>
                                                <p><%#Eval("productName") %></p>
                                               <%-- <p class="text-muted">Vestibulum euismod est eu elit convallis.</p>--%>
                                            </td>
                                            <td class="text-right"><%#Eval("Count") %></td>
                                            <td class="text-right"><%#Eval("Price", "{0:c0}") %></td>
                                            <td class="text-right"><%# String.Format("{0:c0}",Convert.ToInt32(Eval("Count")) * Convert.ToInt32(Eval("Price")))  %></td>
                                        </tr></td>
                                        <%--<tr>
                                            <th scope="row">2</th>
                                            <td>
                                                <p>Android App Development</p>
                                                <p class="text-muted">Pellentesque maximus feugiat lorem at cursus.</p>
                                            </td>
                                            <td class="text-right">$ 14.00/hr</td>
                                            <td class="text-right">300</td>
                                            <td class="text-right">$ 4200.00</td>
                                        </tr>--%>
                                        </ItemTemplate>
                                        <FooterTemplate>
                                             </tbody>
                                        </FooterTemplate>
                                    </asp:Repeater>
                                </table>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-7 col-sm-12 text-center text-md-left">
                                <p class="lead menu-title">其他說明</p>
                                <div class="row">
                                    <div class="col-md-8">
                                        <table class="table table-borderless table-sm">
                                            <tbody>
                                                 <tr>
                                                    <td>優惠券名稱：</td>
                                                    <td class="text-right">
                                                        <asp:Label ID="discountName" runat="server" Text="Label"></asp:Label></td>
                                                </tr>
                                                <tr>
                                                    <td>取貨方式：</td>
                                                    <td class="text-right">
                                                        <asp:Label ID="pickup" runat="server" Text="Label"></asp:Label></td>
                                                </tr>
                                                <tr>
                                                    <td>付款方式：</td>
                                                    <td class="text-right">
                                                        <asp:Label ID="payment" runat="server" Text=""></asp:Label>
                                                        <asp:Label ID="num" runat="server" Text=""></asp:Label>
                                                    </td>
                                                    <td> 
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>

                            </div>

                            <div class="col-md-5 col-sm-12">
                                <p class="lead">總金額</p>
                                <div class="table-responsive">
                                    <table class="table">
                                        <tbody>
                                            <tr>
                                                <td>商品小計:</td>
                                                <td class="text-right">
                                                    <asp:Label ID="subtotal" runat="server" Text="Label"></asp:Label></td>
                                            </tr>
                                            <tr>
                                                <td>商品折扣:</td>
                                                <td class="pink text-right"><asp:Label ID="discount" runat="server" Text="-NT$0"></asp:Label></td>
                                            </tr>
                                            <tr class="bg-grey bg-lighten-4">
                                                <td class="text-bold-800">總計:</td>
                                                <td class="text-bold-800 text-right">
                                                    <asp:Label ID="total" runat="server" Text="Label"></asp:Label></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </div>
</asp:Content><asp:Content ID="Content3" ContentPlaceHolderID="ScriptHolder" Runat="Server">
</asp:Content>

