<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="service.ImageService" %>
<%@ page import="dao.ImageDAO" %>
<%@ page import="java.awt.*" %>
<%@ page import="java.text.DecimalFormat" %>
<%@ page import="bean.*" %>
<%@ page import="service.ProductDetailService" %>
<%@ page import="java.util.Locale" %>
<%@ page import="java.text.NumberFormat" %>
<%@ page import="dao.ColorDAO" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%

    int selectedProductId  = Integer.parseInt(request.getParameter("selectedProductId"));
    Product selectedProduct = ProductDetailService.getInstance().getProductById(selectedProductId);
    String selectedBrandName = selectedProduct.getName();
    double discount = (double) request.getAttribute("discount");
    List<Image_Product> productImages = (List<Image_Product>) request.getAttribute("productImages");
    List<Product_Color> productColors = (List<Product_Color>) request.getAttribute("productColors");

    // Check if selectedProduct is not null before accessing its properties
    if (selectedProduct != null) {
        String basePrice = NumberFormat.getCurrencyInstance(new Locale("vi", "VN")).format(selectedProduct.getTotalPrice());
        double priceDiscount = selectedProduct.getTotalPrice() * (1 - discount);
        String discountPrice = NumberFormat.getCurrencyInstance(new Locale("vi", "VN")).format(priceDiscount);
        // Calculate discounted price
%>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Chi tiết sản phẩm</title>

        <!-- reset CSS -->
        <link rel="stylesheet" href="./assets/css/reset.css" />
        <link rel="stylesheet" href="./assets/css/index.css" />
        <!-- <link rel="stylesheet" href="./assets/css/product.css"> -->

        <!-- embed fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />

        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />

        <!-- FONT GOOGLE -->
        <link
            href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;700&display=swap"
            rel="stylesheet"
        />

        <!-- FONT AWRSOME -->
        <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
        />

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
        <link rel="stylesheet" href="./assets/css/style.css" />
        <link rel="stylesheet" href="./assets/css/productDetail.css" />

        <!-- OWL CAROUSEL CSS -->
        <link rel="stylesheet" href="./assets/css/owl.carousel.min.css" />
        <link
            rel="stylesheet"
            href="./assets/css/owl.theme.default.min.css"
        />
    </head>
    <body>
        <!-- HEADER -->
        <c:import url="header.jsp"/>

        <!-- PRODUCT DETAIL -->
        <div class="product__detail">
            <div class="product">
                <div class="product-title"><%= selectedProduct.getName() %></div>

                <div id="product__detail" class="product-content detail">
                    <div class="product__img">
                        <div class="product__img-spot">
                            <img src="<%= ((List<Image_Product>)request.getAttribute("productImages")).get(0).getLink()%>" alt="" />
                            <button class="cta-img left">
                                <i class="fa-solid fa-arrow-left-long"></i>
                            </button>
                            <button class="cta-img right">
                                <i class="fa-solid fa-arrow-right-long"></i>
                            </button>
                        </div>
                        <div class="product__img-sub">
                            <% for (Image_Product img : productImages) { %>
                            <div class="item">
                                <img class="item-img" src="<%= ImageDAO.getImageByProductId(img.getDetailId())%>" alt=""/>
                            </div>
                            <% } %>
                        </div>
                    </div>
                    <div class="product__info">
                        <div class="product__info-row">
                            <div class="product__info-price">
                                <p class="discount-price"><%= discountPrice %> VND</p>
                                <p class="base-price"><%= basePrice %> VND</p>
                            </div>
                            <p class="discount"><%= (discount * 100) %> %</p>
                        </div>
                        <div class="product__info-row">
                            <div class="product-color title">Màu sắc</div>
                            <div class="product-color-cta">
                                <% List<Product_Color> colorList = (List<Product_Color>) request.getAttribute("productColors");
                                    for (Product_Color color : colorList) { %>
<%--                                    <button class="cta <%= )ImageDAO.getImageByProductId(color.getId() %>"></button>--%>
                                <form action="cart" method="get">
                                    <label class="option_color" style="background-color: <%= color.getCodeColor()%>">
                                        <input type="radio" name="selectedCodeColor" hidden="" value="<%= color.getCodeColor()%>">
                                    </label>
                                </form>
                                <% } %>
                            </div>
                        </div>
                        <div class="product__info-row">
                            <div class="product-color title">Thương hiệu: </div>
                            <div class="product-brand title"><%= selectedBrandName %></div>
                        </div>
                        <div class="product__info-row">
                            <div class="product_desc">
                                <p class="title">Giới thiệu</p>
                                <p class="introduce">
                                    <%= selectedProduct.getDescription()%>
                                </p>
                                <a href="#product__info">
                                    <button class="more-detail">
                                        Thêm thông tin
                                    </button>
                                </a>
                            </div>
                        </div>
                        <div class="product__info-row">
                            <div class="quantity">
                                <p class="count">1</p>
                                <div class="quantity-cta">
                                    <button class="up">
                                        <i class="fa-solid fa-caret-up"></i>
                                    </button>
                                    <button class="down">
                                        <i class="fa-solid fa-caret-down"></i>
                                    </button>
                                </div>
                            </div>
                            <a href="<%= request.getContextPath()%>/cart?action=buy&id=<%=selectedProduct.getId()%>">
<%--                                <c:url var="link" value="cart">--%>
<%--                                    <c:param name="action" value="buy"></c:param>--%>
<%--                                    <c:param name="id" value="${item.id}"></c:param>--%>
<%--                                </c:url>--%>
<%--                                <a href="${link}">--%>
<%--                                    <div class="add">Xem chi tiết</div>--%>
<%--                                </a>--%>
                                <button class="add__cart">
                                    Thêm vào giỏ hàng
                                    <i class="fa-solid fa-cart-shopping"></i>
                                </button>
                            </a>
                        </div>
                    </div>
                </div>

                <div id="product__info" class="product-content">
                    <p class="title">
                        Sự kết hợp hoàn hảo của trống acoustic và trống điện
                    </p>

                    <p class="desc">
                        Mẫu trống điện VAD706 mang lại cho bạn một trải nghiệm
                        về trống điện tử chưa từng có trước đây, đó là sự kết
                        hợp giữa công nghệ dẫn đầu V-Drums kết hợp với các chi
                        tiết thủ công được thiết kế tinh xảo, cao cấp theo hình
                        mẫu của một bộ trống acoustic. Mẫu thiết kế của dòng
                        trống cao cấp V-Drums acoustic mang những tính năng nổi
                        bật với trống snare kỹ thuật số, ride, và hi-hat pads
                        qua đó đem đến những trải nghiệm âm thanh, cảm giác chơi
                        trống chi tiết và chân thật nhất cho người dùng.
                    </p>

                    <p class="desc">
                        TD-50X (Hộp tiếng đi cùng trống điện Roland) - một thế
                        hệ mới sau này cũng mang đến cảm giác chơi, sự phản hồi
                        khi đánh vào trống, âm thanh độc đáo vượt trội cùng với
                        khả năng thiết lập âm thanh riêng biệt cho người chơi và
                        khả năng kết nối với các thiết bị khác qua đó người sử
                        dụng trống dễ dàng chơi trong mọi tình huống khác nhau.
                    </p>

                    <p class="desc">
                        Trống được thiết kế hoàn toàn bằng gỗ cùng với hệ thống
                        cảm biến trên trống nhờ vậy mà người chơi hoàn toàn có
                        thể cảm nhận được cảm giác của một bộ trống cơ thực sự.
                        Với 4 kiểu dáng bắt mắt của VAD 706 bạn cũng có thể chọn
                        lấy một bộ phù hợp với phong cách riêng của mình.
                    </p>

                    <img
                        src="./assets/img/product/sp1.jpg"
                        alt=""
                        class="info-img"
                    />

                    <p class="title">
                        VAD706 mang hình dáng và hiệu suất biểu diễn như một bộ
                        trống cơ chính hiệu
                    </p>

                    <p class="desc">
                        VAD706 tận dụng nghệ trống điện tử tiên tiến chưa từng
                        có trước đây, đó là sự kết hợp công nghệ dẫn đầu của
                        dòng trống V-Drums và các thiết kế thủ công chi tiết
                        mang lại cảm giác sang trọng và đẳng cấp hơn bao giờ
                        hết.
                    </p>

                    <p class="desc">
                        Với series này người chơi sẽ được tận hưởng hết tất cả
                        những âm thanh cao cấp và đặc trưng nhất của công nghệ
                        V-Drums mà Roland đem lại trong những buổi biểu diễn
                        live chuyên nghiệp của bạn.
                    </p>

                    <img
                        src="./assets/img/product/sp1.jpg"
                        alt=""
                        class="info-img"
                    />
                </div>
            </div>
        </div>
        <!-- FEEDBACK -->
        <section class="feedback">
            <h2>Phản hồi của khách hàng.</h2>
            <div class="feedback__content">
                <div class="owl-carousel owl-theme">
                    <div class="item">
                        <p>
                            <i class="fa fa-quote-left"></i> Lorem ipsum dolor
                            sit amet consectetur adipisicing elit. Nihil facilis
                            aspernatur temporibus magni culpa beatae repellat
                            delectus accusantium explicabo veniam?
                            <i class="fa fa-quote-right"></i>
                        </p>
                        <p class="feedback__name">GIANG</p>
                    </div>
                    <div class="item">
                        <p>
                            <i class="fa fa-quote-left"></i> Lorem ipsum dolor
                            sit amet consectetur adipisicing elit. Nihil facilis
                            aspernatur temporibus magni culpa beatae repellat
                            delectus accusantium explicabo veniam?
                            <i class="fa fa-quote-right"></i>
                        </p>
                        <p class="feedback__name">DAI</p>
                    </div>
                    <div class="item">
                        <p>
                            <i class="fa fa-quote-left"></i> Lorem ipsum dolor
                            sit amet consectetur adipisicing elit. Nihil facilis
                            aspernatur temporibus magni culpa beatae repellat
                            delectus accusantium explicabo veniam?
                            <i class="fa fa-quote-right"></i>
                        </p>
                        <p class="feedback__name">THUONG</p>
                    </div>
                </div>
            </div>
        </section>
        <!-- CONTACT -->
        <section class="contact">
            <h2>Liên Hệ</h2>
            <div class="contact__form">
                <form action="">
                    <input type="text" placeholder="Tên" />
                    <input type="text" placeholder="Họ" />
                    <input type="email" placeholder="Email" />
                    <input type="tel" placeholder="SĐT" />
                    <textarea
                        name=""
                        id=""
                        cols="30"
                        rows="10"
                        placeholder="Message"
                    ></textarea>
                    <button type="submit">Send</button>
                </form>
            </div>
            <div class="contect__map"></div>
            <div class="contact__info">
                <div class="contact__items">
                    <i class="fa fa-home"></i>
                    <p>Lorem ipsum dolor sit amet.</p>
                    <p>Lorem ipsum dolor sit amet.</p>
                </div>
                <div class="contact__items">
                    <i class="fa fa-phone"></i>
                    <p>Lorem ipsum dolor sit amet.</p>
                    <p>Lorem ipsum dolor sit amet.</p>
                </div>
                <div class="contact__items">
                    <i class="fa fa-envelope"></i>
                    <p>Lorem ipsum dolor sit amet.</p>
                    <p>Lorem ipsum dolor sit amet.</p>
                </div>
            </div>
        </section>
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
                            <li>
                                <a href="#"
                                    >Chương trình khách hàng thân thiết</a
                                >
                            </li>
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
                    <p>Gọi mua hàng: <span>1800 6715 </span> (Miễn Phí)</p>
                    <p>Khiếu nại, Bảo hành: <span>028710 88 333</span></p>
                    <p>Thời gian phục vụ: 8h-22h</p>
                    <p>Email: <a href="">info@gteam49.vn</a></p>
                </div>
                <div class="footer__items">
                    <div class="about__us">
                        <h3>Mạng xã hội</h3>
                        <div class="about__us__icon">
                            <i
                                class="fa-brands fa-square-facebook"
                                style="color: #0080ff"
                            ></i>
                            <i
                                class="fab fa-youtube-square"
                                style="color: #ff0000"
                            ></i>
                            <i
                                class="fab fa-twitter-square"
                                style="color: #50a3f6"
                            ></i>
                        </div>
                    </div>
                    <div class="about__us">
                        <h3>Hệ thống Website</h3>
                        <nav>
                            <ul>
                                <li><a href="#">Team 49 Shop</a></li>
                                <li>
                                    <a href="#">Team 49 Music University</a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>
                <div class="footer__items">
                    <h3>Công ty Cổ Phần TM-DV-SX Team 49</h3>
                    <div class="desc">
                        <p>
                            GPKD số 0304757232 do sở Kế hoạch Đầu tư TPHCM cấp
                            ngày 01/01/2007
                        </p>
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
                            <img
                                src="https://vietthuong.vn/assets/frontend/images/thanhtoan.png"
                                alt="Phuong_Thuc_thanh_toan"
                            />
                        </a>
                    </div>
                    <div class="certification">
                        <h3>Chứng nhận</h3>
                        <a href="">
                            <img
                                src="https://vietthuong.vn/assets/frontend/images/cntb.png"
                                alt=""
                            />
                        </a>
                    </div>
                </div>
            </div>
            <div class="footer__copyright">
                <p>
                    &copy: 2023 Đồ án Lập Trình Web HK5. | Design by
                    <span>Team 49</span>
                </p>
            </div>
        </footer>

        <!-- MAIN JS -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="./js/product.js"></script>

        <!-- OWL CAROUSEL JS -->
        <script src="./js/owl.carousel.min.js"></script>
        <script>
            $(".owl-carousel").owlCarousel({
                loop: true,
                nav: false,
                autoplay: true,
                autoplayTimeout: 3000,
                autoplayHoverPause: true,
                responsive: {
                    0: {
                        items: 1,
                    },
                },
            });
        </script>
    </body>
</html>
<%
    } else {
        // Handle the case where selectedProduct is null
    }
%>