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
                <li><a href="./rooms.html">객실</a>
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
                                <a href="#"><i class="fa fa-sign-in"></i></a>
                                <a href="#"><i class="fa fa-user-plus"></i></a>
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
                        <h2>객실</h2>
                        <div class="bt-option">
                            <a href="./index.html">홈</a>
                            <span>객실</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb Section End -->

    <!-- Sub Nav Section Begin -->
    <nav class="navbar navbar-expand-lg mt-3 mb-5">
        <div class="collapse navbar-collapse">
            <ul class="navbar-nav mx-auto">
                <li class="nav-item active">
                    <a class="nav-link mx-2" href="/rooms.html">All</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link mx-2" href="/hotel/rooms.do?room_type='std'">Standard Room</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link mx-2" href="/hotel/rooms.do?room_type='dlx'">Deluxe Room</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link mx-2" href="/hotel/rooms.do?room_type='fml'">Family Room</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link mx-2" href="/hotel/rooms.do?room_type='prm'">Premium Room</a>
                </li>
            </ul>
        </div>
    </nav>
    <!-- Sub Nav Section End -->

    <!-- Rooms Section Begin -->
    <section class="rooms-section spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-6">
                    <div class="room-item">
                        <img src="../resource-hotel/img/room/room-1.jpg" alt="">
                        <div class="ri-text">
                            <h4>Standard Twin Room</h4>
                            <h3>198,000~<span>/1박</span></h3>
                            <table>
                                <tbody>
                                    <tr>
                                        <td class="r-o">객실 크기:</td>
                                        <td>37 m²</td>
                                    </tr>
                                    <tr>
                                        <td class="r-o">숙박 가능 인원:</td>
                                        <td>최대 2명</td>
                                    </tr>
                                    <tr>
                                        <td class="r-o">침대:</td>
                                        <td>싱글베드 2개</td>
                                    </tr>
                                    <tr>
                                        <td class="r-o">객실 시설:</td>
                                        <td>Wifi, TV, 화장실, 옷장, 책상, 의자, 어메니티 ...</td>
                                    </tr>
                                </tbody>
                            </table>
                            <a href="./room-details.html" class="primary-btn">자세히 보기</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="room-item">
                        <img src="../resource-hotel/img/room/room-2.jpg" alt="">
                        <div class="ri-text">
                            <h4>Standard Double Room</h4>
                            <h3>198,000~<span>/1박</span></h3>
                            <table>
                                <tbody>
                                    <tr>
                                        <td class="r-o">객실 크기:</td>
                                        <td>37 m²</td>
                                    </tr>
                                    <tr>
                                        <td class="r-o">숙박 가능 인원:</td>
                                        <td>최대 2명</td>
                                    </tr>
                                    <tr>
                                        <td class="r-o">침대:</td>
                                        <td>더블베드 1개</td>
                                    </tr>
                                    <tr>
                                        <td class="r-o">객실 시설:</td>
                                        <td>Wifi, TV, 화장실, 옷장, 책상, 의자, 어메니티 ...</td>
                                    </tr>
                                </tbody>
                            </table>
                            <a href="#" class="primary-btn">자세히 보기</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="room-item">
                        <img src="../resource-hotel/img/room/room-3.jpg" alt="">
                        <div class="ri-text">
                            <h4>Deluxe Twin Room</h4>
                            <h3>298,000~<span>/1박</span></h3>
                            <table>
                                <tbody>
                                    <tr>
                                        <td class="r-o">객실 크기:</td>
                                        <td>45 m²</td>
                                    </tr>
                                    <tr>
                                        <td class="r-o">숙박 가능 인원:</td>
                                        <td>기본 2명 (최대 3명)</td>
                                    </tr>
                                    <tr>
                                        <td class="r-o">침대:</td>
                                        <td>슈퍼싱글베드 2개</td>
                                    </tr>
                                    <tr>
                                        <td class="r-o">객실 시설:</td>
                                        <td>Wifi, TV, 화장실, 옷장, 책상, 의자, 어메니티 ...</td>
                                    </tr>
                                </tbody>
                            </table>
                            <a href="#" class="primary-btn">자세히 보기</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="room-item">
                        <img src="../resource-hotel/img/room/room-4.jpg" alt="">
                        <div class="ri-text">
                            <h4>Deluxe Double Room</h4>
                            <h3>298,000~<span>/1박</span></h3>
                            <table>
                                <tbody>
                                    <tr>
                                        <td class="r-o">객실 크기:</td>
                                        <td>45 m²</td>
                                    </tr>
                                    <tr>
                                        <td class="r-o">숙박 가능 인원:</td>
                                        <td>기본 2명 (최대 3명)</td>
                                    </tr>
                                    <tr>
                                        <td class="r-o">침대:</td>
                                        <td>킹베드 1개</td>
                                    </tr>
                                    <tr>
                                        <td class="r-o">객실 시설:</td>
                                        <td>Wifi, TV, 화장실, 옷장, 책상, 의자, 어메니티 ...</td>
                                    </tr>
                                </tbody>
                            </table>
                            <a href="#" class="primary-btn">자세히 보기</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="room-item">
                        <img src="../resource-hotel/img/room/room-5.jpg" alt="">
                        <div class="ri-text">
                            <h4>Family Room</h4>
                            <h3>598,000~<span>/1박</span></h3>
                            <table>
                                <tbody>
                                    <tr>
                                        <td class="r-o">객실 크기:</td>
                                        <td>66 m²</td>
                                    </tr>
                                    <tr>
                                        <td class="r-o">숙박 가능 인원:</td>
                                        <td>성인 2명 및 아동 2명</td>
                                    </tr>
                                    <tr>
                                        <td class="r-o">침대:</td>
                                        <td>킹베드 1개, 싱글 2개</td>
                                    </tr>
                                    <tr>
                                        <td class="r-o">객실 시설:</td>
                                        <td>Wifi, TV, 화장실, 옷장, 책상, 의자, 어메니티 ...</td>
                                    </tr>
                                </tbody>
                            </table>
                            <a href="#" class="primary-btn">자세히 보기</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="room-item">
                        <img src="../resource-hotel/img/room/room-6.jpg" alt="">
                        <div class="ri-text">
                            <h4>Premium Room</h4>
                            <h3>598,000~<span>/1박</span></h3>
                            <table>
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
                                        <td>Wifi, TV, 화장실, 옷장, 책상, 의자, 어메니티 ...</td>
                                    </tr>
                                </tbody>
                            </table>
                            <a href="#" class="primary-btn">자세히 보기</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="room-pagination">
                        <a class="disable"><i class="fa fa-long-arrow-left"></i> 이전</a>
                        <a class="active" href="#">1</a>
                        <a href="#">2</a>
                        <a href="#">다음 <i class="fa fa-long-arrow-right"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Rooms Section End -->

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