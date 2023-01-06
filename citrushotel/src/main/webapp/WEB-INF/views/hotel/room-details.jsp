<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="hotel">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=chrome">
    <title>Citrus Hotel</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Lora:400,700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Cabin:400,500,600,700&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="../resource-hotel/css/font.css" type="text/css">
    <link rel="stylesheet" href="../resource-hotel/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="../resource-hotel/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="../resource-hotel/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="../resource-hotel/css/flaticon.css" type="text/css">
    <link rel="stylesheet" href="../resource-hotel/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="../resource-hotel/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="../resource-hotel/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="../resource-hotel/css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="../resource-hotel/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="../resource-hotel/css/style.css" type="text/css">
</head>

<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Offcanvas Menu Section Begin -->
    <div class="offcanvas-menu-overlay"></div>
    <div class="canvas-open">
        <i class="icon_menu"></i>
    </div>
    <div class="offcanvas-menu-wrapper">
        <div class="canvas-close">
            <i class="icon_close"></i>
        </div>
        <div class="search-icon  search-switch">
            <i class="icon_search"></i>
        </div>
        <div class="header-configure-area">
        </div>
        <nav class="mainmenu mobile-menu">
            <ul>
                <li><a href="./index.html">홈</a></li>
                <li class="active"><a href="./rooms.html">객실</a>
                    <ul class="dropdown">
                        <li><a href="/hotel/rooms.do?room_type='std'">Standard Room</a></li>
                        <li><a href="/hotel/rooms.do?room_type='dlx'">Deluxe Room</a></li>
                        <li><a href="/hotel/rooms.do?room_type='fml'">Family Room</a></li>
                        <li><a href="/hotel/rooms.do?room_type='prm'">Premium Room</a></li>
                    </ul>
                </li>
                <li><a href="./about-us.html">호텔</a></li>
                <!-- <li><a href="./pages.html">Pages</a>
                    <ul class="dropdown">
                        <li><a href="./room-details.html">Room Details</a></li>
                        <li><a href="#">Deluxe Room</a></li>
                        <li><a href="#">Family Room</a></li>
                        <li><a href="#">Premium Room</a></li>
                    </ul>
                </li> -->
                <li><a href="./blog.html">소식</a></li>
                <li><a href="./contact.html">문의</a></li>
            </ul>
        </nav>
        <div id="mobile-menu-wrap"></div>
        <ul class="top-widget">
            <li><i class="fa fa-phone"></i> 064-321-7654</li>
            <li><i class="fa fa-envelope"></i> info@citrus-hotel.com</li>
        </ul>
    </div>
    <!-- Offcanvas Menu Section End -->

    <!-- Header Section Begin -->
    <header class="header-section">
        <div class="top-nav">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6">
                        <ul class="tn-left">
                            <li><i class="fa fa-phone"></i> 064-321-7654</li>
                            <li><i class="fa fa-envelope"></i> info@citrus-hotel.com</li>
                        </ul>
                    </div>
                    <div class="col-lg-6">
                        <div class="tn-right">
                            <div class="top-social">
                                <a href="./login.html"><i class="fa fa-sign-in"></i></a>
                                <a href="./signup.html"><i class="fa fa-user-plus"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="menu-item">
            <div class="container">
                <div class="row">
                    <div class="col-lg-2">
                        <div class="logo">
                            <a href="./index.html">
                                <img src="../resource-hotel/img/logo.jpg" alt="" style="max-width: 130%;">
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-10">
                        <div class="nav-menu mt-3">
                            <nav class="mainmenu">
                                <ul>
                                    <li><a href="./index.html">홈</a></li>
                                    <li class="active"><a href="./rooms.html">객실</a>
                                        <ul class="dropdown">
                                            <li><a href="./room-details.html">Room Details</a></li>
                                            <li><a href="/hotel/rooms.do?room_type='std'">Standard Room</a></li>
                                            <li><a href="/hotel/rooms.do?room_type='dlx'">Deluxe Room</a></li>
                                            <li><a href="/hotel/rooms.do?room_type='fml'">Family Room</a></li>
                                            <li><a href="/hotel/rooms.do?room_type='prm'">Premium Room</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="./about-us.html">호텔</a></li>
                                    <!-- <li><a href="./pages.html">Pages</a>
                                        <ul class="dropdown">
                                            <li><a href="./room-details.html">Room Details</a></li>
                                            <li><a href="./blog-details.html">Blog Details</a></li>
                                            <li><a href="#">Family Room</a></li>
                                            <li><a href="#">Premium Room</a></li>
                                        </ul>
                                    </li> -->
                                    <li><a href="./blog.html">소식</a></li>
                                    <li><a href="./contact.html">문의</a></li>
                                </ul>
                            </nav>
                            <div class="nav-right search-switch">
                                <i class="icon_search"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <!-- Header End -->

    <!-- Breadcrumb Section Begin -->
    <div class="breadcrumb-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb-text">
                        <h2>객실 예약</h2>
                        <div class="bt-option">
                            <a href="./index.html">홈</a>
                            <a href="./rooms.html">객실</a>
                            <span>객실 예약</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb Section End -->

    <!-- Room Details Section Begin -->
    <section class="room-details-section spad mt-5">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <div class="room-details-item">
                        <img src="../resource-hotel/img/room/room-details.jpg" alt="">
                        <div class="rd-text">
                            <div class="rd-title">
                                <h3>Standard Twin Room</h3>
                                <div class="rdt-right">
                                    <div class="rating">
                                        <i class="icon_star"></i>
                                        <i class="icon_star"></i>
                                        <i class="icon_star"></i>
                                        <i class="icon_star"></i>
                                        <i class="icon_star"></i>
                                    </div>
                                </div>
                            </div>
                            <h2 class="text-left">198,000~<span>/1박</span></h2>
                            <table class="mt-3">
                                <tbody>
                                    <tr>
                                        <td class="r-o">객실 크기:</td>
                                        <td>58 m²</td>
                                    </tr>
                                    <tr>
                                        <td class="r-o">숙박 가능 인원:</td>
                                        <td>최대 2명</td>
                                    </tr>
                                    <tr>
                                        <td class="r-o">침대:</td>
                                        <td>대형 킹베드 1개</td>
                                    </tr>
                                    <tr>
                                        <td class="r-o">객실 시설:</td>
                                        <td>무료 세면도구, 목욕 가운, 안전 금고, 비데, 화장실, 욕조 또는 샤워기, 타월, 침대 옆 콘센트, 업무용 책상, TV, 슬리퍼, 냉장고, 전화기, 난방 시설, 헤어드라이어, 전기 주전자, 모닝콜 서비스, 알람 시계, 옷장, 옷걸이, 화장지</td>
                                    </tr>
                                </tbody>
                            </table>
                            <p class="f-para">이 룸에는 발코니와 에어컨이 있으며, 목욕 가운도 구비되어 있습니다.</p>
                        </div>
                    </div>
                    <div class="rd-reviews">
                        <h4 class="mb-5">고객 후기</h4>
                        <div class="review-item">
                            <div class="ri-pic">
                                <img src="../resource-hotel/img/room/avatar/avatar-1.jpg" alt="">
                            </div>
                            <div class="ri-text">
                                <span>2022년 12월 12일</span>
                                <div class="rating">
                                    <i class="icon_star"></i>
                                    <i class="icon_star"></i>
                                    <i class="icon_star"></i>
                                    <i class="icon_star"></i>
                                    <i class="icon_star"></i>
                                </div>
                                <h5>Amandine</h5>
                                <p>We did not expect that much quality while reserving, the facilities are very clean, the staff is very gentle and ready to help, everything is facilitated. The hotel is very well derserved by bus, and 10min walk away from direct buses to the airport, not far from many activities and the sea. I would definitively recommand.</p>
                            </div>
                        </div>
                        <div class="review-item">
                            <div class="ri-pic">
                                <img src="../resource-hotel/img/room/avatar/avatar-2.jpg" alt="">
                            </div>
                            <div class="ri-text">
                                <span>2022년 10월 02일</span>
                                <div class="rating">
                                    <i class="icon_star"></i>
                                    <i class="icon_star"></i>
                                    <i class="icon_star"></i>
                                    <i class="icon_star"></i>
                                    <i class="icon_star-half_alt"></i>
                                </div>
                                <h5>Audrey</h5>
                                <p>We had Jeju Trip with group and it was pleasure staying there for 5nights and cleaned, staffs were nice, service. quality are outstanding but room sized were bit small and photo doesn't described as it is.</p>
                            </div>
                        </div>
                    </div>
                    <div class="review-add">
                        <h4>후기 쓰기</h4>
                        <form action="#" class="ra-form">
                            <div class="row">
                                <div class="col-lg-6">
                                    <input type="text" placeholder="이름*">
                                </div>
                                <div class="col-lg-6">
                                    <input type="text" placeholder="이메일*">
                                </div>
                                <div class="col-lg-12">
                                    <div>
                                        <h5>총 평점:</h5>
                                        <div class="rating">
                                            <i class="icon_star"></i>
                                            <i class="icon_star"></i>
                                            <i class="icon_star"></i>
                                            <i class="icon_star"></i>
                                            <i class="icon_star-half_alt"></i>
                                        </div>
                                    </div>
                                    <textarea placeholder="후기"></textarea>
                                    <button type="submit">확인</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="room-booking">
                        <h3>예약하기</h3>
                        <form action="#">
                            <div class="check-date">
                                <label for="date-in">입실:</label>
                                <input type="text" class="date-input" id="date-in" autocomplete="off">
                                <i class="icon_calendar"></i>
                            </div>
                            <div class="check-date">
                                <label for="date-out">퇴실:</label>
                                <input type="text" class="date-input" id="date-out" autocomplete="off">
                                <i class="icon_calendar"></i>
                            </div>
                            <div class="select-option">
                                <label for="guest">인원:</label>
                                <div class="guest">
                                    <span class="minus bg-dark">-</span>
                                    <input type="number" class="count" name="guest" value="1">
                                    <span class="plus bg-dark">+</span>
                                </div>
                            </div>
                            <div class="select-option">
                                <label for="room">방:</label>
                                <div class="room">
                                    <span class="minus bg-dark">-</span>
                                    <input type="number" class="count" name="room" value="1">
                                    <span class="plus bg-dark">+</span>
                                </div>
                            </div>
                            <button type="button" onclick="location.href='/reservation.html'">객실 확인하기</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Room Details Section End -->

    <!-- Footer Section Begin -->
    <footer class="footer-section">
        <div class="container">
            <div class="footer-text">
                <div class="row">
                    <div class="col-lg-4">
                        <div class="ft-about">
                            <div class="logo">
                                <a href="#">
                                    <img src="../resource-hotel/img/footer-logo.png" alt="">
                                </a>
                            </div>
                            <p>We inspire and reach millions of travelers<br /> across 90 local websites</p>
                        </div>
                    </div>
                    <div class="col-lg-3 offset-lg-1">
                        <div class="ft-contact">
                            <h6>Contact Us</h6>
                            <ul>
                                <li>064-321-7654</li>
                                <li>info@citrus-hotel.com</li>
                                <li>서귀포, 서귀포시 중문관광로 72번길 100</li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-3 offset-lg-1">
                        <div class="ft-newslatter">
                            <h6>New latest</h6>
                            <p>새로운 소식을 월마다 전해드립니다.</p>
                            <form action="#" class="fn-form">
                                <input type="text" placeholder="Email">
                                <button type="submit"><i class="fa fa-send"></i></button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="copyright-option">
            <div class="container">
                <div class="row">
                    <div class="col-lg-7">
                        <ul>
                            <li><a href="#">Contact</a></li>
                            <li><a href="#">Terms of use</a></li>
                            <li><a href="#">Privacy</a></li>
                            <li><a href="#">Environmental Policy</a></li>
                        </ul>
                    </div>
                    <div class="col-lg-5">
                        <div class="co-text"><p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p></div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- Footer Section End -->

    <!-- Search model Begin -->
    <div class="search-model">
        <div class="h-100 d-flex align-items-center justify-content-center">
            <div class="search-close-switch"><i class="icon_close"></i></div>
            <form class="search-model-form">
                <input type="text" id="search-input" placeholder="검색할 내용을 입력하세요">
            </form>
        </div>
    </div>
    <!-- Search model end -->

    <!-- Js Plugins -->
    <script src="../resource-hotel/js/jquery-3.3.1.min.js"></script>
    <script src="../resource-hotel/js/bootstrap.min.js"></script>
    <script src="../resource-hotel/js/jquery.magnific-popup.min.js"></script>
    <script src="../resource-hotel/js/jquery.nice-select.min.js"></script>
    <script src="../resource-hotel/js/jquery-ui.min.js"></script>
    <script src="../resource-hotel/js/jquery.slicknav.js"></script>
    <script src="../resource-hotel/js/owl.carousel.min.js"></script>
    <script src="../resource-hotel/js/main.js"></script>
</body>

</html>