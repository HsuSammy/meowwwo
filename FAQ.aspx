<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="FAQ.aspx.cs" Inherits="FAQ" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CssPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="tab-content" id="ex1-content">
 
  <div class="tab-pane fade show active" role="tabpanel" aria-labelledby="ex1-tab-1">
<main class="d-flex align-items-center min-vh-100 py-3 py-md-0">
  <div class="container mypadding-top mypadding-end col-6">
     
           <%-- ------start---------%>
<div class="accordion" id="accordionExample">
  <div class="card">
    <div class="card-header" id="headingOne">
      <h2 class="mb-0">
        <button class="btn btn-link btn-block text-left" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
          關於會員登入
        </button>
      </h2>
    </div>

    <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
      <div class="card-body">
          <h6>Q1. 如何加入『MEOWWWO』會員？</h6>
          <p> &nbsp; &nbsp; &nbsp; &nbsp;・請點選網頁右上角「註冊會員」，並輸入所需的資訊，進行註冊手續。</p>
          <br />
          <h6>Q2. 如何變更個人資料及密碼？</h6>
          <p> &nbsp; &nbsp; &nbsp; &nbsp;・「會員中心」至「會員詳細資料」即可進行變更。</p>
          <br />
          <h6>Q3. 忘記密碼該怎麼辦？</h6>
          <p> &nbsp; &nbsp; &nbsp; &nbsp;・若您忘記密碼，請您先「會員中心」後，點選「忘記密碼」再輸入註冊的電子郵件，系統會自動發送密碼給您。</p>
          <br />
          <h6>Q4. 會員註銷？</h6>
          <p> &nbsp; &nbsp; &nbsp; &nbsp;・若您希望取消在MEOWWWO官方商城的會員資格，請
              <%--<asp:Button ID="Button1" cssclass="btn btn-light" runat="server" Text="點選這裡" Onclick="Button1_Click"/>--%>
               <a href="#deleteModal"  class="delmsg"  id="DelMem" data-toggle="modal" > 點此</a>註銷會員。</p>
          <br />
          <asp:HiddenField ID="HiddenField1" runat="server" />
      </div>
    </div>
  </div>
  <div class="card">
    <div class="card-header" id="headingfive">
      <h2 class="mb-0">
        <button class="btn btn-link btn-block text-left collapsed" type="button" data-toggle="collapse" data-target="#collapsefive" aria-expanded="false" aria-controls="collapseThree">
          如何查詢訂單資訊
        </button>
      </h2>
    </div>
    <div id="collapsefive" class="collapse" aria-labelledby="headingfive" data-parent="#accordionExample">
      <div class="card-body">
          <h6>Q1. 如何查詢訂單資訊</h6>
          <p> &nbsp; &nbsp; &nbsp; &nbsp;・「會員中心」至「訂單追蹤」即可進行查詢。 </p>
          
          <br />      
          
      </div>
    </div>
  </div>
  <div class="card">
    <div class="card-header" id="headingTwo">
      <h2 class="mb-0">
        <button class="btn btn-link btn-block text-left collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
          購物須知
        </button>
      </h2>
    </div>
    <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
      <div class="card-body">
          <h6>Q1.購買多少金額以上可免運費？</h6>
          <p> &nbsp; &nbsp; &nbsp; &nbsp;・單筆消費滿NT$1,500以上免運。</p>
          <br />      </div>
    </div>
  </div>
  <div class="card">
    <div class="card-header" id="headingThree">
      <h2 class="mb-0">
        <button class="btn btn-link btn-block text-left collapsed" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
          配送常見問題
        </button>
      </h2>
    </div>
    <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
      <div class="card-body">
          <h6>Q1. 運費計算</h6>
          <p> &nbsp; &nbsp; &nbsp; &nbsp;・貨到付款，除物流操作費110元外，單筆訂單將額外酌收60元手續費。 </p>
          <p> &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;以下結帳方式之免運費標準；如遇銷售活動，則以網站不定期公告為依據。</p>
          <br />      
          <h6>Q2. 配送貨運公司</h6>
          <p> &nbsp; &nbsp; &nbsp; &nbsp;・黑貓宅急便</p>
          <p> &nbsp; &nbsp; &nbsp; &nbsp;・其他指定貨運廠商/物流公司</p>
          <br />
      </div>
    </div>
  </div>
  <div class="card">
    <div class="card-header" id="headingfour">
      <h2 class="mb-0">
        <button class="btn btn-link btn-block text-left collapsed" type="button" data-toggle="collapse" data-target="#collapsefour" aria-expanded="false" aria-controls="collapseThree">
          關於付款方式
        </button>
      </h2>
    </div>
    <div id="collapsefour" class="collapse" aria-labelledby="headingfour" data-parent="#accordionExample">
      <div class="card-body">
          <h6>Q1. 目前付款方式</h6>
          <p> &nbsp; &nbsp; &nbsp; &nbsp;・貨到付款 </p>
          <p> &nbsp; &nbsp; &nbsp; &nbsp;・匯款</p>
          <p> &nbsp; &nbsp; &nbsp; &nbsp;・刷卡</p>
          <br />      
          
      </div>
    </div>
  </div>
  
</div>

           <%----------end----------%>
            <!-- Delete Modal HTML -->
        <div id="deleteModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div>
                        <div class="modal-header ">
                            <h3 class="modal-title menu-title"><strong>註銷會員身份</strong></h3>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body ">
                            <h4 class="menu-title">確定要註銷會員嗎?</h4>
                            <br />
                           <%-- <p class="text-warning"><small>刪除後將無法回復</small></p>--%>
                        </div>
                        <div class="modal-footer menu-title">
                             <input id="delete" type="button" class="btn btn-danger" value="確定" OnClientClick="return false"/>
                            <input type="button" id="cancel2" class="btn btn-dark" data-dismiss="modal" value="取消" OnClientClick="return false">

                         <%--   <asp:Button ID="delete" CssClass="btn btn-danger" runat="server" Text="刪除" />
                            <asp:Button ID="Button4" CssClass="btn btn-dafult" data-dismiss="modal" runat="server" Text="返回" />--%>
                        </div>
                    </div>
                </div>
            </div>
        </div>
     
    </div>
  </main>
  </div>
</div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptHolder" Runat="Server">
     <script type="text/javascript" src="/scripts/jquery.min.js"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script src="Scripts/jquery-3.6.0.min.js"></script>
      
    <script type="text/javascript" src="/scripts/bootstrap.min.js"></script>
    <script>
        // 刪除使用者
       
     

        $(function () {

        $("#delete").click(function () {

                var myData = {
                    MemberID: $("#ContentPlaceHolder1_HiddenField1").val(),
            };
            if ($("#ContentPlaceHolder1_HiddenField1").val() == '') {
                swal("您不是本站會員喔！", "", "warning");
                $('#deleteModal').modal('hide');
                $('#deleteModal').removeClass("show");
                $('#deleteModal').addClass("hide");
                $('body').removeClass('modal-open');
                $('.modal-backdrop').remove();
            } else {
            $.ajax({
                type: 'POST',
                url: "WebService.asmx/DeleteMember",
                contentType: "application/json;utf-8",
                dataType: "json",
                data: JSON.stringify(myData),
                success: function (result) {
                    /* alert("刪除成功");*/
                    $('#deleteModal').modal('hide');
                    $('#deleteModal').removeClass("show");
                    $('#deleteModal').addClass("hide");
                    $('body').removeClass('modal-open');
                    $('.modal-backdrop').remove();
                    swal("刪除成功!", "", "success").then(function () {
                        window.location.href = "Member_logout.aspx"
                    });
                }
            })
            }
        });
        });
        
        
 


    </script>
</asp:Content>

