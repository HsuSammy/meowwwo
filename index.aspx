<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CssPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <!-- Banner-->
    <section class="hero">
        <div class="hero__slider owl-carousel">
            <div class="hero__items set-bg" data-setbg="img/hero/hero-1.jpg" onclick="location.href='Product_Bed.aspx';">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-5 col-lg-7 col-md-8">
                            <div class="hero__text">
                               <%-- <h6>12/1~12/31慶開幕</h6>--%>
                                <h2>12/1~12/31慶開幕</h2>
                                <p>加入會員輸入折扣碼，再享優惠100元[Wellcome]</p>
                                <h5>更多MEOWWWO睡窩>></h5>
                              <%--  <a href="#" class="primary-btn">Shop now <span class="arrow_right"></span></a>
                                <div class="hero__social">
                                    <a href="#"><i class="fa fa-facebook"></i></a>
                                    <a href="#"><i class="fa fa-twitter"></i></a>
                                    <a href="#"><i class="fa fa-pinterest"></i></a>
                                    <a href="#"><i class="fa fa-instagram"></i></a>
                                </div>--%>
                            </div>
                          
                        </div>
                    </div>
                </div>
            </div>
            <div class="hero__items set-bg" data-setbg="img/hero/hero-2.jpg" onclick="location.href='Product_Detail.aspx?id=22';">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-5 col-lg-7 col-md-8">
                            <div class="hero__text2">
                           <%--     <h6>聖誕節限定</h6>--%>
                                <h2>巨大貓草拐杖糖</h2>
                                <p>好吸好玩好有趣</p>
                                    <p>貓主子們難以抗拒的魔力</p>
                              <%--  <a href="#" class="primary-btn">Shop now <span class="arrow_right"></span></a>
                                <div class="hero__social">
                                    <a href="#"><i class="fa fa-facebook"></i></a>
                                    <a href="#"><i class="fa fa-twitter"></i></a>
                                    <a href="#"><i class="fa fa-pinterest"></i></a>
                                    <a href="#"><i class="fa fa-instagram"></i></a>
                                </div>--%>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- BannerEnd -->

    <!-- Banner Section Begin -->
    <section class="banner spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-7 offset-lg-4">
                    <div class="banner__item">
                        <div class="banner__item__pic">
                            <img src="img/banner/banner-1.jpg" alt="">
                        </div>
                        <div class="banner__item__text">
                            <h2>最舒適的溫暖小窩</h2>
                            <h6>睡個安穩的覺，有美美甜甜的夢</h6>
                            <a href="Product_Bed.aspx">前往選購</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-5">
                    <div class="banner__item banner__item--middle">
                        <div class="banner__item__pic">
                            <img src="img/banner/banner-2.jpg" alt="">
                        </div>
                        <div class="banner__item__text">
                            <h2>用力的抓吧</h2>
                             <h6>磨磨抓子，開心過每一天</h6>
                            <a href="Product_Play.aspx">前往選購</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-7">
                    <div class="banner__item banner__item--last">
                        <div class="banner__item__pic">
                            <img src="img/banner/banner-3.jpg" alt="">
                        </div>
                        <div class="banner__item__text">
                            <h2>一起出去玩</h2>
                            <h6>帶著寶貝一起看看這世界的美好</h6>
                            <a href="Product_GoOut.aspx">前往選購</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Banner Section End -->

    <!-- 推荐商品-->
    <section class="product spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <ul class="filter__controls">
                        <li class="active" data-filter="*">喵嗚推薦</li>
                        <li data-filter=".new-arrivals">新進商品</li>
                        <li data-filter=".hot-sales">熱賣商品</li>
                    </ul>
                </div>
            </div>
            <div class="row product__filter">
         
                <div class="col-lg-3 col-md-6 col-sm-6 col-md-6 col-sm-6 mix new-arrivals">
                    <div class="product__item">
                        <div class="product__item__pic set-bg" >
                            <asp:ImageButton ID="Image1" runat="server" cssclass="product__item__pic set-bg" Onclick="Image1_Click"/>
                            <%--<asp:Image ID="Image1" runat="server" cssclass="product__item__pic set-bg" />--%>
                        </div>
                        <div class="product__item__text">
                            <h6><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></h6>
                            <h5> <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></h5>
                              <div>
                                <a>   <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="img/icon/heart.png"/> 
                                      <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="img/icon/search.png" OnClick="ImageButton2_Click"/>
                                      <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="img/icon/cart.png" OnClick="ImageButton3_Click"/></a>
                                      <asp:HiddenField ID="HiddenField1" runat="server" />
                           </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6 col-md-6 col-sm-6 mix hot-sales">
                    <div class="product__item">
                        <div class="product__item__pic set-bg" >
                            <%--<asp:Image ID="Image2" runat="server" cssclass="product__item__pic set-bg"/>--%>
                            <asp:ImageButton ID="Image2" runat="server" cssclass="product__item__pic set-bg" onclick="Image2_Click"/>
                        </div>
                        <div class="product__item__text">
                            <h6><asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></h6>
                            <h5> <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></h5>
                              <div>
                                <a><asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="img/icon/heart.png"/> 
                                    <asp:ImageButton ID="ImageButton5" runat="server" ImageUrl="img/icon/search.png" onclick="ImageButton5_Click"/>
                                    <asp:ImageButton ID="ImageButton6"  runat="server" ImageUrl="img/icon/cart.png" OnClick="ImageButton6_Click"/></a>
                                  <asp:HiddenField ID="HiddenField2" runat="server" />
                           </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6 col-md-6 col-sm-6 mix new-arrivals">
                    <div class="product__item">
                        <div class="product__item__pic set-bg" >
                            <%--<asp:Image ID="Image3" runat="server" cssclass="product__item__pic set-bg"/>--%>
                            <asp:ImageButton ID="Image3" runat="server" cssclass="product__item__pic set-bg" OnClick="Image3_Click" />

                        </div>
                        <div class="product__item__text">
                            <h6><asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></h6>
                            <h5> <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label></h5>
                              <div>
                                <a><asp:ImageButton ID="ImageButton7" runat="server" ImageUrl="img/icon/heart.png"/> 
                                    <asp:ImageButton ID="ImageButton8" runat="server" ImageUrl="img/icon/search.png" onclick="ImageButton8_Click"/>
                                    <asp:ImageButton ID="ImageButton9" runat="server" ImageUrl="img/icon/cart.png" OnClick="ImageButton9_Click"/></a>
                                  <asp:HiddenField ID="HiddenField3" runat="server" />
                           </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6 col-md-6 col-sm-6 mix hot-sales">
                    <div class="product__item">
                        <div class="product__item__pic set-bg" >
                            <%--<asp:Image ID="Image4" runat="server" cssclass="product__item__pic set-bg"/>--%>
                            <asp:ImageButton ID="Image4" runat="server" cssclass="product__item__pic set-bg" onclick="Image4_Click" />
                        </div>
                        <div class="product__item__text">
                            <h6><asp:Label ID="Label7" runat="server" Text="Label"></asp:Label></h6>
                            <h5> <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label></h5>
                              <div>
                                <a><asp:ImageButton ID="ImageButton10" runat="server" ImageUrl="img/icon/heart.png"/> 
                                    <asp:ImageButton ID="ImageButton11" runat="server" ImageUrl="img/icon/search.png" onclick="ImageButton11_Click"/>
                                    <asp:ImageButton ID="ImageButton12" runat="server" ImageUrl="img/icon/cart.png" OnClick="ImageButton12_Click"/></a>
                                  <asp:HiddenField ID="HiddenField4" runat="server" />
                           </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6 col-md-6 col-sm-6 mix new-arrivals">
                    <div class="product__item">
                        <div class="product__item__pic set-bg" >
                            <%--<asp:Image ID="Image5" runat="server" cssclass="product__item__pic set-bg"/>--%>
                            <asp:ImageButton ID="Image5" runat="server" cssclass="product__item__pic set-bg" onclick="Image5_Click" />
                        </div>
                        <div class="product__item__text">
                            <h6><asp:Label ID="Label9" runat="server" Text="Label"></asp:Label></h6>
                            <h5> <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label></h5>
                              <div>
                                <a><asp:ImageButton ID="ImageButton13" runat="server" ImageUrl="img/icon/heart.png"/> 
                                    <asp:ImageButton ID="ImageButton14" runat="server" ImageUrl="img/icon/search.png" OnClick="ImageButton14_Click"/>
                                    <asp:ImageButton ID="ImageButton15" runat="server" ImageUrl="img/icon/cart.png" OnClick="ImageButton15_Click"/></a>
                                  <asp:HiddenField ID="HiddenField5" runat="server" />
                           </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6 col-md-6 col-sm-6 mix hot-sales">
                    <div class="product__item">
                        <div class="product__item__pic set-bg" >
                            <%--<asp:Image ID="Image6" runat="server" cssclass="product__item__pic set-bg"/>--%>
                            <asp:ImageButton ID="Image6" runat="server" cssclass="product__item__pic set-bg" onclick="Image6_Click" />
                        </div>
                        <div class="product__item__text">
                            <h6><asp:Label ID="Label11" runat="server" Text="Label"></asp:Label></h6>
                            <h5> <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label></h5>
                              <div>
                                <a><asp:ImageButton ID="ImageButton16" runat="server" ImageUrl="img/icon/heart.png"/> 
                                    <asp:ImageButton ID="ImageButton17" runat="server" ImageUrl="img/icon/search.png" OnClick="ImageButton17_Click" />
                                    <asp:ImageButton ID="ImageButton18" runat="server" ImageUrl="img/icon/cart.png" OnClick="ImageButton18_Click"/></a>
                                  <asp:HiddenField ID="HiddenField6" runat="server" />
                           </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6 col-md-6 col-sm-6 mix new-arrivals">
                    <div class="product__item">
                        <div class="product__item__pic set-bg" >
                            <%--<asp:Image ID="Image7" runat="server" cssclass="product__item__pic set-bg"/>--%>
                            <asp:ImageButton ID="Image7" runat="server" cssclass="product__item__pic set-bg" onclick="Image7_Click" />
                        </div>
                        <div class="product__item__text">
                            <h6><asp:Label ID="Label13" runat="server" Text="Label"></asp:Label></h6>
                            <h5> <asp:Label ID="Label14" runat="server" Text="Label"></asp:Label></h5>
                              <div>
                                <a><asp:ImageButton ID="ImageButton19" runat="server" ImageUrl="img/icon/heart.png"/> 
                                    <asp:ImageButton ID="ImageButton20" runat="server" ImageUrl="img/icon/search.png" OnClick="ImageButton20_Click" />
                                    <asp:ImageButton ID="ImageButton21" runat="server" ImageUrl="img/icon/cart.png" OnClick="ImageButton21_Click"/></a>
                                  <asp:HiddenField ID="HiddenField7" runat="server" />
                           </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6 col-md-6 col-sm-6 mix hot-sales">
                    <div class="product__item">
                        <div class="product__item__pic set-bg" >
                            <%--<asp:Image ID="Image8" runat="server" cssclass="product__item__pic set-bg"/>--%>
                            <asp:ImageButton ID="Image8" runat="server" cssclass="product__item__pic set-bg" onclick="Image8_Click" />
                        </div>
                        <div class="product__item__text">
                            <h6><asp:Label ID="Label15" runat="server" Text="Label"></asp:Label></h6>
                            <h5> <asp:Label ID="Label16" runat="server" Text="Label"></asp:Label></h5>
                              <div>
                                <a><asp:ImageButton ID="ImageButton22" runat="server" ImageUrl="img/icon/heart.png"/> 
                                    <asp:ImageButton ID="ImageButton23" runat="server" ImageUrl="img/icon/search.png" onclick="ImageButton23_Click"/>
                                    <asp:ImageButton ID="ImageButton24" runat="server" ImageUrl="img/icon/cart.png" OnClick="ImageButton24_Click"/></a>
                                  <asp:HiddenField ID="HiddenField8" runat="server" />
                           </div>
                        </div>
                    </div>
                </div>
           
                </div>
            </div>
    </section>
    <!-- 推荐商品 -->

    <!-- 本周限量推荐 -->
    <section class="categories spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="categories__text">
                        <h2>喵鳴的床 <br /> <span>&nbsp;&nbsp;&nbsp;&nbsp;舒壓小物</span> <br /> 外出用品</h2>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="categories__hot__deal">
                        <img src="img/product-sale.png" alt="">
                       <%-- <div class="hot__deal__sticker">
                            <span>Sale Of</span>
                            <h5>$29.99</h5>
                        </div>--%>
                    </div>
                </div>
                <div class="col-lg-4 offset-lg-1">
                    <div class="categories__deal__countdown">
                        <span>本週限量商品</span>
                        <h2>It's A Piece Of Cake</h2>
                        <div class="categories__deal__countdown__timer" id="countdown">
                            <div class="cd-item">
                                <span>3</span>
                                <p>Days</p>
                            </div>
                            <div class="cd-item">
                                <span>1</span>
                                <p>Hours</p>
                            </div>
                            <div class="cd-item">
                                <span>50</span>
                                <p>Minutes</p>
                            </div>
                            <div class="cd-item">
                                <span>18</span>
                                <p>Seconds</p>
                            </div>
                        </div>
                        <a href="Product_Detail.aspx?id=24" class="primary-btn">前往搶購</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- 本周限量推荐 -->

    <!-- 部落格 -->
   <%-- <section class="instagram spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <div class="instagram__pic">
                        <div class="instagram__pic__item set-bg" data-setbg="img/instagram/instagram-1.jpg"></div>
                        <div class="instagram__pic__item set-bg" data-setbg="img/instagram/instagram-2.jpg"></div>
                        <div class="instagram__pic__item set-bg" data-setbg="img/instagram/instagram-3.jpg"></div>
                        <div class="instagram__pic__item set-bg" data-setbg="img/instagram/instagram-4.jpg"></div>
                        <div class="instagram__pic__item set-bg" data-setbg="img/instagram/instagram-5.jpg"></div>
                        <div class="instagram__pic__item set-bg" data-setbg="img/instagram/instagram-6.jpg"></div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="instagram__text">
                        <h2>Instagram</h2>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
                        labore et dolore magna aliqua.</p>
                        <h3>#Male_Fashion</h3>
                    </div>
                </div>
            </div>
        </div>
    </section>--%>
    <!-- 部落格 -->

    <!-- Latest Blog Section Begin -->
   <%-- <section class="latest spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <span>Latest News</span>
                        <h2>Fashion New Trends</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4 col-md-6 col-sm-6">
                    <div class="blog__item">
                        <div class="blog__item__pic set-bg" data-setbg="img/blog/blog-1.jpg"></div>
                        <div class="blog__item__text">
                            <span><img src="img/icon/calendar.png" alt=""> 16 February 2020</span>
                            <h5>What Curling Irons Are The Best Ones</h5>
                            <a href="#">Read More</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-6">
                    <div class="blog__item">
                        <div class="blog__item__pic set-bg" data-setbg="img/blog/blog-2.jpg"></div>
                        <div class="blog__item__text">
                            <span><img src="img/icon/calendar.png" alt=""> 21 February 2020</span>
                            <h5>Eternity Bands Do Last Forever</h5>
                            <a href="#">Read More</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-6">
                    <div class="blog__item">
                        <div class="blog__item__pic set-bg" data-setbg="img/blog/blog-3.jpg"></div>
                        <div class="blog__item__text">
                            <span><img src="img/icon/calendar.png" alt=""> 28 February 2020</span>
                            <h5>The Health Benefits Of Sunglasses</h5>
                            <a href="#">Read More</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>--%>
    <!-- Latest Blog Section End -->

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptHolder" Runat="Server">
  <%-- <script>
       $(function () {
           $('#ImageButton1').click(function () {
               $('#ImageButton1>ImageButton1').attr({
                   href= "img/icon/heart.png"});
           },
               function () {
                   $('#ImageButton1>ImageButton1').attr({ href= "img/icon/heartRed.png"});
               });
       });
   </script>--%>
</asp:Content>

