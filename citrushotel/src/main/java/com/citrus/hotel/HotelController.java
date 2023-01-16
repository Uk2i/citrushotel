package com.citrus.hotel;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.citrus.hotel.dto.CommonDTO;
import com.citrus.hotel.dto.RoomDTO;
import com.citrus.hotel.dto.Room_FacilitiesDTO;
import com.citrus.hotel.service.HotelMapper;


@Controller
public class HotelController {	
	@Autowired
	private HotelMapper hotelMapper;
	
	
	@RequestMapping(value = {"/","index.do"}, method = RequestMethod.GET)
	public String home(HttpServletRequest req) {
		
		return "index";
	}
	
	@RequestMapping("rooms.do")
	public String rooms(HttpServletRequest req) {
		
		//방 전체 리스트
		List<RoomDTO> list = hotelMapper.listRoom();
		req.setAttribute("roomList", list);
		
		
		for(int i=0;i<list.size();i++) {
			System.out.print(list.get(i).getRoom_no()+" ");	
		}
		
		List<CommonDTO> cmList = hotelMapper.commonFacilitiesList();
		req.setAttribute("commonFacilitiesList", cmList);
		
		
		
		List<Room_FacilitiesDTO> rfList = hotelMapper.roomFacilitiesList();
		req.setAttribute("roomFacilitiesList", rfList);
		
		
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
	
	
	@RequestMapping("reservation.do")
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
