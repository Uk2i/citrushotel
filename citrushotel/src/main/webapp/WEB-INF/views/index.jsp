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
    <link rel="stylesheet" href="resources/resource-hotel/css/font.css" type="text/css">
    <link rel="stylesheet" href="resources/resource-hotel/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="resources/resource-hotel/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="resources/resource-hotel/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="resources/resource-hotel/css/flaticon.css" type="text/css">
    <link rel="stylesheet" href="resources/resource-hotel/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="resources/resource-hotel/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="resources/resource-hotel/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="resources/resource-hotel/css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="resources/resource-hotel/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="resources/resource-hotel/css/style.css" type="text/css">

    <!-- Favicon -->
    <!-- <link rel="icon" type="image/x-icon" href="resources/resource-admin/assets/img/favicon/favicon.ico" /> -->
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
                <li class="active"><a href="./index.html">홈</a></li>
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
        <div class="top-social">
            <a href="./login.html"><i class="fa fa-sign-in"></i></a>
            <a href="./signup.html"><i class="fa fa-user-plus"></i></a>
        </div>
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
                                <img src="resources/resource-hotel/img/logo.jpg" alt="" style="max-width: 130%;">
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-10">
                        <div class="nav-menu mt-3">
                            <nav class="mainmenu">
                                <ul>
                                    <li class="active"><a href="./index.html">홈</a></li>
                                    <li><a href="./rooms.html">객실</a>
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

    <!-- Hero Section Begin -->
    <section class="hero-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="hero-text">
                        <h1>Citrus Hotel</h1>
                        <p>실내 수영장, 스파, 레스토랑, 테니스와 농구 코트를 제공하는 세련된 숙박 시설입니다. </p>
                        <a href="/about-us.html" class="primary-btn">자세히 보기</a>
                    </div>
                </div>
                <div class="col-xl-4 col-lg-5 offset-xl-2 offset-lg-1">
                    <div class="booking-form">
                        <h3>Find Now!</h3>
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
                            <button type="submit">객실 확인하기</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="hero-slider owl-carousel">
            <div class="hs-item set-bg" data-setbg="resources/resource-hotel/img/hero/hero-1.jpg"></div>
            <div class="hs-item set-bg" data-setbg="resources/resource-hotel/img/hero/hero-2.jpg"></div>
            <div class="hs-item set-bg" data-setbg="resources/resource-hotel/img/hero/hero-3.jpg"></div>
        </div>
    </section>
    <!-- Hero Section End -->

    <!-- About Us Section Begin -->
    <section class="aboutus-section spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="about-text">
                        <div class="section-title">
                            <span>About Us</span>
                            <h3>2022년 선정 제주도호텔 1위</h3>
                        </div>
                        <p class="f-para">Citrus Hotel은 선도적인 온라인 숙소 예약 사이트를 운영합니다. 우리는 여행을 열정적으로 지원합니다. 매일 우리는 41개 언어로 된 90개의 현지 웹사이트에서 수백만 명의 여행자에게 영감을 줍니다.</p>
                        <p class="s-para">따라서 여행 테마에 맞는 완벽한 호텔 룸을 예약할 수 있습니다.</p>
                        <a href="/about-us.html" class="primary-btn about-btn">Read More</a>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="about-pic">
                        <div class="row">
                            <div class="col-sm-6">
                                <img src="resources/resource-hotel/img/about/about-1.jpg" alt="">
                            </div>
                            <div class="col-sm-6">
                                <img src="resources/resource-hotel/img/about/about-2.jpg" alt="">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- About Us Section End -->

    <!-- Services Section End -->
    <section class="services-section spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <span>What We Do</span>
                        <h2>제공 서비스</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4 col-sm-6">
                    <div class="service-item">
                        <i class="flaticon-036-parking"></i>
                        <h4>여행 계획</h4>
                        <p>트렌드를 고려해 맞춤 여행 계획을 추천해드립니다. 맛집, 명소 등 원하시는 정보를 얻으세요.</p>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <div class="service-item">
                        <i class="flaticon-033-dinner"></i>
                        <h4>룸 서비스</h4>
                        <p>머무시는 객실에서 높은 퀄리티의 음식을 즐기실 수 있습니다.</p>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <div class="service-item">
                        <i class="flaticon-026-bed"></i>
                        <h4>베이비시팅</h4>
                        <p>편한 휴식, 여행을 위한 맞춤 아기 돌봄 서비스를 제공합니다.</p>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <div class="service-item">
                        <i class="flaticon-024-towel"></i>
                        <h4>세탁물</h4>
                        <p>24시간 세탁 서비스 운영, 긴급한 세탁 또는 드라이크리닝도 2시간 이내로 가능합니다.</p>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <div class="service-item">
                        <i class="flaticon-044-clock-1"></i>
                        <h4>픽업 서비스</h4>
                        <p>24시간 픽업 서비스 운영, 공항과 호텔 무료 왕복 픽업 및 유료 택시 호출이 가능합니다.</p>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <div class="service-item">
                        <i class="flaticon-012-cocktail"></i>
                        <h4>라운지</h4>
                        <p>L별도의 라운지를 통해 다양한 음료와 주류를 제공합니다.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Services Section End -->

    <!-- Home Room Section Begin -->
    <section class="hp-room-section">
        <div class="container-fluid">
            <div class="hp-room-items">
                <div class="row">
                    <div class="col-lg-3 col-md-6">
                        <div class="hp-room-item set-bg" data-setbg="resources/resource-hotel/img/room/room-b1.jpg">
                            <div class="hr-text">
                                <h3>Standard Room</h3>
                                <h2>198,000~<span>/1박</span></h2>
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
                                            <td>더블베드 1 또는 싱글베드 2</td>
                                        </tr>
                                        <tr>
                                            <td class="r-o">객실 시설:</td>
                                            <td>Wifi, TV, 옷장 ...</td>
                                        </tr>
                                    </tbody>
                                </table>
                                <a href="/hotel/rooms.do?room_type='std'" class="primary-btn">자세히 보기</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="hp-room-item set-bg" data-setbg="resources/resource-hotel/img/room/room-b2.jpg">
                            <div class="hr-text">
                                <h3>Deluxe Room</h3>
                                <h2>298,000~<span>/1박</span></h2>
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
                                            <td>킹베드 1</td>
                                        </tr>
                                        <tr>
                                            <td class="r-o">객실 시설:</td>
                                            <td>Wifi, TV, 옷장 ...</td>
                                        </tr>
                                    </tbody>
                                </table>
                                <a href="/hotel/rooms.do?room_type='dlx'" class="primary-btn">자세히 보기</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="hp-room-item set-bg" data-setbg="resources/resource-hotel/img/room/room-b3.jpg">
                            <div class="hr-text">
                                <h3>Family Room</h3>
                                <h2>598,000~<span>/1박</span></h2>
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
                                            <td>킹베드 1, 싱글베드 2</td>
                                        </tr>
                                        <tr>
                                            <td class="r-o">객실 시설:</td>
                                            <td>Wifi, TV, 옷장 ...</td>
                                        </tr>
                                    </tbody>
                                </table>
                                <a href="/hotel/rooms.do?room_type='fml'" class="primary-btn">자세히 보기</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="hp-room-item set-bg" data-setbg="resources/resource-hotel/img/room/room-b4.jpg">
                            <div class="hr-text">
                                <h3>Premium Room</h3>
                                <h2>598,000~<span>/1박</span></h2>
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
                                            <td>대형 킹베드 1</td>
                                        </tr>
                                        <tr>
                                            <td class="r-o">객실 시설:</td>
                                            <td>Wifi, TV, 옷장 ...</td>
                                        </tr>
                                    </tbody>
                                </table>
                                <a href="/hotel/rooms.do?room_type='prm'" class="primary-btn">자세히 보기</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Home Room Section End -->

    <!-- Testimonial Section Begin -->
    <section class="testimonial-section spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <span>Testimonials</span>
                        <h2>고객 후기</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-8 offset-lg-2">
                    <div class="testimonial-slider owl-carousel">
                        <div class="ts-item">
                            <p>We did not expect that much quality while reserving, the facilities are very clean, the staff is very gentle and ready to help, everything is facilitated. The hotel is very well derserved by bus, and 10min walk away from direct buses to the airport, not far from many activities and the sea. I would definitively recommand.</p>
                            <div class="ti-author">
                                <div class="rating">
                                    <i class="icon_star"></i>
                                    <i class="icon_star"></i>
                                    <i class="icon_star"></i>
                                    <i class="icon_star"></i>
                                    <i class="icon_star"></i>
                                </div>
                                <h5> - Amandine</h5>
                            </div>
                            <img src="resources/resource-hotel/img/footer-logo.png" alt="">
                        </div>
                        <div class="ts-item">
                            <p>We had Jeju Trip with group and it was pleasure staying there for 5nights and cleaned, staffs were nice, service. quality are outstanding but room sized were bit small and photo doesn't described as it is.</p>
                            <div class="ti-author">
                                <div class="rating">
                                    <i class="icon_star"></i>
                                    <i class="icon_star"></i>
                                    <i class="icon_star"></i>
                                    <i class="icon_star"></i>
                                    <i class="icon_star"></i>
                                </div>
                                <h5> - Audrey</h5>
                            </div>
                            <img src="resources/resource-hotel/img/footer-logo.png" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Testimonial Section End -->

    <!-- Blog Section Begin -->
    <section class="blog-section spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <span>Hotel News</span>
                        <h2>소식 및 이벤트</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4">
                    <div class="blog-item set-bg" data-setbg="resources/resource-hotel/img/blog/blog-1.jpg">
                        <div class="bi-text">
                            <span class="b-tag">호텔 주관 투어</span>
                            <h4><a href="/blog-details.html">해수욕장 투어</a></h4>
                            <div class="b-time"><i class="icon_clock_alt"></i> 2022년 08월 01일~</div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="blog-item set-bg" data-setbg="resources/resource-hotel/img/blog/blog-2.jpg">
                        <div class="bi-text">
                            <span class="b-tag">호텔 주관 투어</span>
                            <h4><a href="#">성산일출봉 점심 투어</a></h4>
                            <div class="b-time"><i class="icon_clock_alt"></i> 2022년 01월 01일~</div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="blog-item set-bg" data-setbg="resources/resource-hotel/img/blog/blog-3.jpg">
                        <div class="bi-text">
                            <span class="b-tag">호텔 주관 투어</span>
                            <h4><a href="#">한라산 데이 투어</a></h4>
                            <div class="b-time"><i class="icon_clock_alt"></i> ~2022년 12월 31일</div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-8">
                    <div class="blog-item small-size set-bg" data-setbg="resources/resource-hotel/img/blog/blog-wide.jpg">
                        <div class="bi-text">
                            <span class="b-tag">소식</span>
                            <h4><a href="#">객실 리모델링</a></h4>
                            <div class="b-time"><i class="icon_clock_alt"></i> ~2022년 10월 13일</div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="blog-item small-size set-bg" data-setbg="resources/resource-hotel/img/blog/blog-10.jpg">
                        <div class="bi-text">
                            <span class="b-tag">이벤트</span>
                            <h4><a href="#">2022년 고객 이벤트 추첨</a></h4>
                            <div class="b-time"><i class="icon_clock_alt"></i> ~2022년 12월 31일</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Blog Section End -->

    <!-- Footer Section Begin -->
    <footer class="footer-section">
        <div class="container">
            <div class="footer-text">
                <div class="row">
                    <div class="col-lg-4">
                        <div class="ft-about">
                            <div class="logo">
                                <a href="#">
                                    <img src="resources/resource-hotel/img/footer-logo.png" alt="">
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
    <script src="resources/resource-hotel/js/jquery-3.3.1.min.js"></script>
    <script src="resources/resource-hotel/js/bootstrap.min.js"></script>
    <script src="resources/resource-hotel/js/jquery.magnific-popup.min.js"></script>
    <script src="resources/resource-hotel/js/jquery.nice-select.min.js"></script>
    <script src="resources/resource-hotel/js/jquery-ui.min.js"></script>
    <script src="resources/resource-hotel/js/jquery.slicknav.js"></script>
    <script src="resources/resource-hotel/js/owl.carousel.min.js"></script>
    <script src="resources/resource-hotel/js/main.js"></script>
</body>

</html>