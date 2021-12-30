<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Payment.aspx.cs" Inherits="Default4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>
            <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Awesome Credit Card Form Example</title>
    <link href="https://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootswatch/4.5.0/flatly/bootstrap.min.css">
    <link rel="stylesheet" href="./assets/main.css">
    <link rel="stylesheet" href="./assets/responsive.css">
    <link
        rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.0/animate.min.css"
/>
    </title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <body>
    <%--            <div id="jquery-script-menu">
<div class="jquery-script-center">
<ul>
<li><a href="https://www.jqueryscript.net/form/credit-card-interactions.html">Download This Plugin</a></li>
<li><a href="https://www.jqueryscript.net/">Back To jQueryScript.Net</a></li>
</ul><div id="carbon-block"></div>
<div class="jquery-script-ads"><script type="text/javascript"><!--
    google_ad_client = "ca-pub-2783044520727903";
    /* jQuery_demo */
    google_ad_slot = "2780937993";
    google_ad_width = 728;
    google_ad_height = 90;
//-->
</script>
<script type="text/javascript"
src="https://pagead2.googlesyndication.com/pagead/show_ads.js">
</script></div>
<div class="jquery-script-clear"></div>
</div>
</div>--%>
<div class="container" style="margin:150px auto">
    <h1 class="text-center">喵鳴線上刷卡</h1>
    <asp:HiddenField ID="HiddenField1" runat="server" />
    <div class="row content-parent justify-content-center align-items-center">
        <div class="col-md-6">
            <div class="col-md-10 m-auto">
                <div class="card willFlip" id="willFlip">
                    <div class="front">
                        <div class="card-body " onclick="_card()">
                            <div class="d-flex justify-content-between">
                                <img src="./assets/card_bank.png" width="50" style="filter: contrast(0)" height="50" alt="">
                                <img src="./assets/visa.png" width="50" height="50" alt="">
                            </div>
                            <div class="col-md-12 mt-1">
                                <div class="form-group">
                                    <label for="cardNumber"></label>
                                    <input type="text" class="form-control animate__animated animate__bounce animate__duration-2s" disabled readonly id="cardNumber">
                                </div>
                            </div>
                            <div class="d-flex justify-content-between bd-highlight mb-3">
                                <div class="col-md-6 card-holder-content">
                                    <div class="form-group">
                                        <label for="cardHolderValue">持卡人姓名</label>
                                        <input type="text" placeholder="Card Holder" disabled class="cardHolder form-control animate__animated animate__bounce animate__duration-2s" id="cardHolderValue">
                                    </div>
                                </div>
                                <div class="col-md-3 card-expires-content">
                                    <div class="input-date">
                                        <label for="expiredMonth" class="text-right d-block">有效期限</label>
                                        <div class="row content-date-input justify-content-end animate__animated animate__duration-2s animate__bounce">
                                            <input type="text" disabled class="cardHolder col-4 form-control" id="expiredMonth">
                                            <h4 class="mt-1 p-2 slash-text"> / </h4>
                                            <input type="text" disabled class="cardHolder col-4 form-control" id="expiredYear">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="back">
                        <div class="card-bar"></div>
                        <div class="card-body">
                            <div class="col-md-12  back-middle">
                                <div class="form-group">
                                    <label for="cardCcv" class="text-right d-block">安全碼</label>
                                    <input type="password" disabled class="form-control" id="cardCcv">
                                </div>
                                <img src="./assets/visa.png" class="float-right" width="50" height="50" alt="">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card">
                <div class="card-body mt-5">
                    <div class="form-group">
                        <label for="cardInput">卡號</label>
                        <asp:TextBox required  runat="server" class="input card-input_field form-control" id="cardInput"></asp:TextBox>
<%--                        <asp:Label required runat="server" Text="Label" class="input card-input_field form-control" id="cardInput"></asp:Label>--%>
<%--                        <input required class="input card-input_field form-control" id="cardInput" runat="server">--%>
                    </div>
                    <div class="form-group">
                        <label for="cardHolder">持卡人姓名</label>
                        <input required class="card-input_field form-control" id="cardHolder" runat="server">
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label for="monthInput">有效期限</label>
                                <select required name="" class="form-control card-input_field" id="monthInput" runat="server">
                                    <option class="disabled" readonly>Month</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label for="yearInput"></label>
                                <select required name="" class="form-control card-input_field mt-2" id="yearInput" runat="server">
                                    <option class="disabled" readonly>Year</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label for="cwInput">安全碼</label>
                                <input required type="text" class="form-control card-input_field" id="cwInput" runat="server">
                            </div>
                        </div>
                    </div>
                    <asp:Button ID="checkOK" runat="server" cssclass="btn btn-primary d-block card-input_button w-100" Text="付    款" OnClick="checkOK_Click" />
                    <br>
                    <a href="./Product_CheckOut.aspx">← 回上一頁</a>
                   <%-- <div class="btn btn-primary d-block card-input_button w-100" id="checkOK">Submit</div>--%>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<script src="./assets/flipper.min.js" type="text/javascript"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.inputmask/5.0.4-beta.33/jquery.inputmask.min.js"></script>
<script src="./assets/main.js" type="text/javascript"></script>
<script>
    try {
        fetch(new Request("https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js", { method: 'HEAD', mode: 'no-cors' })).then(function (response) {
            return true;
        }).catch(function (e) {
            var carbonScript = document.createElement("script");
            carbonScript.src = "//cdn.carbonads.com/carbon.js?serve=CK7DKKQU&placement=wwwjqueryscriptnet";
            carbonScript.id = "_carbonads_js";
            document.getElementById("carbon-block").appendChild(carbonScript);
        });
    } catch (error) {
        console.log(error);
    }
</script>
<script type="text/javascript">

    var _gaq = _gaq || [];
    _gaq.push(['_setAccount', 'UA-36251023-1']);
    _gaq.push(['_setDomainName', 'jqueryscript.net']);
    _gaq.push(['_trackPageview']);

    (function () {
        var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
        var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
    })();
    function _card() {
        $("#cardInput").val("4463297136572222");
        $("#cardHolder").val("許筱佩");
        $("#cwInput").val("336");
    }
    //儲存信用卡資料
   
    //$(function () {
    //    $("#checkOK").click(function () {

    //        var myData = {
    //            Id:0,
    //            OrderID: $("#HiddenField1").val(),
    //            cardNumber: $("#cardInput").val()
    //        };

    //        if ($("#cardInput").val() == '') {
    //            swal("請輸入卡號!", "輸入信用卡上16碼卡號", "warning");
    //        }
    //        else if ($("#cardHolder").val() == '') {
    //            swal("請輸入持卡人姓名!","", "warning");
    //        }
    //        else if ($("#monthInput").val() == '' || $("#yearInput").val() == '' ) {
    //            swal("請輸入正確有效期限", "請重新輸入", "warning");
    //        }
    //        else if ($("#cwInput").val() == '') {
    //            swal("安全碼為必填欄位!","", "warning");
    //        }else {
    //            $.ajax({
    //                type: 'POST',
    //                url: "WebService.asmx/AddPayment",
    //                contentType: "application/json;utf-8",
    //                dataType: "json",
    //                data: JSON.stringify(myData),
    //                success: function (result) {
    //                    swal("付款成功!", "", "success").then(function () {
    //                        location.href = "OrderComplete.aspx?id=1"
    //                    });
    //                }
    //            })
    //        }
    //    });
    //});
   $(function () {
        $("#checkOK").click(function () {
            if ($("#cardInput").val() != '' && $("#cardHolder").val() != '' && $("#monthInput").val() != '' && $("#yearInput").val() != '') {
                swal("請輸入卡號!", "輸入信用卡上16碼卡號", "warning");
            }
            Swal.fire({
                position: 'top-end',
                icon: 'success',
                title: 'Your work has been saved',
                showConfirmButton: false,
                timer: 1500
            })
        });
    });
</script>
</body>

        </div>
    </form>
</body>
</html>
