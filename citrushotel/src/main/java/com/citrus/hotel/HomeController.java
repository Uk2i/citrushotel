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
	
	
}
