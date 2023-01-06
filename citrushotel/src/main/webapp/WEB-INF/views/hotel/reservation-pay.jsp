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
                <li><a href="index.do">홈</a></li>
                <li class="active"><a href="rooms.do">객실</a>
                    <ul class="dropdown">
                        <li><a href="/hotel/rooms.do?room_type='std'">Standard Room</a></li>
                        <li><a href="/hotel/rooms.do?room_type='dlx'">Deluxe Room</a></li>
                        <li><a href="/hotel/rooms.do?room_type='fml'">Family Room</a></li>
                        <li><a href="/hotel/rooms.do?room_type='prm'">Premium Room</a></li>
                    </ul>
                </li>
                <li><a href="about-us.do">호텔</a></li>
                <!-- <li><a href="./pages.html">Pages</a>
                    <ul class="dropdown">
                        <li><a href="./room-details.html">Room Details</a></li>
                        <li><a href="#">Deluxe Room</a></li>
                        <li><a href="#">Family Room</a></li>
                        <li><a href="#">Premium Room</a></li>
                    </ul>
                </li> -->
                <li><a href="blog.do">소식</a></li>
                <li><a href="contact.do">문의</a></li>
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
                            <a href="index.do">
                                <img src="resources/resource-hotel/img/logo.jpg" alt="" style="max-width: 130%;">
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-10">
                        <div class="nav-menu mt-3">
                            <nav class="mainmenu">
                                <ul>
                                    <li><a href="index.do">홈</a></li>
                                    <li class="active"><a href="rooms.do">객실</a>
                                        <ul class="dropdown">
                                            <li><a href="room-details.do">Room Details</a></li>
                                            <li><a href="/hotel/rooms.do?room_type='std'">Standard Room</a></li>
                                            <li><a href="/hotel/rooms.do?room_type='dlx'">Deluxe Room</a></li>
                                            <li><a href="/hotel/rooms.do?room_type='fml'">Family Room</a></li>
                                            <li><a href="/hotel/rooms.do?room_type='prm'">Premium Room</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="about-us.do">호텔</a></li>
                                    <!-- <li><a href="./pages.html">Pages</a>
                                        <ul class="dropdown">
                                            <li><a href="./room-details.html">Room Details</a></li>
                                            <li><a href="./blog-details.html">Blog Details</a></li>
                                            <li><a href="#">Family Room</a></li>
                                            <li><a href="#">Premium Room</a></li>
                                        </ul>
                                    </li> -->
                                    <li><a href="blog.do">소식</a></li>
                                    <li><a href="contact.do">문의</a></li>
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
                        <div class="bt-option mt-4">
                            <span>객실 예약</span> &emsp;>&emsp;
                            <span>예약 정보 입력</span> &emsp;>&emsp;
                            <span class="active">결제</span> &emsp;>&emsp;
                            <span>예약 완료</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb Section End -->

    <!-- Reservation Section Begin -->
    <section class="reservation-section spad">
        <div class="container">
            <hr class="mb-5"/>
            <div class="row">
                <div class="col-lg-10 text-center mx-auto">
                    <div class="reservation-item">
                        <div class="r-text">
                            <div class="r-title mb-5">
                                <h4>1. 예약 정보 확인</h4>
                            </div>
                        </div>
                        <div class="r-text mb-4">
                            <div class="r-title">
                                <h5>* 예약 룸 및 일정</h5>
                            </div>
                        </div>
                        <div class="r-text mb-3 ml-2">
                            <h5>Standard Twin Room * 1</h5>
                        </div>
                        <div class="r-text  ml-2">
                            2022년 12월 29일 목요일 ~ 2022년 12월 31일 토요일 (2박 3일)
                        </div>
                    </div>
                    <div class="reservation-item">
                        <div class="r-text">
                            <div class="r-title">
                                <h5>* 예약자 정보</h5>
                            </div>
                        </div>
                        <hr class="my-12"/>
                        <div class="res-form text-left col-lg-8 my-4">
                            <div class="form-group">
                                <label for="resName" class="col-lg-5">이름* / Name*</label>
                                <input type="text" class="form-control d-inline-block w-25 ml-2" id="resName" autocomplete="off" disabled>
                            </div>
                            <div class="form-group">
                                <label class="col-lg-5" for="resEmail">이메일* / Email*</label>
                                <div class="d-inline-block w-50 ml-2">
                                    <input type="email" class="form-control" id="resEmail" autocomplete="off" disabled>
                                </div></div>
                            <div class="form-group">
                                <label for="resTel" class="col-lg-5">휴대폰 번호* / Phone Number*</label>
                                <input type="text" class="form-control d-inline-block w-50 ml-2" id="resTel" autocomplete="off" disabled> 
                            </div>
                        </div>
                    </div>
                    <div class="reservation-item">
                        <div class="r-text">
                            <div class="r-title">
                                <h5>* 게스트 정보</h5>
                            </div>
                        </div>
                        <div class="res-form text-left col-lg-8 my-4">
                            <div class="form-group">
                                <label for="resPeople" class="col-lg-5">숙박 인원* / Number of guests*</label>
                                <input type="number" style="width:10%" class="form-control d-inline-block ml-2" id="resPeople" autocomplete="off" disabled> &nbsp;명
                            </div>
                        </div>
                    </div>
                    <div class="reservation-item">
                        <div class="r-text">
                            <div class="r-title">
                                <h5>* 기타</h5>
                            </div>
                        </div>
                        <div class="res-form text-left col-lg-8 my-4">
                            <div class="form-group">
                                <label for="inputName" class="mr-4 col-lg-5">조식 유무* / Add Breakfast*</label>
                                <div class="btn-group btn-group-toggle" data-toggle="buttons">
                                    <label class="btn btn-info">
                                        <input type="radio" name="resBreakfast" id="bf-radio-1" checked disabled> Yes
                                    </label>
                                    <label class="btn btn-info">
                                        <input type="radio" name="resBreakfast" id="bf-radio-2" disabled> No
                                    </label>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputName" class="col-lg-10 mb-3">추가 요청 사항 / Additional Requests</label>
                                <textarea class="form-control col-lg-10 ml-3" id="resExtra" rows="3" disabled></textarea>
                            </div>
                        </div>
                    </div>

                    <div class="reservation-item">
                        <div class="r-text mb-5">
                            <div class="r-title">
                                <h4>2. 결제 확인</h4>
                            </div>
                        </div>
                        <div class="r-text">
                            <h4><i class="fa fa-money" aria-hidden="true"></i> &nbsp;396,000원</h4>
                        </div>
                    </div>
                    <div class="col-lg-12 text-center py-3">
                        <button type="button" class="btn-lg btn-custom1 btn-primary" onclick="location.href='/reservation-success.do'">결제하기</button>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Reservation Section End -->

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
                        <div class="co-text">
                            <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                                Copyright &copy;
                                <script>document.write(new Date().getFullYear());</script> All rights reserved | This
                                template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a
                                    href="https://colorlib.com" target="_blank">Colorlib</a>
                                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                            </p>
                        </div>
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