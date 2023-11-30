<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thông tin về Chúng tôi</title>
     <!-- reset CSS -->
     <link rel="stylesheet" href="assets/css/reset.css" />
     <link rel="stylesheet" href="assets/css/index.css">
     <!-- <link rel="stylesheet" href="./assets/css/product.css"> -->

     <!-- embed fonts -->
     <link rel="preconnect" href="https://fonts.googleapis.com" />
     <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />

     <link rel="preconnect" href="https://fonts.googleapis.com" />
     <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
     <link rel="preconnect" href="https://fonts.googleapis.com" />
     <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />

     <!-- FONT GOOGLE -->
     <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;700&display=swap" rel="stylesheet">
     
     <!-- FONT AWRSOME -->
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">


     <link
         href="https://fonts.googleapis.com/css2?family=Lato:wght@700&display=swap"
         rel="stylesheet"
     />
     <link
         href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
         rel="stylesheet"
     />

     <!-- Icon -->
     <link
         rel="stylesheet"
         href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
         integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
         crossorigin="anonymous"
         referrerpolicy="no-referrer"
     />
     <!-- styles -->
     <link rel="stylesheet" href="assets/css/style.css" />
     <link rel="stylesheet" href="assets/css/about.css" />
</head>
<body>
    <!-- HEADER -->
    <header>
        <div class="header__content">
            <a href="index.jsp"><i class="fa fa-drum"></i> <span>Dr/</span>um</a>
            <div class="search">    
                <input type="text" placeholder="Tìm kiếm">
                <button type="submit">Search</button>
            </div>
            <nav>
                <ul class="menu__bar">
                    <li class="menu__items"><a href="index.jsp">Trang chính</a></li>
                    <li class="menu__items"><a href="aboutUs.jsp">Giới thiệu</a>
                        <ul class="drum__container">
                            <li class="drum__item"><a href="#">Xin chào</a></li>
                            <li class="drum__item"><a href="./aboutProduct.html">Thông tin về chúng tôi</a></li>
                            <li class="drum__item"><a href="#">Sản phẩm</a></li>
                        </ul>
                    </li>
                    <li class="menu__items"><a href="product.jsp">Sản Phẩm</a>
                        <ul class="drum__container">
                            <li class="drum__item"><a href="#">Trống điện</a></li>
                            <li class="drum__item"><a href="#">Trống bộ</a></li>
                            <li class="drum__item"><a href="#">Trống lẻ</a></li>
                            <li class="drum__item"><a href="#">Percussion</a></li>
                            <li class="drum__item"><a href="#">Symbal</a></li>
                        </ul>
                    </li>
                    <li class="menu__items"><a href="#">Khuyến mãi</a></li>
                    <li class="menu__items"><a href="#">Giáo dục</a></li>
                    <li class="menu__items"><a href="policy.jsp">Chính sách</a></li>
                </ul>
            </nav>
            <div class="sign__in">
                <i class="fa fa-user"></i>
                <a href="log.jsp">Đăng Nhập</a>
            </div>
            <div class="cart__shopping">
                <i class="fa fa-shopping-cart"></i>
                <a href="cart.jsp">Giỏ Hàng</a>
            </div>
        </div>
    </header>
    <!-- ABOUT CONTENT -->
    <div class="about__content">  
        <div class="about__content__inner"> 
            <div class="aboutPro__background" id="aboutProBackground" >

            </div>
            <div class="about__row">  
                <div class="about__row__text">
                    <h4 class="about__row__sub">
                        
                        Ngày xưa, trống xuất hiện như một phương tiện giao tiếp cơ bản trong các cộng đồng. Với âm thanh đơn giản nhưng mạnh mẽ. Qua thời gian, sự sáng tạo và phát triển kỹ thuật đã đưa trống từ những chiếc trống đơn giản đến các bộ trống phức tạp và đa dạng ngày nay. Sự tiện lợi và linh hoạt của trống đã khiến nó trở thành một công cụ âm nhạc không thể thiếu trong nhiều thể loại, từ nhạc dân dụ đến rock, jazz, và thậm chí là nhạc điện tử.
Bằng sự kết hợp giữa truyền thống và hiện đại, sự ra đời và phát triển của trống đã tạo nên ảnh hưởng lớn của nó trong thế giới âm nhạc.
                    
                </div>
                <div class="about__row__two">
                    <div class="row__two__content">
                        <div class="col col-second mt-32">
                            <div class="about__two__image">
                                <img src ="/assets/img/about/DrumPlayer.jpg">
                            
                            </div>		
                        </div>
                        <div class="col col-second mt-32">
                            <div class="about__two__text">
                                <p>
                                    
                                    ‘Cung cấp mọi thứ từ trống, trang web của chúng tôi là nơi để bạn mua trống lấp đầy bất kỳ thứ gì còn thiếu trong thiết lập của bạn. 
                                    Chúng tôi cung cấp các nhãn hiệu và sản phẩm trống hot nhất với mức giá tốt nhất trên Internet và đội ngũ nhân viên của chúng tôi cam kết giúp bạn tìm được thiết bị phù hợp cho âm thanh mà bạn đang theo đuổi.’
                                </p>
    
        
                            </div>
                        </div>
                    </div>
                </div>
                <div class="about__row__three">
                    <div class="images__holder" style="clip-path: inset(0px); transition: all 2s ease 0s;">
                        <div class="images__slider" style="visibility: visible;">
                            <div class="images__slider__item img-prev" data-index="1">
                                <div class="item__image" style="background-image: url('/assets/img/about/JazzDrum.jpg')">
                                </div>
                            </div>
                            <div class="images__slider__item img-active" data-index="2">
                                <div class="item__image" style="background-image: url('/assets/img/about/ElectronicDrum.jpg')">
                                </div>
                            </div>
                            <div class="images__slider__item" data-index="3">
                                <div class="item__image" style="background-image: url('/assets/img/about/TambourineDrum.jpg')">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="content__holder" style="opacity: 1; transition: all 2s ease 0s;">
                        <div class="content__holder__main">
                            <div class="container__title">
                                <h2 itemprop="name" class="content__title">
                                        Các Loại Trống Tiêu Biểu</h2>
                            </div>
                            <div class="content__holder__inner">
                                <div class="item__content content-active" data-index="1">
                                    <p class="item__title">Trống Jazz</p>
                                    <p class="item__description">Bộ trống jazz được cho là ra đời vào những năm 20, 30 của thế kỷ 20 khi trào lưu nhạc Jazz bắt đầu thịnh hành, dần dần dàn trống jazz được sử dụng rộng thêm cho các dòng nhạc Blues, Pop và Rock.</p>
                                </div>
                                <div class="item__content" data-index="2">
                                    <p class="item__title">Trống điện tử</p>
                                    <p class="item__description">Trống điện tử, còn được gọi là trống điện, trống kỹ thuật số, hoặc bộ gõ điện tử, là một nhạc cụ điện tử hiện đại, một loại bộ tổng hợp hoặc bộ lấy mẫu đặc biệt, được thiết kế chủ yếu để thay thế cho bộ trống trống hoặc các nhạc cụ bộ gõ khác.</p>
                                </div>
                                <div class="item__content" data-index="3">
                                    <p class="item__title">Trống Tambourine</p>
                                    <p class="item__description">Trống Tambourine  hay còn được gọi là trống Lục Lạc, trống Gõ Bo được thiết kế gồm một cái trống nhỏ với các vòng kim loại tròn gắn ở vành. Loại nhạc cụ này có nguồn gốc từ Rome, Hy Lạp, vùng Lưỡng Hà, Trung Đông và Ấn Độ. </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
                <div class="about__row__four">
                    <div class="row__four__content" style="padding: 0px 26% 20px">
                        <div class="section__title__holder">
                            <div class="row__four__inner">
                                <h2 class="row__four__title">
                            sản phẩm tiêu biểu			</h2>
                            </div>
                        </div>		
                    </div>
                    <div class="list">
                        <div class="item">
                            <div class="img">
                                <img src="/assets/img/product/sp1.jpg" alt="Roland VAD 706">
                            </div>
                            <div class="item_content">
                                <div class="title">Roland VAD 706</div>
                                <div class="desc">Bộ trống điện tử tinh tế với kiểu dáng gi</div>
                                <div class="price">Liên Hệ</div>
                        
                            </div>
                        </div>
                        <div class="item">
                            <div class="img">
                                <img src="/assets/img/product/sp2.jpg" alt="Roland VAD 507">
                            </div>
                            <div class="item_content">
                                <div class="title">Roland VAD 507</div>
                                <div class="desc">Bộ trống điện tử tinh tế với kiểu dáng gi</div>
                                <div class="price">124,000,000đ</div>
                        
                            </div>
                        </div>
                        <div class="item">
                            <div class="img">
                                <img src="/assets/img/product/sp3.jpg" alt="Roland VAD 504">
                            </div>
                            <div class="item_content">
                                <div class="title">Roland VAD 504</div>
                                <div class="desc">Bộ trống điện tử tinh tế với kiểu dáng gi</div>
                                <div class="price">99,000,000đ</div>
                        
                            </div>
                        </div>
                        <div class="item">
                            <div class="img">
                                <img src="/assets/img/product/sp4.jpg" alt="Alesis Turbo Mesh Kit">
                            </div>
                            <div class="item_content">
                                <div class="title">Alesis Turbo Mesh Kit</div>
                                <div class="desc">Bộ trống điện tử 7 chi tiết mặt lưới </div>
                                <div class="price">9,450,000đ</div>
                        
                            </div>
                        </div>
                        <div class="item">
                            <div class="img">
                                <img src="/assets/img/product/sp5.jpg" alt="Alesis Crimson II SE">
                            </div>
                            <div class="item_content">
                                <div class="title">Alesis Crimson II SE</div>
                                <div class="desc">Bộ trống điện tử đệm mặt lưới 9 chi tiết </div>
                                <div class="price">29,300,000đ</div>
                        
                            </div>
                        </div>
                        <div class="item">
                            <div class="img">
                                <img src="/assets/img/product/sp6.jpg" alt="Trống Pearl Roadshow 505">
                            </div>
                            <div class="item_content">
                                <div class="title">Trống Pearl Roadshow 505</div>
                                <div class="desc">Pearl Roadshow series  (5 trống, kick 20") 20"x16" Bass - 10"x07" Tom - 12"x08&amp;quo</div>
                                <div class="price">11,600,000đ</div>
                        
                            </div>
                        </div>
                        
                        

                    </div>
                </div>
            </div>

        </div>

    </div>
    <!-- FOOTER -->
    <footer>
        <div class="footer__main">
            <div class="footer__items">
                <h3>Thông tin của hàng</h3>
                <nav>
                    <ul>
                        <li><a href="#">Giới thiệu cửa hàng</a></li>
                        <li><a href="#">Hệ thống showrom, đại lý</a></li>
                        <li><a href="#">Liên hệ / Góp ý</a></li>
                        <li><a href="#">Mua trả góp</a></li>
                        <li><a href="#">Chương trình khách hàng thân thiết</a></li>
                        <li><a href="#">Điều khoản sử dụng Website</a></li>
                        <li><a href="#">Tuyển dụng</a></li>
                    </ul>
                </nav>
            </div>
            <div class="footer__items">
                <h3>Hướng dẫn chung</h3>
                <nav>
                    <ul>
                        <li><a href="#">Giao hàng - Đổi trả</a></li>
                        <li><a href="#">Hướng dẫn mua hàng</a></li>
                        <li><a href="#">Thanh toán và bảo mật</a></li>
                        <li><a href="#">Chính sách bảo hành</a></li>
                        <li><a href="#">Bảo trì đàn piano</a></li>
                        <li><a href="#">Kích hoạt bảo hành</a></li>
                    </ul>
                </nav>
            </div>
            <div class="footer__items">
                <h3>Hỗ trợ khách hàng</h3>
                <p>Gọi mua hàng: <span>1800 6715 </span> (Miễn Phí) </p>
                <p>Khiếu nại, Bảo hành: <span>028710 88 333</span></p>
                <p>Thời gian phục vụ: 8h-22h</p>
                <p>Email: <a href="">info@gteam49.vn</a></p>
            </div>
            <div class="footer__items">
                <div class="about__us">
                    <h3>Mạng xã hội</h3>
                    <div class="about__us__icon">
                        <i class="fa-brands fa-square-facebook" style="color: #0080ff;"></i>                            
                        <i class="fab fa-youtube-square" style="color: #ff0000;"></i>
                        <i class="fab fa-twitter-square" style="color: #50a3f6;"></i>
                    </div>
                </div>
                <div class="about__us">
                    <h3>Hệ thống Website</h3>
                    <nav>
                        <ul>
                            <li><a href="#">Team 49 Shop</a></li>
                            <li><a href="#">Team 49 Music University</a></li>
                        </ul>
                    </nav>
                </div>
            </div>
            <div class="footer__items">
                <h3>Công ty Cổ Phần TM-DV-SX Team 49</h3>
                <div class="desc">
                    <p>GPKD số 0304757232 do sở Kế hoạch Đầu tư TPHCM cấp ngày 01/01/2007 </p>
                    <p>Địa chỉ: 386 CMT8, P.10, Q.3, TPHCM</p>
                    <p>Điện thoại: <span>1800 6715</span></p>
                    <p>Hotline: <span>028710 88 333</span></p>
                    <p>Email: <a href="#">info@team49.vn</a></p>
                </div>
            </div>
            <div class="footer__items">
                <div class="payment">
                    <h3>cách thức thanh toán</h3>
                    <a href="#">
                        <img src="https://vietthuong.vn/assets/frontend/images/thanhtoan.png" alt="Phuong_Thuc_thanh_toan">
                    </a>
                </div>
                <div class="certification">
                    <h3>Chứng nhận</h3>
                    <a href="">
                        <img src="https://vietthuong.vn/assets/frontend/images/cntb.png" alt="">
                    </a>
                </div>
            </div>
        </div>
        <div class="footer__copyright">
            <p>&copy: 2023 Đồ án Lập Trình Web HK5. | Design by <span>Team 49</span></p>
        </div>
    </footer> 
    
    
</body>
 <!-- MAIN JS -->
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
 <script src="js/about.js"></script>
</html>