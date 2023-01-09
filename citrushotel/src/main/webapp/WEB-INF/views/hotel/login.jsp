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
                <li><a href="rooms.do">객실</a>
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
        <div class="top-social">
            <a href="login.do"><i class="fa fa-sign-in"></i></a>
            <a href="signup.do"><i class="fa fa-user-plus"></i></a>
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
                                <a href="login.do"><i class="fa fa-sign-in"></i></a>
                                <a href="signup.do"><i class="fa fa-user-plus"></i></a>
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
                                    <li><a href="rooms.do">객실</a>
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

    <!-- Sign-in Section Begin -->
    <section class="signin-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="si-text p-3 my-3">
                        <h3>로그인 / Login</h3>
                    </div>
                </div>
            </div>
            <div class="row">
                <form action="#" class="si-form text-left mx-auto col-lg-4 my-4">
                    <div class="form-group">
                        <label for="inputEmail">이메일 / Email</label>
                        <input type="text" class="form-control" id="inputEmail" autocomplete="off">
                    </div>
                    <div class="form-group">
                        <label for="inputPassword">비밀번호 / Password</label>
                        <input type="password" class="form-control" id="inputPassword" autocomplete="off">
                    </div>
                    <div class="col-lg-12 text-center py-3">
                        <button type="submit" class="btn btn-custom1 btn-primary">로그인</button>
                    </div>
                </form>
            </div>
        </div>
    </section>
    <!-- Sign-in Section End -->



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
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script src="resources/resource-hotel/js/main.js"></script>
    <script>
        function openPostcode(){
            new daum.Postcode({
                oncomplete: function(data) {
                    // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                    // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                    // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                    var roadAddr = data.roadAddress; // 도로명 주소 변수
                    var extraRoadAddr = ''; // 참고 항목 변수

                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraRoadAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                    extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraRoadAddr !== ''){
                        extraRoadAddr = ' (' + extraRoadAddr + ')';
                    }

                    // 우편번호와 주소 정보를 해당 필드에 넣는다.
                    document.getElementById('inputAddress').value = "(" + data.zonecode + ") " + roadAddr + " " + extraRoadAddr;
                }
            }).open();
        }
    </script>
</body>

</html>