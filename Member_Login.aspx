 <%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Member_Login.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   

<!-- Tabs content -->
<div class="tab-content" id="ex1-content">
 
  <div class="tab-pane fade show active" role="tabpanel" aria-labelledby="ex1-tab-1">
<main class="d-flex align-items-center min-vh-100 py-3 py-md-0">
  <div class="container">


          <%--頁籤--%>
        <ul class="nav justify-content-end mypadding-top " id="ex1" role="tablist">
            <li class="nav-item" role="presentation">
                <a class="member-nav-link active" href="#item1" data-toggle="tab" 
                    role="tab" aria-controls="ex1-tabs-1" aria-selected="true">會員登入 </a>
            </li>
            <li class="nav-item" role="presentation">
                <a class="member-nav-link" href="#item2" data-toggle="tab" 
                 role="tab" aria-controls="ex1-tabs-2"  aria-selected="false">註冊會員</a>
            </li>
        </ul>
          <%--頁籤end--%>


        <div class="tab-content mypadding-end ">
             <%--Login--%>
            <div id="item1" class="tab-pane active fade show">
                <div class="login-card">
        <div class="row no-gutters">
          <div class="col-md-5">
            <img src="img/member/login_pic.jpg" alt="login" class="login-card-img">
          </div>
          <div class="col-md-7 " >
            <div class="card-body">
       
              <div action="#!">
                  <div class="card-body-msg">
               
                        <div class="col-lg-8">
                           <div class="register__input">
                       <div class="flex-sb-m w-full p-b-10"  >
                                 <div class="contact100-form-checkbox"><p onclick="login_1()">電子郵件  E-Mail<span>*</span></p></div>
                               <div class="forget_password msg" "><asp:Label ID="label1" style="text-align:right" runat="server" cssclass="msg" Text=""></asp:Label></div>
                            </div>  
                               <asp:TextBox runat="server" ID="LoginEmail" TextMode="email"  ></asp:TextBox>
                            
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"  ErrorMessage="" ControlToValidate="LoginEmail" ValidationGroup="1"></asp:RequiredFieldValidator>
                          </div> 

                       </div>
                       <div class="col-lg-8">
                           <div class="register__input">
                       <div class="flex-sb-m w-full p-b-10"  >
                                 <div class="contact100-form-checkbox"><p onclick="login_2()">密碼  Password<span>*</span></p></div>
                               <div class="forget_password msg" ><asp:Label ID="label2" style="text-align:right" runat="server" cssclass="msg" Text=""></asp:Label></div>
                      </div>  <asp:TextBox runat="server" ID="LoginPassword" TextMode="password" ></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="" ControlToValidate="LoginPassword" ValidationGroup="1"></asp:RequiredFieldValidator>

                          </div> 

                       </div>


                      <div class="col-lg-8">
                       <div class="flex-sb-m w-full p-b-30"  >
                                 <div class="contact100-form-checkbox"><asp:CheckBox ID="CheckBox3" runat="server" ValidationGroup="1"/>&nbsp<span>記住我</span></div>
                                 <%--<div class="forget_password"><asp:Label ID="Label6" runat="server" Text="忘記密碼？" url="~/Member_ForgetPassword.aspx" />&nbsp</div>--%>
                               <div class="forget_password" id="btnOpen"><a>忘記密碼？→</a></div>
                     
                       </div>
                          </div>
                       <div class="col-lg-4 offset-2  ">
                                     <div class="loginBtn">
                                    <asp:Button ID="Button3" cssclass="login_btn" runat="server" Text="送出  Login" onclick="Button3_Click"/>

                                  </div>
                                 </div>
                </div>
                </div>
            </div>
          </div>
        </div>
      </div>
            </div>
             <%--LoginEnd--%>
             <%--Register--%>
            <div id="item2" class="tab-pane fade show">
                   <div class="login-card">
        <div class="row no-gutters">
          <div class="col-md-5">
            <img src="img/member/login_pic_1.jpg" alt="login" class="login-card-img">
          </div>
          <div class="col-md-7 " >
            <div class="card-body">
       
              <div action="#!">
                  <div class="card-body-msg">
                       <div class="col-lg-8 " >
                                    <div class="mem__input">
                                        <p onclick="getRegister()">姓名  UserName<span>*</span></p>
                                        <asp:TextBox  ID="registerName" runat="server" autofocus="0" ></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="" ControlToValidate="registerName" ValidationGroup="2" SetFocusOnError="False"></asp:RequiredFieldValidator>
                                 </div>
                                </div>
                                 <div class="col-lg-8 " >
                                    <div class="mem__input">
                                        <p>電子郵件  E-Mail<span>*</span></p>
                                        <asp:TextBox runat="server" placeholder="xxx@mmm.com" ID="registerMail" TextMode="email" ></asp:TextBox>
                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="" ControlToValidate="registerMail" ValidationGroup="2"></asp:RequiredFieldValidator>

                                    </div>
                                </div> 

                                    <div class="col-lg-8 " >
                                       <div class="mem__input_radioBtn">
                                        <p>姓別  Gender<span>&nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span>
                                         
                                    <asp:RadioButtonList
                                    ID="Gender" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow" >
                                      <asp:ListItem Selected="True" Text="男性" Value="1"></asp:ListItem>
                                      <asp:ListItem Text="女性" Value="2"></asp:ListItem>
                                     </asp:RadioButtonList></p>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server"  ControlToValidate="Gender" ValidationGroup="2"></asp:RequiredFieldValidator>

                                    </div></div> 
                             <%--     生日--%>
                                <div class="col-lg-8 " >
                                 <div class="datetest mem__input birthday">
                                 <p class="datag " > 生日 <span>*</span>
                               <%--      <input type="text" id="datepicker" value="" name='datepicker'>--%>
                                  <asp:TextBox ID="datepicker" runat="server" placeholder="2000/01/01"></asp:TextBox></p>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="" ControlToValidate="datepicker" ValidationGroup="2"></asp:RequiredFieldValidator>
                                 </div></div>

                      

                                 <div class="col-lg-8 " >
                                    <div class="mem__input">
                                        <p>電話  Phone<span>*</span></p>
                                        <asp:TextBox runat="server" placeholder="09--" ID="registerPhone" pattern='^\+?\d{10,13}'></asp:TextBox>
                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="" ControlToValidate="registerPhone" ValidationGroup="2"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="registerPhone" ErrorMessage="請輸入電話"
                                     ValidationExpression="^('^09\\d{8}$')$" ValidationGroup="2" Display="None"></asp:RegularExpressionValidator>
                                    </div>
                                </div>

                                <div class="col-lg-8 ">
                                    <div class="mem__input">
                                        <p>地址  Address<span>*</span></p>
                                        <asp:TextBox runat="server" ID="registerAdd"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="" ControlToValidate="registerAdd" ValidationGroup="2"></asp:RequiredFieldValidator>

                                    </div>
                                </div>
                                <div class="col-lg-8 " >
                                    <div class="mem__input">
                                        <p>密碼  Password<span>*</span></p>
                                        <asp:TextBox runat="server" ID="registerPas" TextMode="password" ></asp:TextBox>
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="" ControlToValidate="registerPas" ValidationGroup="2"></asp:RequiredFieldValidator>

                                    </div>
                                </div>
                               
                        <div class="col-lg-8">
                           <div class="mem__input">
                       <div class="flex-sb-m w-full p-b-10"  >
                                 <div class="contact100-form-checkbox"><p>確認密碼  Password<span>*</span></p></div>
                               <div class="forget_password msg" "><asp:Label ID="Label3" style="text-align:right" runat="server"  Text=""></asp:Label></div>
                      </div>  <asp:TextBox runat="server" ID="confirmpas" TextMode="password" ></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="" ControlToValidate="confirmpas" ValidationGroup="2"></asp:RequiredFieldValidator>

                          </div> 

                       </div>

                               
                      <div class="col-lg-8">
                       <div class="flex-sb-m w-full p-b-30"  >
                                 <div class="contact100-form-checkbox"><asp:CheckBox ID="CheckBox1" runat="server" ValidationGroup="2"/>&nbsp<span>接收最新優惠訊息</span></div>
                                 <%--<div class="forget_password"><asp:Label ID="Label1" runat="server" Text="已有帳號？登入→" />&nbsp</div>--%>
                           <div class="forget_password"><a href="/Member_Login.aspx" >已有帳號？登入→</a></div>

                       </div>
                          </div>
  

                       <div class="col-lg-4 offset-2  ">
                                     <div class="loginBtn">
                                    <asp:Button ID="Button4" cssclass="login_btn" runat="server" Text="送出  Login" OnClick="Button4_Click" />
                                  </div>
                                 </div>
                   </div>
                </div>
            </div>
          </div>
        </div>
      </div>
            </div>
             <%--RegisterEnd--%>
        </div>
 <%--  忘記密碼彈出視窗--%>
        <div class="modal fade" id="myModal" data-backdrop="static">
                            <div class="modal-dialog">
                              <div class="modal-content">
                                  <div class="modal-header">
                                     <h4 class="modal-title">忘記密碼</h4>
                                 <button class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <div class="modal-body">
                          <div class="login-card">
        <div class="row no-gutters">
          
          <div class="col-12" >
            <div class="card-body">
       
              <div action="#!">
                  <div class="forgetpassword-body-msg">
                     <div  >
                                    <div class="register__input">
                                        <p onclick="getEmail()">請輸入會員電子郵件信箱，我們將寄送密碼給您<span>*</span></p>
                                        <asp:TextBox runat="server" ID="TextBox1" TextMode="email" ></asp:TextBox>
                                        <asp:Label runat="server" Text="" cssclass="msg" ID="sendTo"></asp:Label>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="請輸入E-Mail" ControlToValidate="TextBox1" ValidationGroup="3"></asp:RequiredFieldValidator>

                                       </div>
                                </div>
                       <div class="col-lg-4 offset-3  ">
                                     <div class="loginBtn">
                                    <asp:Button ID="Button1" cssclass="login_btn" runat="server" Text="送出  Send"  onclick="Button1_Click"/>
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
 <%--  忘記密碼彈出視窗END--%>
    </div>
  </main>
  </div>
</div>


<!-- Tabs content -->
     <script src="https://smtpjs.com/v3/smtp.js"></script>
     <script type="text/javascript" src="/scripts/jquery.min.js"></script> 
     <script src="Scripts/jquery-3.6.0.min.js"></script>
     <script type="text/javascript" src="/scripts/bootstrap.min.js"></script>   
   


  
   <script>


       //document.getElementById("ContentPlaceHolder1_Button4").addEventListener("click", function () {
       //    swal("註冊成功!", "請登入會員", "success");
       //}).then(function () {
       //    window.location.href = "/Member_Login.aspx"
       //});
       //document.getElementById("ContentPlaceHolder1_Button1").addEventListener("click", function () {
       //    swal.fire("查無此帳號!", "請重新輸入", "warning",);
       //}).then(function () {
       //    window.location.href = "/Member_Login.aspx"
       //});

       //跳轉註冊會員頁面
       $(function () {
           var type = getUrlParameter('type');
           if (type == "register") {
               $('[href="#item2"]').tab('show');
           }
       })
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

       //忘記密碼彈出視窗
       $(function () {
           $("#btnOpen").click(function () {
               $("#myModal").modal();
               $("#myModal").modal("show");
           });
           $("#btnOK").click(function () {
               $("#msg").text("Hello, " + $("#txtName").val());
               $("#myModal").modal("hide");
           });
       });

       //忘記密碼傳送MAIL

       //$(function () {

       //    $("#ContentPlaceHolder1_Button1").click(function () {

       //        var myData = {
       //            Email: $("#ContentPlaceHolder1_TextBox1").val(),
       //        };

       //        if ($("#ContentPlaceHolder1_TextBox1").val() == '') {
       //            alert("請輸入會員E-Mail");
       //        } 
       //            $.ajax({
       //                type: 'POST',
       //                url: "WebService.asmx/GetMembers",
       //                contentType: "application/json;utf-8",
       //                dataType: "json",
       //                data: JSON.stringify(myData),
       //                success: function (result) {
       //                   alert("修改完成") ;
       //                }
       //            })
       //    });
       //});

       /*   datepicker*/
       $(function () {
           $("#ContentPlaceHolder1_datepicker").datepicker({
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
       function getEmail() {
           $("#ContentPlaceHolder1_TextBox1").val("meowwwo.pet@gmail.com");
       }
       function login_1() {
           $("#ContentPlaceHolder1_LoginEmail").val("sammyhsu@hotmail.com.tw");
       }
       function login_2() {
           $("#ContentPlaceHolder1_LoginEmail").val("bubu@mmm.com");
           $("#ContentPlaceHolder1_LoginPassword").val("123");
       } 
       function getRegister() {
           $("#ContentPlaceHolder1_registerName").val("許咘咘");
           $("#ContentPlaceHolder1_registerMail").val("bubu@mmm.com");
           $("#ContentPlaceHolder1_datepicker").val("2002/10/10");
           $("#ContentPlaceHolder1_registerPhone").val("0987999888");
           $("#ContentPlaceHolder1_registerAdd").val("新北市永和區仁愛路X號");
           $("#ContentPlaceHolder1_registerPas").val("123");
           $("#ContentPlaceHolder1_confirmpas").val("123");
       } 
   </script>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ScriptHolder" Runat="Server">
     <link rel="stylesheet" href="http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css"/>
     <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
     <script src="http://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
      <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    </asp:Content>