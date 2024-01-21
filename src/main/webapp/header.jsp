<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<header class="main-header ">
    <c:set var="auth" value="${sessionScope.auth}"/>
    <div class="header__content">
        <p>
            <a href="./index.jsp"><i class="fa fa-drum"></i> <span>Dr/</span>um</a>
        </p>
        <div class="search">
            <label>
                <input type="text" placeholder="Tìm kiếm"/>
            </label>
            <button type="submit">Search</button>
        </div>
        <nav>
            <ul class="menu__bar">
                <li class="menu__items">
                    <a href="./index.jsp">Trang chính</a>
                </li>
                <li class="menu__items"><a href="aboutUs.jsp">Giới thiệu</a>
                </li>
                <li class="menu__items">
                    <a href="products">Sản Phẩm</a>
                    <ul class="drum__container">
                        <li class="drum__item">
                            <a href="#">Trống điện</a>
                        </li>
                        <li class="drum__item">
                            <a href="#">Trống bộ</a>
                        </li>
                        <li class="drum__item">
                            <a href="#">Trống lẻ</a>
                        </li>
                        <li class="drum__item">
                            <a href="#">Percussion</a>
                        </li>
                        <li class="drum__item">
                            <a href="#">Symbal</a>
                        </li>
                    </ul>
                </li>
                <li class="menu__items">
                    <a href="policy.jsp">Chính sách</a>
                </li>
            </ul>
        </nav>


        <c:choose>
            <c:when test="${empty auth}">
                <a href="logIn.jsp" class="sign__in">
                    <i class="fa fa-user"></i>
                    <span>Đăng Nhập</span>
                </a>
            </c:when>
            <c:otherwise>
                <div class="avatar-user" >
                    <c:choose>
                        <c:when test="${auth.gender == 'F'}">
                            <img src="./assets/img/icon/female.png" alt="">
                        </c:when>
                        <c:otherwise>
                            <img src="./assets/img/icon/male.png" alt="">
                        </c:otherwise>
                    </c:choose>

                    <ul class="user-menu">
                        <li>
                            <a href="profile.jsp">Xin chào  ${auth.fullName}</a>
                        </li>
                        <li>
                            <a href="profile.jsp">Cài đặt</a>
                        </li>
                        <c:if test="${auth.getRole() == 1}">
                            <li>
                                <a href="adminUserIndex">Quản lý</a>
                            </li>
                        </c:if>
                        <li>
                            <a href="logout" class="sign-out">Đăng xuất</a>
                        </li>
                    </ul>
                </div>
            </c:otherwise>
        </c:choose>

        <a href="cart.jsp" class="cart__shopping">
            <i class="fa fa-shopping-cart"></i>
            <span >Giỏ Hàng</span>
        </a>
    </div>
</header>