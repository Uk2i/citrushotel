/*  ---------------------------------------------------
    Template Name: Sona
    Description: Sona Hotel Html Template
    Author: Colorlib
    Author URI: https://colorlib.com
    Version: 1.0
    Created: Colorlib
---------------------------------------------------------  */

'use strict';

(function ($) {

    /*------------------
        Preloader
    --------------------*/
    $(window).on('load', function () {
        $(".loader").fadeOut();
        $("#preloder").delay(200).fadeOut("slow");
    });

    /*------------------
        Background Set
    --------------------*/
    $('.set-bg').each(function () {
        var bg = $(this).data('setbg');
        $(this).css('background-image', 'url(' + bg + ')');
    });

    //Offcanvas Menu
    $(".canvas-open").on('click', function () {
        $(".offcanvas-menu-wrapper").addClass("show-offcanvas-menu-wrapper");
        $(".offcanvas-menu-overlay").addClass("active");
    });

    $(".canvas-close, .offcanvas-menu-overlay").on('click', function () {
        $(".offcanvas-menu-wrapper").removeClass("show-offcanvas-menu-wrapper");
        $(".offcanvas-menu-overlay").removeClass("active");
    });

    // Search model
    $('.search-switch').on('click', function () {
        $('.search-model').fadeIn(400);
    });

    $('.search-close-switch').on('click', function () {
        $('.search-model').fadeOut(400, function () {
            $('#search-input').val('');
        });
    });

    /*------------------
		Navigation
	--------------------*/
    $(".mobile-menu").slicknav({
        prependTo: '#mobile-menu-wrap',
        allowParentLinks: true
    });

    /*------------------
        Hero Slider
    --------------------*/
   $(".hero-slider").owlCarousel({
        loop: true,
        margin: 0,
        items: 1,
        dots: true,
        animateOut: 'fadeOut',
        animateIn: 'fadeIn',
        smartSpeed: 1200,
        autoHeight: false,
        autoplay: true,
        mouseDrag: false
    });

    /*------------------------
		Testimonial Slider
    ----------------------- */
    $(".testimonial-slider").owlCarousel({
        items: 1,
        dots: false,
        autoplay: true,
        loop: true,
        smartSpeed: 1200,
        nav: true,
        navText: ["<i class='arrow_left'></i>", "<i class='arrow_right'></i>"]
    });

    /*------------------
        Magnific Popup
    --------------------*/
    $('.video-popup').magnificPopup({
        type: 'iframe'
    });

    /*------------------
		Date Picker
	--------------------*/
    $.datepicker.setDefaults({
        dateFormat: 'yy??? mm??? dd??? DD',
        prevText: '?????? ???',
        nextText: '?????? ???',
        monthNames: ['1???', '2???', '3???', '4???', '5???', '6???', '7???', '8???', '9???', '10???', '11???', '12???'],
        monthNamesShort: ['1???', '2???', '3???', '4???', '5???', '6???', '7???', '8???', '9???', '10???', '11???', '12???'],
        dayNames: ['???', '???', '???', '???', '???', '???', '???'],
        dayNamesShort: ['???', '???', '???', '???', '???', '???', '???'],
        dayNamesMin: ['???', '???', '???', '???', '???', '???', '???'],
        showMonthAfterYear: true,
        yearSuffix: '???'
    });

    $(".date-input").datepicker({
        minDate: 0,
        dateFormat: 'yy??? mm??? dd??? DD'
    });

    $('#date-in').datepicker("option", "maxDate", $("#date-out").val());
    $('#date-in').datepicker("option", "onClose", function ( selectedDate ) {
        $("#date-out").datepicker( "option", "minDate", selectedDate );
    });

    $('#date-out').datepicker("option", "minDate", $("#date-in").val());
    $('#date-out').datepicker("option", "onClose", function ( selectedDate ) {
        $("#date-in").datepicker( "option", "maxDate", selectedDate );
    });

    /*------------------
		Nice Select
	--------------------*/
    $("select").niceSelect();

    /*------------------
		Guest Select
	--------------------*/
    $('.count').prop('disabled', true);
    $(document).on('click','.plus',function(){
        $(this).prev().val(parseInt($(this).prev().val()) + 1 );
    });
    $(document).on('click','.minus',function(){
        $(this).next().val(parseInt($(this).next().val()) - 1 );
        if ($(this).next().val() == 0) {
            $(this).next().val(1);
        }
    });

})(jQuery);