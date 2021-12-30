<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Ask_Answer.aspx.cs" Inherits="Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    

    <!-- Map Begin -->
    
    <!-- Map End -->

    <!-- Contact Section Begin -->
    <section class="contact ">
        <div class="container">
         <!-- Blog Details Section Begin -->
    <section class="blog-details spad ">
        <div class="container">
            <div class="row d-flex justify-content-center message-top message-end">
             
                <div class="col-lg-8">
                    <div class="blog__details__content">
                        <div class="blog__details__share">
                            <span></span>
                            <ul>
                                <li><a href="./FAQ.aspx" class="twitter" data-toggle="tooltip" data-placement="left" title="FAQ"><i class="fa fa-info" ></i></a></li>
                                <li><a href="./Member_Center.aspx?type=message" class="linkedin" data-toggle="tooltip" data-placement="left" title="回到問答"><i class="fa fa-question" ></i></a></li>
                                <li><a href="./index.aspx" class="youtube" data-toggle="tooltip" data-placement="left" title="首頁"><i class="fa fa-home" ></i></a></li>
                            </ul>
                        </div>
                        <div class="row col-12">
                        
                        <div class="col-8 parent">
                        <div class="blog__details__text">
                           <h4>  <asp:Label ID="title" runat="server" Text=""></asp:Label></h4><hr><br>
                            <p><asp:Label ID="message" runat="server" Text=""></asp:Label></p>
                        </div>
                            </div>
                        <div class="col-4">
                         <asp:Image ID="Image1" runat="server" />
                        </div>
                        </div>
                        </div>
                        <div class="blog__details__quote">
                            <i class="fa fa-quote-left"></i>
                            <p><asp:Label ID="answer" runat="server" Text=""></asp:Label></p>
                            <h6> <asp:Label ID="service" runat="server" Text=""></asp:Label>
                                <asp:Label ID="AnsDate" runat="server" Text=""></asp:Label></h6>
                        </div>
                      </div>
                    
            </div>
        </div>
         
    </section>
    <!-- Blog Details Section End -->


        </div>
    </section>


</asp:Content><asp:Content ID="Content2" ContentPlaceHolderID="ScriptHolder" Runat="Server">
    
 <script src="Scripts/sweetalert2.min.js"></script>
 <script src="Scripts/jquery-3.1.1.min.js"></script>
 <script type="text/javascript" src="/scripts/bootstrap.min.js"></script>
  
</asp:Content>

