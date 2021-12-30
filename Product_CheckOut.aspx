<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Product_CheckOut.aspx.cs" Inherits="Product_CheckOut" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CssPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    

  

    <!-- Checkout Section Begin -->
    <section class="checkout spad">
        <div class="container">
            <div class="checkout__form">
                <div action="#">
                    <div class="row mypadding-top">
                        <div class="col-lg-8 col-md-6">
                          
                            <h5 class="checkout__title ">取貨方式</h5>
                            <div class="row">
                                 <div class="col-lg-6">
                                   <asp:RadioButtonList
                                    ID="pickUp" runat="server"  RepeatLayout="Flow"    >
                                      <asp:ListItem Selected="True" Text="&nbsp&nbsp宅配" Value="1"></asp:ListItem>
                                      <asp:ListItem Text="&nbsp&nbsp超商取貨" Value="2"></asp:ListItem>
                                   <asp:ListItem Text="&nbsp&nbsp門市自取" Value="3"></asp:ListItem>
                                     </asp:RadioButtonList>
                                </div> </div >
                            <br /><br />
                            <h5 class="checkout__title">購買人資料</h5>
                                <div class="row">
                                       <div class="col-lg-3 col-md-3">
                                  <div class="checkout__input" >
                                <p>選擇常用聯絡人</p>
                                      
                                <%-- <select name="ddlNationality" id="ddlNationality">
                                      <option value="">未選擇 </option>
                                   <asp:Repeater ID="Repeater2" runat="server">
                                          <HeaderTemplate>
                                          </HeaderTemplate>
                                          <ItemTemplate>
                                               <option value=<%#Eval("Name") %> ssclass="dropdown"></option>
                                          </ItemTemplate>
                                          <FooterTemplate>

                                          </FooterTemplate>
                                               </asp:Repeater>
                                             </select>--%>

                               <%--<asp:HiddenField ID="HiddenField1" runat="server" />--%>
                               <asp:DropDownList ID="ddlModel" runat="server"  
                                 CssClass="addressList"  AutoPostBack="True">
                                </asp:DropDownList>
<%--                                <asp:TextBox ID="txtModel" runat="server" Style="z-index: 1px; position: absolute " CssClass="col-9"  ></asp:TextBox>--%>
                               </div>
                                           
                             </div>
                                       <div class="col-lg-9 col-md-9">
                            <div class="checkout__input col-12" >
                                <p>收件人姓名<span>*</span></p>
                                <asp:TextBox ID="name" runat="server"></asp:TextBox>
                                <%-- <input id="name"  type="text"  runat="server" />--%>
                            </div>
                            <div class="checkout__input col-12">
                                <p>手機號碼<span>*</span></p>
                                <asp:TextBox ID="phone" runat="server"></asp:TextBox>
                                <%--<input id="phone" type="text" placeholder="Street Address" class="checkout__input__add">--%>
                            </div>
                            <div class="checkout__input col-12">
                                <p>電子郵件<span>*</span></p>
                                <asp:TextBox ID="email" runat="server"></asp:TextBox>
                              <%--  <input id="email" type="text">--%>
                            </div>
                            <div class="checkout__input col-12">
                                <p>地址<span>*</span></p>
                                <asp:TextBox ID="address" runat="server"></asp:TextBox>
                                <%--<input type="text" >  --%>
                                  </div>
                            </div></div>
                           <br /><br />
                             <h5 class="checkout__title">付款方式</h5>
                            <div class="row">
                                 <div class="col-lg-6">
                                   <asp:RadioButtonList
                                    ID="Payment" runat="server"  RepeatLayout="Flow" >
                                      <asp:ListItem Selected="True" Text="&nbsp&nbsp刷卡" Value="1"></asp:ListItem>
                                      <asp:ListItem Text="&nbsp&nbsp匯款" Value="2"></asp:ListItem>
                                   <asp:ListItem Text="&nbsp&nbsp貨到付款" Value="3"></asp:ListItem>
                                     </asp:RadioButtonList>
                                </div> </div >

                        </div>
                
<%--右側欄位--%>
                        <div class="col-lg-4 col-md-6">
                            <div class="checkout__order">
                                <h4 class="order__title">Your order</h4>
                                <div class="checkout__order__products">商品 <span>單品合計</span></div>
                              
                                <ul class="checkout__total__products">
                                      <asp:Repeater ID="Repeater1" runat="server">
                                    <HeaderTemplate>

                                    </HeaderTemplate>
                                    <ItemTemplate>
                                          <li><%#Eval("Name") %><span><%#Eval("total", "{0:c0}") %></span></li>
                                    </ItemTemplate>
                                    <FooterTemplate>

                                    </FooterTemplate>
                                </asp:Repeater>
                                </ul>
                                  <ul class="checkout__total__all"> 
                                  <li class="checkout__total__products">折扣 <span><asp:Label ID="Label1" runat="server" Text="-NT$0"></asp:Label></span></li>
                                  <li>總金額 <span><asp:Label ID="_total" runat="server" Text="NT$0" CssClass="discount_font"></asp:Label></span></li>
                                  </ul>
                               <%-- <ul class="checkout__total__all"> 
                                    <li>總金額 <span><asp:Label ID="_total" runat="server" Text="NT$0"></asp:Label></span></li>
                                </ul>--%>
                              
                                <div class="checkout__input__checkbox">
                                  
                                </div>
                                <asp:Button ID="Button1" runat="server" Text="購買" cssclass="site-btn" OnClick="Button1_Click"/>
<%--                                <asp:Button ID="demo1" runat="server" Text="Button" OnClientClick="return false"/>--%>
                                
                                <%--<button type="submit" class="site-btn"></button>--%>
                            </div>
                        </div>
                      </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Checkout Section End -->
   
    <script>
        document.getElementById("ContentPlaceHolder1_demo1").addEventListener("click", function () {
            swal("購買成功!", "祝您有個美好的一天", "success");
        });
    </script>
<%--<script type="text/javascript">
        function getModelTo(e) {
            $("#ContentPlaceHolder1_txtModel").val($("#ContentPlaceHolder1_ddlModel").find("option:selected").text());
            $("#ContentPlaceHolder1_txtModel").select();

    }
   <%-- function checkSession()
   	    {
        var id = <%=Session["UserInfo"] %> 
    };--%>
<%--</script>--%>
  <%--  <script>
    $(document).ready(function () {
        var name = GetParameterValues('id');
        var id = GetParameterValues('name');
        alert("Hello " + name + " your ID is " + id);
        function GetParameterValues(param) {
            //var url = window.location.href.slice(window.location.href.indexOf('?') + 1).split('&');
            var url = window.location.href.slice(window.location.host.href.indexOf('?') + 1).split('&');
            for (var i = 0; i < url.length; i++) {
                var urlparam = url[i].split('=');
                if (urlparam[0] == param) {
                    return urlparam[1];
                }
            }
        }
    });
  
    function aa(id) {

        $.ajax({

            type: 'POST',
            url: "WebService.asmx/GetMember",
            async: false,
            contentType: "application/json;utd-8",
            dataType: "json",
            data: JSON.stringify({ "id": id }),
            success: function (result) {
                $("#ContentPlaceHolder1_name").val(result.d.UserName);
                $("#ContentPlaceHolder1_phone").val(result.d.Phone);
                $("#ContentPlaceHolder1_email").val(result.d.Email);
                $("#ContentPlaceHolder1_address").val(result.d.Address);
            }


        });
</script>--%>

    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptHolder" Runat="Server">
    
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <link href="css/bootstrap.min.css" rel="stylesheet" />

</asp:Content>

