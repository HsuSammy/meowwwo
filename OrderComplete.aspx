<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="OrderComplete.aspx.cs" Inherits="OrderComplete" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CssPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="tab-content" id="ex1-content">
 
  <div class="tab-pane fade show active" role="tabpanel" aria-labelledby="ex1-tab-1">
<main class="d-flex align-items-center min-vh-100 py-3 py-md-0">
  <div class="container mypadding-top mypadding-end">
     
           <%-- ------start---------%>

            <div class="jumbotron" align="center">
  <h1 class="display-4">已完成訂購</h1>
                <br />
  <p class="lead">訂單編號：<asp:Label ID="Label1" runat="server" Text=""></asp:Label></p>
  <hr class="my-4">
  <p>感謝您的訂購，您的訂單正在處理中，欲了解出貨進度請至<a class="goto" href="Member_Center.aspx">[會員中心]</a>查詢進度，謝謝</p>
                <br />
                <br />
  <p class="lead">
      <button type="button" class="btn btn-outline-dark" onclick="location.href='index.aspx'">回首頁</button> &nbsp; &nbsp; &nbsp;
      <button type="button" class="btn btn-outline-dark" onclick="location.href='Product_AllProducts.aspx'">繼續購物</button>
    
  </p>
</div>

           <%----------end----------%>
        
     
    </div>
  </main>
  </div>
</div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptHolder" Runat="Server">
</asp:Content>

