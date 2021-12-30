<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Member_Center.aspx.cs" Inherits="_Default" %>
<asp:Content ID="Content3" ContentPlaceHolderID="CssPlaceHolder" runat="Server">
 <%-- <link href="Scripts/jsgrid.min.css" rel="stylesheet" />
  <link href="Scripts/jsgrid-theme.min.css" rel="stylesheet" />--%>
 <%--<link href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" rel="stylesheet"/>--%>

</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- Tabs content -->
    <div class="tab-content" id="ex1-content">

        <div class="tab-pane fade show active" role="tabpanel" aria-labelledby="ex1-tab-1">
            <main class="d-flex align-items-center min-vh-100 py-3 py-md-0">
                <div class="container ">
                    <div class="row mypadding-top mypadding-end">
                        <div class="tab-content  col-3 centerMargin">
                            <%--頁籤--%>
                            <ul class="nav justify-content-end " id="ex1" role="tablist">
                                <li class="nav-item member_center " role="presentation">
                                    <a class="center-nav-link active " href="#item1" data-toggle="tab"
                                        role="tab" aria-controls="ex1-tabs-1" aria-selected="true">修改會員資訊</a>
                                </li>
                                <li class="nav-item member_center" role="presentation">
                                    <a class="center-nav-link" href="#item2" data-toggle="tab"
                                        role="tab" aria-controls="ex1-tabs-2" aria-selected="false">修改密碼</a>
                                </li>

                                <li class="nav-item member_center" role="presentation">
                                    <a class="center-nav-link" href="#item3" data-toggle="tab"
                                        role="tab" aria-controls="ex1-tabs-3" aria-selected="false">常用聯絡清單</a>
                                </li>
                                <li class="nav-item member_center" role="presentation">
                                    <a class="center-nav-link" href="#item5" data-toggle="tab"
                                        role="tab" aria-controls="ex1-tabs-5" aria-selected="false">訂單進度查詢</a>
                                </li>
                                <li class="nav-item member_center" role="presentation">
                                    <a class="center-nav-link" href="#item6" data-toggle="tab"
                                        role="tab" aria-controls="ex1-tabs-6" aria-selected="false">歷史訂單</a>
                                </li>
                                <li class="nav-item member_center" role="presentation">
                                    <a class="center-nav-link" href="#item7" data-toggle="tab"
                                        role="tab" aria-controls="ex1-tabs-7" aria-selected="false">我要發問</a>
                                </li>
                                  <li class="nav-item member_center" role="presentation">
                                    <a class="center-nav-link" href="#item4" data-toggle="tab"
                                        role="tab" aria-controls="ex1-tabs-4" aria-selected="false">發問記錄</a>
                                </li>
                            </ul>
                   
                        </div>
                        <div class="tab-content  col-9">
                            
                            <%--詳細資料--%>
                            <%--<div id="item1" class="tab-pane active fade show">
                                <div>
                                    <div>
                                        <div>
                                            <div class="card-body">

                                                <div action="#!">
                                                    <div class="member_center_card ">
                                                        <h4>會員詳細資料</h4>
                                                        <hr />
                                                        <br />
                                                        <div class="row">
                                                            <div class="col-4">
                                                        <div>
                                                            <div class="center__input">
                                                                <p>姓名  UserName&nbsp; &nbsp;  &nbsp;&nbsp; &nbsp;  &nbsp;
                                                                </p>
                                                            </div>
                                                        </div>
                                                        <br />
                                                        <div>
                                                            <div class="center__input">
                                                                <p>電子郵件  E-Mail&nbsp; &nbsp;  &nbsp;&nbsp; &nbsp;  &nbsp;
                                                            </div>
                                                        </div>
                                                         <br />
                                                        <div>
                                                            <div class="center__input">
                                                                <p>姓別  Gender&nbsp; &nbsp;  &nbsp;&nbsp; &nbsp;  &nbsp;
                                                            </div>
                                                        </div>
                                                         <br />
                                                        <div>
                                                            <div class="center__input">
                                                                <p>生日  Birthday&nbsp; &nbsp;  &nbsp;&nbsp; &nbsp;  &nbsp;
                                                            </div>
                                                        </div>
                                                         <br />
                                                        <div>
                                                            <div class="center__input">
                                                                <p>電話  Phone&nbsp; &nbsp;  &nbsp;&nbsp; &nbsp;  &nbsp;
                                                            </div>
                                                        </div>
                                                         <br />
                                                        <div>
                                                            <div class="center__input">
                                                                <p>地址  Address&nbsp; &nbsp;  &nbsp;&nbsp; &nbsp;  &nbsp;
                                                            </div>
                                                        </div>
                                                         <br />
                                                        <div>
                                                        <div class="center__input">
                                                                <p>是否接收最新消息  EDM&nbsp; &nbsp;  &nbsp;&nbsp; &nbsp;  &nbsp;
                                                            </div>
                                                        </div>
                                                             </div>
                                                            <div class="col-8">
                                                        <div>
                                                            <div class="center__input">
                                                                <p>
                                                                    <asp:Label ID="Label13" runat="server" Text="123" CssClass="member_center_edit"></asp:Label>
                                                                </p>
                                                            </div>
                                                        </div>
                                                        <br />
                                                        <div>
                                                            <div class="center__input">
                                                                <p>
                                                                    <asp:Label ID="Label14" runat="server" Text="123" CssClass="member_center_edit"></asp:Label>
                                                                </p>
                                                            </div>
                                                        </div>
                                                        <br />
                                                        <div>
                                                            <div class="center__input">
                                                                <p>
                                                                    <asp:Label ID="Label15" runat="server" Text="123" CssClass="member_center_edit"></asp:Label>
                                                                </p>
                                                            </div>
                                                        </div>
                                                        <br />
                                                        <div>
                                                            <div class="center__input">
                                                                <p>
                                                                    <asp:Label ID="Label16" runat="server" Text="123" CssClass="member_center_edit"></asp:Label>
                                                                </p>
                                                            </div>
                                                        </div>
                                                        <br />
                                                        <div>
                                                            <div class="center__input">
                                                                <p>
                                                                    <asp:Label ID="Label17" runat="server" Text="123" CssClass="member_center_edit"></asp:Label>
                                                                </p>
                                                            </div>
                                                        </div>
                                                        <br />
                                                        <div>
                                                            <div class="center__input">
                                                                <p>
                                                                    <asp:Label ID="Label18" runat="server" Text="123" CssClass="member_center_edit"></asp:Label>
                                                                </p>
                                                            </div>
                                                        </div>
                                                        <br />
                                                       
                                                      
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>--%>
                            <%--end詳細資料--%>
                            <%--修改會員資料--%>
                            <div id="item1" class="tab-pane active fade show">
                                <div>
                                    <div>
                                        <div>
                                            <div class="card-body">

                                                <div action="#!">
                                                    <div class="member_center_card ">
                                                        <h4>修改會員資訊</h4>
                                                        <hr />
                                                        <br />
                                                        <div>
                                                            <div class="center__input">
                                                                <p>姓名  UserName&nbsp; &nbsp;  &nbsp;&nbsp; &nbsp;  &nbsp;
                                                                    <asp:Label ID="name" runat="server" Text="" CssClass="member_center_edit"></asp:Label>
                                                                </p>
                                                            </div>
                                                        </div>
                                                        <br />
                                                        <div>
                                                            <div class="center__input">
                                                                <p>電子郵件  E-Mail&nbsp; &nbsp;  &nbsp;&nbsp; &nbsp;  &nbsp;
                                                                    <asp:Label ID="email" runat="server" Text="" CssClass="member_center_edit"></asp:Label></p>
                                                            </div>
                                                        </div>
                                                        <br />
                                                        <div>
                                                            <div class="mem__input_radioBtn">
                                                                <p>
                                                                    姓別  Gender<span>&nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span>
                                                                    <asp:RadioButtonList
                                                                        ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                                                                        <asp:ListItem Selected="True" Text="男性" Value="1"></asp:ListItem>
                                                                        <asp:ListItem Text="女性" Value="2"></asp:ListItem>
                                                                    </asp:RadioButtonList>
                                                                </p>
                                                            </div>
                                                        </div>
                                                        <br />
                                                        <%--     生日--%>
                                                        <div>
                                                            <div class="datetest mem__input birthday">
                                                                <p class="datag ">
                                                                    生日
                                                                <asp:TextBox ID="birth" runat="server" placeholder="2000/01/01"></asp:TextBox>
                                                                </p>
                                                            </div>
                                                        </div>
                                                        <br />
                                                        <div>
                                                            <div class="mem__input">
                                                                <p>電話  Phone</p>
                                                                <asp:TextBox runat="server" ID="phone" pattern='^\+?\d{10,13}'></asp:TextBox>
                                                            </div>
                                                        </div>
                                                        <br />
                                                        <div>
                                                            <div class="mem__input">
                                                                <p>地址  Address</p>
                                                                <asp:TextBox runat="server" ID="address"></asp:TextBox>
                                                            </div>
                                                        </div>
                                                        <br />
                                                        <div>
                                                            <div class="mem__input_radioBtn">
                                                                <p>
                                                                    是否接收最新消息  EDM<span>&nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span>
                                                                    <asp:RadioButtonList
                                                                        ID="RadioButtonList2" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                                                                        <asp:ListItem Selected="True" Text="是" Value="1"></asp:ListItem>
                                                                        <asp:ListItem Text="否" Value="2"></asp:ListItem>
                                                                    </asp:RadioButtonList>
                                                                </p>
                                                            </div>
                                                      
                                                        </div>
                                                        <br />
                                                        <div>
                                                            <div class="loginBtn">
                                                                <asp:HiddenField ID="HiddenField1" runat="server" />
                                                                <asp:Button ID="Button2"  CssClass="btn btn-dark" runat="server" Text="存檔  Save" OnClientClick="return false"  />
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <%--END修改會員資料--%>
                            <%--更改密碼--%>
                            <div id="item2" class="tab-pane fade show">
                                <div>
                                    <div>
                                        <div>
                                            <div class="card-body">

                                                <div action="#!">
                                                    <div class="card-body-msg">
                                                        <h4>修改密碼</h4>
                                                        <hr />
                                                        <div>
                                                            <div class="center__input">
                                                                <p>電子郵件  E-Mail&nbsp; &nbsp;  &nbsp;&nbsp; &nbsp;  &nbsp;
                                                                    <asp:Label ID="Label1" runat="server" Text="" CssClass="member_center_edit msg"></asp:Label></p>
                                                            </div>
                                                        </div>
                                                        <br />
                                                        <div>
                                                            <div class="register__input">
                                                                <div class="flex-sb-m w-full p-b-10">
                                                                    <div class="contact100-form-checkbox">
                                                                        <p>原設定密碼 Original Password</p>
                                                                    </div>
                                                                    <div class="forget_password msg" ">
                                                                        <asp:Label ID="label2" style="text-align:right" runat="server"  Text=" " ></asp:Label>

                                                                    </div>
                                                                </div>
                                                                <asp:TextBox runat="server" ID="LoginPassword" TextMode="password"></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="請輸入密碼" ControlToValidate="LoginPassword" ValidationGroup="1"></asp:RequiredFieldValidator>
                                                            </div>
                                                        </div>
                                                        <div>
                                                            <div class="register__input">
                                                                <div class="flex-sb-m w-full p-b-10">
                                                                    <div class="contact100-form-checkbox">
                                                                        <p>欲更新密碼  Update Password</p>
                                                                    </div>
                                                                    <div class="forget_password msg" "><asp:Label ID="label4" style="text-align:right" runat="server"  Text="" ></asp:Label></div>
                                                                </div>
                                                                <asp:TextBox runat="server" ID="NewPassword" TextMode="password"></asp:TextBox>
                                                            </div>

                                                        </div>
                                                        <br />
                                                        <div>
                                                            <div class="register__input">
                                                                <div class="flex-sb-m w-full p-b-10">
                                                                    <div class="contact100-form-checkbox">
                                                                        <p>再次確認密碼 Confirm Password</p>
                                                                    </div>
                                                                    <div class="forget_password msg" "><asp:Label ID="label5" style="text-align:right" runat="server"  ></asp:Label></div>
                                                                </div>
                                                                <asp:TextBox runat="server" ID="c_NewPassword" TextMode="password"></asp:TextBox>
                                                        </div>
                                                        </div>
                                                        <br />
                                                        <div>
                                                            <div class="loginBtn">
                                                                <asp:HiddenField ID="HiddenField2" runat="server" />
                                                                <asp:Button ID="Button1" CssClass="btn btn-dark" runat="server" Text="更新  Save" OnClientClick="return false"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <%--更改密碼--%>
                            <%--常用聯絡清單--%>
                            <div id="item3" class="tab-pane fade show">
                                <div>
                                    <div>
                                        <div>
                                            <div class="card-body">

                                                <div action="#!">
                                                    <div class="card-body-msg">
                                                        <h4>常用聯絡清單</h4>
                                                     
                                                 <div >
            <div >
                <div class="table-wrapper">
                    <div class="table-title">
                        <div class="row">
                       
                            <div class="col-12 offset-8">
                                <%--<asp:Button ID="Button5" runat="server" CssClass="btn btn-warning material-icons" Text="新增常用聯絡人" />--%>
                                <div class="center_btn">
                                <button type="button" class="btn btn-dark " href="#creatModal" data-toggle="modal" onclick='aa(<%#Eval("ID") %>)'>新增常用聯絡人</button>
                            </div>
                                </div>
                        </div>
                    </div>
                                            <input id="Hidden1" type="hidden" value="<%#Eval("ID") %>"/>

                    <table class="table table-striped table-hover">
                        <asp:Repeater ID="Repeater1" runat="server">
                            <HeaderTemplate>
                                 <thead>
                                    <tr>
                                        <th>姓名</th>
                                        <th>手機</th>
                                        <th>E-mail</th>
                                        <th>地址</th>
                                        <th>編輯</th>
                                    </tr>
                                </thead>
                                 <tbody>
                            </HeaderTemplate>
                                  <ItemTemplate>
                               
                                    <tr>
                                        <td><%# Eval("Name") %></td>
                                        <td><%# Eval("Phone") %></td>
                                        <td><%# Eval("Email") %></td>
                                        <td><%# Eval("Address") %></td>
                                        <td>
                                            <a href="#editModal" class="edit fa fa-pencil" data-toggle="modal" onclick='aa(<%#Eval("ID") %>)'/>&nbsp; &nbsp; &nbsp; 
                                            <a href="#deleteModal" class="delete fa fa-trash" data-toggle="modal" onclick='aa(<%#Eval("ID") %>)'/>
                                        </td>
                                    </tr>
                              
                            </ItemTemplate>
                            <FooterTemplate>
                                  </tbody>
                            </FooterTemplate>
                        </asp:Repeater>
                    </table>
                </div>
            </div>
        </div>
 
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <%--常用聯絡清單--%>
                            <%--訂單進度查詢--%>
                            <div id="item5" class="tab-pane fade show">
                                <div>
                                    <div>
                                        <div>
                                            <div class="card-body">

                                                <div action="#!" >
                                                     <div class="card-body-msg">
                                                        <h4><asp:Label runat="server" Text="" ID="showMsg"></asp:Label></h4>
                                                        <hr />
                                                
                                                    <%--<div class="card-show-msg" id="orderDetail" runat="Server">--%>
                                               <div  id="orderDetail" runat="Server">
                                                         <div class="card-body row ">
                                                             <asp:HiddenField ID="HiddenField3" runat="server" />
                    <div class="col"> <strong>訂單編號：</strong> <br/> <asp:Label ID="Label3" runat="server" Text=""></asp:Label></div>
                    <div class="col"> <strong>收件人： <asp:Label ID="Label6" runat="server" Text=""></asp:Label></strong> <br>
                                                            <i class="fa fa-phone">&nbsp; 
                                                             </i><asp:Label ID="Label7" runat="server" Text=""></asp:Label></div>
                    <div class="col"> <strong>收件地址：</strong> <br/> <asp:Label ID="Label8" runat="server" Text=""></asp:Label> </div>
                    <div class="col"> <strong>出貨時間：</strong> <br/> <asp:Label ID="Label9" runat="server" Text=""></asp:Label> </div>
                </div>
                                                        <hr />
                                                        <br />
                                                         <div class="track">
                <div class="step active" > <span class="icon"> <i class="fa fa-check"></i> </span> <span class="text">訂單成立</span> </div>
                <div class="step" ID="orderCheck1"  runat="server"> <span class="icon"> <i class="fa fa-user"></i> </span> <span class="text"> 訂單處理中</span> </div>
                <div class="step" ID="orderCheck2" runat="server"> <span class="icon"> <i class="fa fa-truck"></i> </span> <span class="text"> 已出貨 </span> </div>
                <div class="step" ID="orderCheck3" runat="server"> <span class="icon"> <i class="fa fa-gift"></i> </span> <span class="text">完成訂單</span> </div>
            </div>

                                                    </div>
                                                </div>
                                                   </div>
                                                    </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <%--訂單進度查詢--%>
                            <%--歷史訂單查詢--%>
                            <div id="item6" class="tab-pane fade show">
                                                            <div>
                                                                <div>
                                                                    <div>
                                                                        <div class="card-body">

                                                                            <div action="#!">
                                                                                <div class="card-body-msg">
                                                                                     <h4>歷史訂單查詢</h4>
                                                                                   <br />
                                                                             <div >
                                                                              <div >
                                                                                  
                                                                                  <table class="table table-striped table-hover">
                                    <thead>
                                        <tr>
                                            <th>
                                                <div>訂單編號</div>
                                            </th>
                                            <th>
                                                <div>購買日期</div>
                                            </th>
                                            <th>
                                                <div>出貨狀態</div>
                                            </th>
                                             <th>
                                                <div>出貨日期</div>
                                            </th>
                                        </tr>
                                    </thead>
                                    <tbody id="mytbody">
                                        <tr v-for="item in myList">
                                            <td><a class="orderNum" v-bind:href='"Member_OrderDetail.aspx?id="+item.OrderID'>9048000{{item.OrderID}}</a></td>
                                            <td>{{item.OrderDate}}</td>
                                              <td></td>
                                            <td v-if="item.State==0">收到訂單</td>
                                            <td v-else-if="item.State==1">處理中</td>
                                            <td v-else-if="item.State==2">已出貨</td>
                                            <td v-else-if="item.State==3">訂單完成</td>
                                            <td v-else-if="item.State==4">結案</td>
                                            <td>{{item.ShippedDate}}</td>
                                        </tr>
                                    </tbody>
                                </table>
                                       
                                                                                   </div>
                                                                              </div>
 
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                            <%--歷史訂單查詢--%>
                             <%--我要發問--%>
                            <div id="item7" class="tab-pane fade show">
                                                            <div>
                                                                <div>
                                                                    <div>
                                                                        <div class="card-body">

                                                                            <div action="#!">
                                                                                <div class="card-body-msg">
                                                                                     <h4 onclick="_ask()">我要發問</h4>
                                                                                    <hr />
                                                                                   <br />
                                                                             <div >
                                                                              <div >
                                                                                  
                                                                               <div class="col-lg-12 col-md-12">
                    <div class="contact__form">
                        <div action="#">
                            <div class="row">
                                <div class="col-lg-12">
                                    <asp:TextBox ID="title" runat="server" CssClass="Msg_Title" placeholder="標題"></asp:TextBox>
                                </div>
                                <div class="col-lg-12 ">
                                     <asp:TextBox ID="message" TextMode="MultiLine" Rows="6" runat="server" placeholder="內容"></asp:TextBox>
                                    <asp:Label ID="Label10" runat="server" Text="" CssClass="msg"></asp:Label>
                                </div>
                              
                                 <div class="col-lg-12 ">
                                      <asp:FileUpload ID="FileUpload1" runat="server" />
                                     <asp:Button ID="Button3" runat="server"  Text="發   送" cssclass="btn btn-dark"  OnClick="Button3_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                                       
                                                                                   </div>
                                                                              </div>
 
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                            <%--我要發問--%>
                             <%--發問記錄--%>
                            <div id="item4" class="tab-pane fade show">
                                <div>
                                    <div>
                                        <div>
                                            <div class="card-body">

                                                <div action="#!">
                                                    <div class="card-body-msg">
                                                        <h4>發問記錄</h4>
                                                  <br />
                                                 <div >
            <div >
                <div class="table-wrapper">
                    <div class="table-title">
                        <div class="row">
                       
                            <div class="col-12 offset-8">
                              
                                </div>
                        </div>
                    </div>

                    <table class="table table-striped table-hover" style="table-layout:fixed ">
                        <asp:Repeater ID="Repeater2" runat="server">
                            <HeaderTemplate>
                                 <thead>
                                    <tr>
                                        <th width="20%">發問日期</th>
                                        <th width="45%">主旨</th>
                                        <th width="20%">客服回覆狀態</th>
                                        <th width="15%">詳細內容</th>
                                    </tr>
                                </thead>
                                 <tbody>
                            </HeaderTemplate>
                                  <ItemTemplate>
                                    <tr>
                                        <td><%# Eval("QDate") %></td>
                                        <td style="word-wrap:break-word" class="table_tit"><%# Eval("Title") %></td>
                                        <%-- <a href="#editModal" class="message fa fa-check-circle-o" data-toggle="modal" onclick='aa(<%#Eval("ID") %>)'/> --%>
<%--                                       <td> <i class="message fa fa-minus" ID="answer" aria-hidden="true"  runat="server"></i></td>--%>
                                       <td><%# DataBinder.Eval(Container.DataItem, "answer")!=null?"已回覆":"尚未回覆" %></td>
                                        <td> <a href="<%#Eval("ID","Ask_Answer.aspx?id={0}")%>" class="fa fa-search delete">&nbsp;&nbsp;查看</a></td>

                                    </tr>
                              
                            </ItemTemplate>
                            <FooterTemplate>
                                  </tbody>
                            </FooterTemplate>
                        </asp:Repeater>
                    </table>
                </div>
            </div>
        </div>
 
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                             <%--發問記錄--%>
                        </div>
                    </div>
                </div>
            </main>
        </div>
    </div>

      <!-- Creat Modal HTML -->
       <div id="creatModal" class="modal fade">
            <i class="fa fa-pencil" aria-hidden="true"></i>
            <div class="modal-dialog">
                <div class="modal-content ">
                    <div>
                        <div class="modal-header ">
                            <h3 class="modal-title menu-title"><strong onclick="_edit()">新增常用聯絡人</strong></h3>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true" OnClientClick="return false">&times;</button>
                        </div>
                        <div class="modal-body menu-title ">
                            <div class="form-group">
                                <div class="form-group">
                                    <label>姓名</label>
                                    <asp:TextBox ID="TextBox1" runat="server" cssclass="form-control"></asp:TextBox>
                               <%--     <input id="Text5" class="form-control" runat="server" type="text" />--%>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="請輸入姓名" ControlToValidate="TextBox1" ValidationGroup="3" SetFocusOnError="False"></asp:RequiredFieldValidator>
                                </div>

                                <div class="form-group">
                                    <label>手機</label>
                                    <%--<input id="Tel1" class="form-control" runat="server" type="tel" />--%>
                                    <asp:TextBox ID="TextBox2" runat="server" cssclass="form-control"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="請輸入電話"
                                     ValidationExpression="^('^09\\d{8}$')$" ValidationGroup="3" Display="None"></asp:RegularExpressionValidator>

                                </div>
                                <div class="form-group">
                                    <label>Email</label>
                                    <asp:TextBox ID="TextBox3" runat="server" cssclass="form-control" TextMode="Email"></asp:TextBox>
                                  <%--  <input id="Email1" class="form-control" runat="server" type="email" />--%>
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"  ErrorMessage="請輸入E-Mail" ControlToValidate="TextBox3" ValidationGroup="3"></asp:RequiredFieldValidator>

                                </div>

                                <div class="form-group">
                                    <label>地址</label>
                                    <%--<input id="Text6" class="form-control" runat="server" type="text" />--%>
                                    <asp:TextBox ID="TextBox4" runat="server" cssclass="form-control"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="請輸入地址" ControlToValidate="TextBox4" ValidationGroup="3" SetFocusOnError="False"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            
                         <asp:Button ID="creat" CssClass="btn btn-danger" runat="server" Text="儲存"  OnClick="creat_Click"/>
                            <asp:Button ID="Button4" CssClass="btn btn-dafult" data-dismiss="modal" runat="server" Text="返回" />
                          <%--  <input id="creat" type="button" class="btn btn-info" value="儲存" OnClientClick="return false"/>
                            <input type="button" id="cancel1" class="btn btn-default" data-dismiss="modal" value="取消" OnClientClick="return false">--%>
                        </div>
                    </div>
                </div>
            </div>
        </div>
      <!-- Edit Modal HTML -->
        <div id="editModal" class="modal fade">
            <i class="fa fa-pencil" aria-hidden="true"></i>
            <div class="modal-dialog">
                <div class="modal-content ">
                    <div>
                        <div class="modal-header ">
                            <h3 class="modal-title menu-title"><strong >修改</strong></h3>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true" OnClientClick="return false">&times;</button>
                        </div>
                        <div class="modal-body menu-title ">
                            <div class="form-group">
                                <div class="form-group">
                                    <label>姓名</label>
                                    <input id="Text1" class="form-control" runat="server" type="text" />
                                </div>

                                <div class="form-group">
                                    <label>手機</label>
                                    <input id="Text2" class="form-control" runat="server" type="tel" />

                                </div>
                                <div class="form-group">
                                    <label>Email</label>
                                    <input id="Text3" class="form-control" runat="server" type="email" />
                                </div>

                                <div class="form-group">
                                    <label>地址</label>
                                    <input id="Text4" class="form-control" runat="server" type="text" />
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <input id="save" type="button" class="btn btn-info" value="儲存" <%--OnClientClick="return false"--%>/>
                            <input type="button" id="cancel" class="btn btn-default" data-dismiss="modal" value="取消" OnClientClick="return false">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Delete Modal HTML -->
        <div id="deleteModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div>
                        <div class="modal-header ">
                            <h3 class="modal-title menu-title"><strong>刪除會員</strong></h3>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body ">
                            <h4 class="menu-title">確定要刪除這位聯絡人嗎?</h4>
                            <br />
                           <%-- <p class="text-warning"><small>刪除後將無法回復</small></p>--%>
                        </div>
                        <div class="modal-footer menu-title">
                             <input id="delete" type="button" class="btn btn-danger" value="刪除" OnClientClick="return false"/>
                            <input type="button" id="cancel2" class="btn btn-dark" data-dismiss="modal" value="取消" OnClientClick="return false">

                         <%--   <asp:Button ID="delete" CssClass="btn btn-danger" runat="server" Text="刪除" />
                            <asp:Button ID="Button4" CssClass="btn btn-dafult" data-dismiss="modal" runat="server" Text="返回" />--%>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    <!-- Tabs content -->
    <script type="text/javascript" src="/scripts/jquery.min.js"></script>
    <script src="Scripts/jquery-3.6.0.min.js"></script>
      <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
     <script src="https://vuejs.org/js/vue.js"></script>
    <script type="text/javascript" src="/scripts/bootstrap.min.js"></script>
   <%--<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"  ></script>--%>

    <script>



        //前往頁籤功能
        $(function () {
            var type = getUrlParameter('type');
            if (type == "shipper") {
                $('[href="#item3"]').tab('show');
            } else if (type == "changePas") {
                $('[href="#item2"]').tab('show');
            } else if (type == "history") {
                $('[href="#item6"]').tab('show');
            } else if (type == "message") {
                $('[href="#item4"]').tab('show');
            }
        });
        var getUrlParameter = function getUrlParameter(sParam) {
            var sPageURL = window.location.search.substring(1),
                sURLVariables = sPageURL.split('&'),
                sParameterName,
                i;
            for (i = 0; i < sURLVariables.length; i++) {
                sParameterName = sURLVariables[i].split('=');
                if (sParameterName[0] === sParam) {
                    return typeof sParameterName[1] === undefined ? true : decodeURIComponent(sParameterName[1]);
                }
            }
            return false;
        };

        //取會員ID
        $(function () {
            var msg = "";
            if ($("#ContentPlaceHolder1_HiddenField1").val() != null) {
                msg = $("#ContentPlaceHolder1_HiddenField1").val();
            }
        });
        //取得歷史訂單
        var app = new Vue({
            el: '#mytbody',
            data: {
                memberId: $("#ContentPlaceHolder1_HiddenField1").val(),
                myList: []
            },
            created: function () {
                //console.log(this.myData);

                var self = this;
                var myData = {
                    memberID: $("#ContentPlaceHolder1_HiddenField1").val()
                };
                $.ajax({
                    type: 'POST',
                    url: "WebService.asmx/GetLists",
                    contentType: "application/json;utf-8",
                    dataType: "json",
                    data: JSON.stringify(myData),
                    success: function (result) {
                        self.myList = result.d;
                    }
                });
            }
        });
        //取得收件人
        function aa(id) {
            var myData = {
                memberId: $("#ContentPlaceHolder1_HiddenField1").val(),
            };
            $.ajax({
                type: 'POST',
                url: "WebService.asmx/GetShipping",
                async: false,
                contentType: "application/json;utd-8",
                dataType: "json",
                data: JSON.stringify({ "ID": id }),
                success: function (result) {
                    $("#ContentPlaceHolder1_Text1").val(result.d.Name);
                    $("#ContentPlaceHolder1_Text2").val(result.d.Phone);
                    $("#ContentPlaceHolder1_Text3").val(result.d.Email);
                    $("#ContentPlaceHolder1_Text4").val(result.d.Address);
                    $("#Hidden1").val(id);

                }
            });
        };
        // 修改收件人資料
        $(function () {

            $("#save").click(function () {

                var myData = {
                    id: $("#Hidden1").val(),
                    memberId: $("#ContentPlaceHolder1_HiddenField1").val(),
                    Name: $("#ContentPlaceHolder1_Text1").val(),
                    Phone: $("#ContentPlaceHolder1_Text2").val(),
                    Email: $("#ContentPlaceHolder1_Text3").val(),
                    address: $("#ContentPlaceHolder1_Text4").val()
                };

                if ($("#ContentPlaceHolder1_Text1").val() == '') {
                    swal("請輸入姓名", "", "warning");
                }
                else if ($("#ContentPlaceHolder1_Text2").val() == '') {
                    swal("請輸入電話", "", "warning");
                }
                else if ($("#ContentPlaceHolder1_Text3").val() == '') {
                    swal("請輸入E-Mail", "", "warning");
                }
                else if ($("#ContentPlaceHolder1_Text4").val() == '') {
                    swal("請輸入地址", "請重新輸入", "warning");
                } else {
                    $.ajax({
                        type: 'POST',
                        url: "WebService.asmx/UpdateShipping",
                        contentType: "application/json;utf-8",
                        dataType: "json",
                        data: JSON.stringify(myData),
                        success: function (result) {

                            $('#editModal').modal('hide');
                            $('#editModal').removeClass("show");
                            $('#editModal').addClass("hide");
                            $('body').removeClass('modal-open');
                            $('.modal-backdrop').remove();
                            swal("修改成功!", "", "success").then(function () {
                                window.location.href = "/Member_Center.aspx?type=shipper"
                            });
                        }
                    })
                }

            });
        });
        // 刪除收件人
        $(function () {

            $("#delete").click(function () {

                var myData = {
                    id: $("#Hidden1").val(),

                };
                $.ajax({
                    type: 'POST',
                    url: "WebService.asmx/DeleteShipping",
                    contentType: "application/json;utf-8",
                    dataType: "json",
                    data: JSON.stringify(myData),
                    success: function (result) {
                        $('#deleteModal').modal('hide');
                        $('#deleteModal').removeClass("show");
                        $('#deleteModal').addClass("hide");
                        $('body').removeClass('modal-open');
                        $('.modal-backdrop').remove();
                        swal("刪除成功!", "", "success").then(function () {
                            window.location.href = "/Member_Center.aspx?type=shipper"
                        });
                    }
                })
            });
        });

        //修改會員資料
        $(function () {
            $("#ContentPlaceHolder1_Button2").click(function () {

                var myData = {
                    memberId: $("#ContentPlaceHolder1_HiddenField1").val(),
                    Gender: $('input[name="ctl00$ContentPlaceHolder1$RadioButtonList1"]:checked').val(),
                    birthDate: $("#ContentPlaceHolder1_birth").val(),
                    phone: $("#ContentPlaceHolder1_phone").val(),
                    address: $("#ContentPlaceHolder1_address").val(),
                    EDM: $('input[name="ctl00$ContentPlaceHolder1$RadioButtonList2"]:checked').val()
                };

                if ($("#ContentPlaceHolder1_birth").val() == '') {
                    swal("請輸入生日!", "請重新輸入", "warning");
                }
                else if ($("#ContentPlaceHolder1_phone").val() == '') {
                    swal("請輸入電話!", "請重新輸入", "warning");
                }
                else if ($("#ContentPlaceHolder1_address").val() == '') {
                    swal("請輸入地址!", "請重新輸入", "warning");
                } else {
                    $.ajax({
                        type: 'POST',
                        url: "WebService.asmx/Update",
                        contentType: "application/json;utf-8",
                        dataType: "json",
                        data: JSON.stringify(myData),
                        success: function (result) {
                            swal("修改成功!", "", "success").then(function () {
                                location.href = "Member_Center.aspx"
                            });
                        }
                    })
                }
            });
        });
        //修改會員密碼
        $(function () {

            $("#ContentPlaceHolder1_Button1").click(function () {
                var _hidePass = $("#ContentPlaceHolder1_HiddenField2").val();
                var _old = $("#ContentPlaceHolder1_LoginPassword").val();
                var _new = $("#ContentPlaceHolder1_NewPassword").val();
                var _confirm = $("#ContentPlaceHolder1_c_NewPassword").val();
                var myData = {
                    memberId: $("#ContentPlaceHolder1_HiddenField1").val(),
                    password: $("#ContentPlaceHolder1_NewPassword").val(),
                };
                if (_old == '') {
                    swal("請輸入密碼!", "請重新輸入", "warning");
                }
                else if (_hidePass != _old) {

                    swal("密碼不正確!", "請重新輸入", "warning");
                }
                else if (_new == '') {
                    swal("請輸入新密碼!", "", "warning");
                }
                else if (_new != _confirm) {
                    swal("2次密碼輸入資訊不相符，請重新輸入", "", "warning");
                }
                else {
                    $.ajax({
                        type: 'POST',
                        url: "WebService.asmx/ChangePassword",
                        contentType: "application/json;utf-8",
                        dataType: "json",
                        data: JSON.stringify(myData),
                        success: function (result) {
                            swal("修改成功!", "", "success").then(function () {
                                window.location.href = "/Member_Center.aspx"
                            });
                        }
                    })
                }
            });
        });
        //datepicker
        $(function () {
            $("#ContentPlaceHolder1_birth").datepicker({
                //可使用下拉式選單 - 月份
                changeMonth: true,
                //可使用下拉式選單 - 年份
                changeYear: true,

                //設定 下拉式選單月份 在 年份的後面
                showMonthAfterYear: true,
                yearRange: "1930:2021"
            });
        });
        $(function () {
            (function (factory) {
                if (typeof define === "function" && define.amd) {
                    // AMD. Register as an anonymous module.
                    define(["../widgets/datepicker"], factory);
                } else {
                    // Browser globals
                    factory(jQuery.datepicker);
                }
            }(function (datepicker) {
                datepicker.regional["zh-TW"] = {
                    closeText: "關閉",
                    prevText: "&#x3C;上個月",
                    nextText: "下個月&#x3E;",
                    currentText: "今天",
                    monthNames: ["一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月"],
                    monthNamesShort: ["一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月"],
                    dayNames: ["星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六"],
                    dayNamesShort: ["週日", "週一", "週二", "週三", "週四", "週五", "週六"],
                    dayNamesMin: ["日", "一", "二", "三", "四", "五", "六"],
                    weekHeader: "週",
                    dateFormat: "yy-mm-dd",
                    firstDay: 1,
                    isRTL: false,
                    showMonthAfterYear: true,
                    yearSuffix: "年"
                };
                datepicker.setDefaults(datepicker.regional["zh-TW"]);
                return datepicker.regional["zh-TW"];
            }));
        });

        function _edit() {
            $("#ContentPlaceHolder1_TextBox1").val("蘇西坡");
            $("#ContentPlaceHolder1_TextBox2").val("0933777888");
            $("#ContentPlaceHolder1_TextBox3").val("su@mmm.com");
            $("#ContentPlaceHolder1_TextBox4").val("台北市大安區光復南路X號");
        }
        function _ask() {
            $("#ContentPlaceHolder1_title").val("貓床河豚不知道我家胖貓進得去嗎？牠大概8Kg左右，之前常常買到太小的床，附上牠的生活照如圖");
            $("#ContentPlaceHolder1_message").val("胖胖的破壞力很強，然後體重又很重，不知道這個貓窩適不適合牠，真的很可愛很想買，但又怕牠進不去，另外請問有別的顏色嗎？再麻煩您回覆，感謝！");
        }
    </script>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ScriptHolder" runat="Server">


    <%--<script src="Scripts/jquery-3.1.1.min.js"></script>--%>
   
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css" />
    <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
    <script src="http://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
    <script src="https://vuejs.org/js/vue.js"></script>
   <%--  <script src="Scripts/jsgrid.min.js"></script>
     <script src="myData.js"></script>--%>
    
</asp:Content>
