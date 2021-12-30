<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    

    <!-- Map Begin -->
    
    <!-- Map End -->

    <!-- Contact Section Begin -->
    <section class="contact ">
        <div class="container">
            <div class="map mypadding-top">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3614.4446281636347!2d121.54214431498819!3d25.052914843686967!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3442abe7663234a1%3A0x231bd5272cd4147f!2zMTA0OTHlj7DljJfluILmnb7lsbHljYDlvqnoiIjljJfot685OS0xM-iZnw!5e0!3m2!1szh-TW!2stw!4v1636722216423!5m2!1szh-TW!2stw" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
        <%--<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d111551.9926412813!2d-90.27317134641879!3d38.606612219170856!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x54eab584e432360b%3A0x1c3bb99243deb742!2sUnited%20States!5e0!3m2!1sen!2sbd!4v1597926938024!5m2!1sen!2sbd" height="500" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>--%>
    </div>
            <div class="row mypadding-top mypadding-end">
                <div class="col-lg-6 col-md-6">
                    <div class="contact__text">
                        <div class="section-title">
                            <span>Information</span>
                            <h2 onclick="_contact()">Contact Us</h2>
                            <div>毛孩友善的生活美學</div>
                            <div>對我們來說，毛孩不只是寵物，更是家人。</div>
                            <div>從頭到腳,從室內到戶外,台灣貓物第一選擇。滿滿的貓物,滿滿的愛心。</div>
                        </div>
                        <ul>
                            <li>
                                <%--<h4>MEOWWWO</h4>--%>
                                <p>台北市松山區復興北路99號 <br />+886 1111-1111</p>
                            </li>
                            
                        </ul>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="contact__form">
                        <div action="#">
                            <div class="row">
                                <div class="col-lg-6">
                                    <%--<input type="text" placeholder="Name">--%>
                                    <asp:TextBox ID="name" runat="server" placeholder="Name"></asp:TextBox>
                                </div>
                                <div class="col-lg-6">
                                    <%--<input type="text" placeholder="Email">--%>
                                    <asp:TextBox ID="email" runat="server" placeholder="E-mail"></asp:TextBox>

                                </div>
                                <div class="col-lg-12 ">
                                    <%--<textarea placeholder="Message"></textarea>--%>
                                    <%--<button type="submit" class="site-btn">Send Message</button>--%>
                                     <asp:TextBox ID="quesion" TextMode="MultiLine" Rows="6" runat="server" placeholder="Message"></asp:TextBox>
                                    <%-- <asp:Button ID="Button1" runat="server" Text="發送" cssclass="site-btn" />--%>
                                </div>
                                 <div class="col-lg-6 ">
                                     <asp:Label ID="Label1" runat="server" Text="" CssClass="msg"></asp:Label>
                                     <asp:Button ID="Button2" runat="server"  Text="發   送" cssclass="site-btn" OnClick="Button2_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Contact Section End -->
     <script>
           function _contact() {
               $("#ContentPlaceHolder1_name").val("許筱佩"); 
               $("#ContentPlaceHolder1_email").val("meowwwo.pet@gmail.com");
               $("#ContentPlaceHolder1_quesion").val("請問河豚睡窩我家的8Kg胖貓適合嗎？另外請問有沒有別的顏色可以選擇？謝謝。");
         } 
         $(function () {

             $("#ContentPlaceHolder1_Button2").click(function () {
                 swal({
                     title: '完成',
                     text: "訊息已傳送!",
                     type: 'success',
                 });
             });
         })
     </script>
</asp:Content><asp:Content ID="Content2" ContentPlaceHolderID="ScriptHolder" Runat="Server">
    
 <script src="Scripts/sweetalert2.min.js"></script>
 <script src="Scripts/jquery-3.1.1.min.js"></script>

  
</asp:Content>

