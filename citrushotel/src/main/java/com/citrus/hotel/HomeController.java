package com.citrus.hotel;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class HomeController {	
	
	@RequestMapping(value = {"/","index.do"}, method = RequestMethod.GET)
	public String home(HttpServletRequest req) {
		
		return "index";
	}
	
	@RequestMapping("rooms.do")
	public String rooms(HttpServletRequest req) {
		return "hotel/rooms";
	}
	
	
	@RequestMapping("about-us.do")
	public String about_us(HttpServletRequest req) {
		return "hotel/about-us";
	}
	
	@RequestMapping("blog.do")
	public String blog(HttpServletRequest req) {
		return "hotel/blog";
	}
	
	@RequestMapping("contact.do")
	public String contact(HttpServletRequest req) {
		return "hotel/contact";
	}
	
	
	@RequestMapping("login.do")
	public String login(HttpServletRequest req) {
		return "hotel/login";
	}
	
	
	@RequestMapping("signup.do")
	public String signup(HttpServletRequest req) {
		return "hotel/signup";
	}
	
	
	@RequestMapping("blog-details.do")
	public String blog_details(HttpServletRequest req) {
		return "hotel/blog-details";
	}
	
	
	@RequestMapping("reservation")
	public String reservation(HttpServletRequest req) {
		return "hotel/reservation";
	}
	
	
	@RequestMapping("reservation-pay.do")
	public String reservation_pay(HttpServletRequest req) {
		return "hotel/reservation-pay";
	}

	
	@RequestMapping("reservation-success.do")
	public String reservation_success(HttpServletRequest req) {
		return "hotel/reservation-success";
	}
	
	
	@RequestMapping("room-details.do")
	public String room_details(HttpServletRequest req) {
		return "hotel/room-details";
	}
	
}
