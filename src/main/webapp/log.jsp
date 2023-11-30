<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Đăng nhập</title>

        <!-- reset CSS -->
        <link rel="stylesheet" href="assets/css/reset.css" />

        <!-- embed fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />

        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />

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
        <link rel="stylesheet" href="assets/css/log.css" />
    </head>
    <body>
        <!-- Form -->

        <div class="content">
            <!-- Log In -->
            <div class="form-wrapper log-in open" id="log-in">
                <a href="index.jsp" class="back-cta">
                    <i class="fa-solid fa-chevron-left"></i>
                    Trở về trang chủ
                </a>
                <form
                    action="profile.jsp"

                    class="form"
                    autocomplete="off"
                >
                    <p class="title">Đăng Nhập</p>
                    <label for="username__login">Tài khoản</label>
                    <div class="user-input">
                        <i class="fa-solid fa-user ic"></i>
                        <input
                            id="username__login"
                            type="text"
                            name="username"
                            placeholder="Nhập tên tài khoản hoặc email..."
                        />
                    </div>

                    <label for="password__login">Mật khẩu</label>
                    <div class="pw-input">
                        <i class="fa-solid fa-key ic"></i>
                        <input
                            id="password__login"
                            name="password"
                            type="password"
                            placeholder="Nhập mật khẩu..."
                        />
                    </div>

                    <div class="forget-pw">
                        <a href="#!">Quên mật khẩu ?</a>
                    </div>

                    <button
                        href="./../html/profile.html"
                        type=""
                        class="submit"
                    >
                        ĐĂNG NHẬP
                    </button>

                    <span>Hoặc là đăng nhập với</span>

                    <div class="log-in-op">
                        <a href="#!"><i class="fa-brands fa-facebook-f"></i></a>
                        <a href="#!"><i class="fa-brands fa-google"></i></a>
                        <a href="#!"><i class="fa-brands fa-twitter"></i></a>
                    </div>

                    <div class="footer">
                        <span>Chưa đăng ký tài khoản ?</span>

                        <button type="button" class="link" id="sign-up-link">
                            Đăng ký
                        </button>
                    </div>
                </form>
            </div>

            <!-- Sign Up -->
            <div class="form-wrapper sign-up hidden" id="sign-up">
                <a href="./index.html" class="back-cta">
                    <i class="fa-solid fa-chevron-left"></i>
                    Trở về trang chủ
                </a>
                <form action="" class="form" autocomplete="off">
                    <p class="title">Đăng Ký</p>
                    <label for="username__signup">Tài khoản</label>
                    <div class="user-input">
                        <i class="fa-solid fa-user ic"></i>
                        <input
                            id="username__signup"
                            name="username"
                            type="text"
                            placeholder="Nhập tên tài khoản hoặc email... "
                            required
                        />
                    </div>

                    <label for="email__signup">Email</label>
                    <div class="user-input">
                        <i class="fa-solid fa-user ic"></i>
                        <input
                            id="email__signup"
                            name="email__signup"
                            type="email"
                            placeholder="Nhập email đăng ký... "
                            pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$"
                            required
                        />
                    </div>

                    <label for="password__signup">Mật khẩu</label>
                    <div class="pw-input">
                        <i class="fa-solid fa-key ic"></i>
                        <input
                            id="password__signup"
                            name="password__signup"
                            type="password"
                            minlength="6"
                            placeholder="Nhập mật khẩu..."
                            required
                        />
                    </div>
                    <label for="confirm-password">Xác nhận mật khẩu</label>
                    <div class="pw-input">
                        <i class="fa-solid fa-key ic"></i>
                        <input
                            id="confirm-password"
                            name="confirm-password"
                            type="password"
                            minlength="6"
                            placeholder="Xác nhận mật khẩu"
                            required
                        />
                    </div>

                    <button href="#!" type="submit" class="submit">
                        ĐĂNG KÝ
                    </button>

                    <span>Hoặc là đăng ký với</span>

                    <div class="log-in-op">
                        <a href="#!"><i class="fa-brands fa-facebook-f"></i></a>
                        <a href="#!"><i class="fa-brands fa-google"></i></a>
                        <a href="#!"><i class="fa-brands fa-twitter"></i></a>
                    </div>

                    <div class="footer">
                        <span>Đã có tài khoản ?</span>

                        <button type="button" class="link" id="log-in-link">
                            Đăng Nhập
                        </button>
                    </div>
                </form>
            </div>

            <!-- Forgot password -->
            <div class="form-wrapper sign-up hidden" id="forgot-pw__form">
                <a href="./index.html" class="back-cta">
                    <i class="fa-solid fa-chevron-left"></i>
                    Trở về trang chủ
                </a>
                <form action="" class="form" autocomplete="off">
                    <p class="title">Quên mật khẩu</p>
                    <label for="username__forgot">Tài khoản</label>
                    <div class="user-input">
                        <i class="fa-solid fa-user ic"></i>
                        <input
                            id="username__forgot"
                            name="username_forgot"
                            type="text"
                            placeholder="Nhập email... "
                            required
                        />
                    </div>

                    <button href="#!" type="submit" class="submit">
                        XÁC NHẬN
                    </button>

                    <div class="footer">
                        <span>Quay trở lại đăng nhập</span>

                        <button type="button" class="link login-in-pw" id="">
                            Đăng Nhập
                        </button>
                    </div>
                </form>
            </div>
        </div>
        <script src="js/log.js"></script>
    </body>
</html>
