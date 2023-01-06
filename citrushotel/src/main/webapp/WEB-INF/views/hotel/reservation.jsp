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
                        <h2>객실 예약</h2>
                        <div class="bt-option mt-4">
                            <span>객실 예약</span> &emsp;>&emsp;
                            <span class="active">예약 정보 입력</span> &emsp;>&emsp;
                            <span>결제</span> &emsp;>&emsp;
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
                            <div class="r-title">
                                <h4>1. 예약 일정</h4>
                            </div>
                        </div>
                        <div id="datepicker" class="my-4 mb-5"></div>
                        <div class="r-text mb-3">
                            <h5>Standard Twin Room * 1</h5>
                        </div>
                        <div class="r-text">
                            2022년 12월 29일 목요일 ~ 2022년 12월 31일 토요일 (2박 3일)
                        </div>
                    </div>
                    <div class="reservation-item">
                        <div class="r-text">
                            <div class="r-title">
                                <h4>2. 예약자 정보</h4>
                            </div>
                        </div>
                        <div class="input-group my-4 col-lg-8">
                            <input type="checkbox" aria-label="Checkbox for following text input">
                            <span class="text-left ml-2">내 정보를 자동 입력합니다.</span>
                        </div>
                        <hr class="my-12"/>
                        <div class="res-form text-left col-lg-8 my-4">
                            <div class="form-group">
                                <label for="resName">이름* / Name*</label>
                                <input type="text" class="form-control" id="resName" autocomplete="off">
                            </div>
                            <div class="form-group">
                                <label class="d-block" for="resEmail">이메일* / Email*</label>
                                <div class="d-flex justify-content-between">
                                    <input type="email" class="form-control" id="resEmail" autocomplete="off">
                                </div></div>
                            <div class="form-group">
                                <label for="resTel">휴대폰 번호* / Phone Number*</label>
                                <input type="text" class="form-control" id="resTel" autocomplete="off">
                            </div>
                        </div>
                    </div>
                    <div class="reservation-item">
                        <div class="r-text">
                            <div class="r-title">
                                <h4>3. 게스트 정보</h4>
                            </div>
                        </div>
                        <div class="res-form text-left col-lg-8 my-4">
                            <div class="form-group">
                                <label for="resPeople" class="mr-4">숙박 인원* / Number of guests*</label>
                                <input type="number" style="width:10%" class="form-control d-inline-block" id="resPeople" autocomplete="off"> &nbsp;명
                            </div>
                        </div>
                    </div>
                    <div class="reservation-item">
                        <div class="r-text">
                            <div class="r-title">
                                <h4>4. 기타</h4>
                            </div>
                        </div>
                        <div class="res-form text-left col-lg-8 my-4">
                            <div class="form-group">
                                <label for="inputName" class="mr-4">조식 유무* / Add Breakfast*</label>
                                <div class="btn-group btn-group-toggle" data-toggle="buttons">
                                    <label class="btn btn-info">
                                        <input type="radio" name="resBreakfast" id="bf-radio-1" checked> Yes
                                    </label>
                                    <label class="btn btn-info">
                                        <input type="radio" name="resBreakfast" id="bf-radio-2"> No
                                    </label>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputName">추가 요청 사항 / Additional Requests</label>
                                <textarea class="form-control" id="resExtra" rows="3"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-12 text-center py-3">
                        <button type="button" class="btn-lg btn-custom1 btn-primary" onclick="location.href='/reservation-pay.html'">예약하기</button>
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
    <script src="../resource-hotel/js/jquery-3.3.1.min.js"></script>
    <script src="../resource-hotel/js/bootstrap.min.js"></script>
    <script src="../resource-hotel/js/jquery.magnific-popup.min.js"></script>
    <script src="../resource-hotel/js/jquery.nice-select.min.js"></script>
    <script src="../resource-hotel/js/jquery-ui.min.js"></script>
    <script src="../resource-hotel/js/jquery.slicknav.js"></script>
    <script src="../resource-hotel/js/owl.carousel.min.js"></script>
    <script src="../resource-hotel/js/main.js"></script>
    <script>
        var dateList = ["2022/12/29","2022/12/30","2022/12/31"]
        $(function () {
            $("#datepicker").datepicker({
                beforeShowDay: function (date) {
                    var year = date.getFullYear();
                    var month = makePadNumber(date.getMonth() + 1);
                    var day = makePadNumber(date.getDate());
                    var dateString = year + "/" + month + "/" + day;
                    if(dateList.indexOf(dateString) > -1){
                        return [true, "checkDay"];
                    }
                    return [true, ""];
                },
                minDate : new Date(dateList[0].replace("/","-")),
                maxDate : new Date(dateList[dateList.length-1].replace("/","-"))
            });
            
            $("#datepicker").datepicker('option', 'disabled', true);
        });

        function makePadNumber(number){
            if(number < 10) return "0" + String(number);
            else return number;
        }
    </script>
</body>

</html>