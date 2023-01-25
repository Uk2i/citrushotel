package com.citrus.hotel;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.citrus.hotel.dto.InquiryDTO;
import com.citrus.hotel.dto.RoomsDTO;
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
	public String rooms(HttpServletRequest req, Model model, @RequestParam Map<String,Object> map, String room_type) {
		if(room_type==null) {
			room_type = " ";
		}
		
		map.put("room_type", room_type);
		List<RoomsDTO> room_list = hotelMapper.rooms(map);
		
		req.setAttribute("room_list",room_list);
		System.out.println(room_list);
		
		
/*		
		//방 전체 리스트
		List<RoomDTO> list = hotelMapper.listRoom();
		req.setAttribute("roomList", list);
		
		
		for(int i=0;i<list.size();i++) {
			System.out.print(list.get(i).getRoom_no()+" ");	
		}
		
		List<CommonDTO> cmList = hotelMapper.commonFacilitiesList();
		
		model.addAttribute("commonFacilitiesList", cmList);
		
		
		
		List<Room_FacilitiesDTO> rfList = hotelMapper.roomFacilitiesList();
		model.addAttribute("roomFacilitiesList", rfList);
*/		
		
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
	public String room_details(HttpServletRequest req, @RequestParam Map<String,Object> map, String room_no) {
		
		map.put("room_no", room_no);
		
		List<RoomsDTO> room_list = hotelMapper.rooms(map);
		req.setAttribute("room_list", room_list); 
		
		return "hotel/room-details";
	}
	@RequestMapping("contactok.do")
	public String contactok(HttpServletRequest req, @ModelAttribute InquiryDTO dto) {
		Date today = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy:MM:dd:HH:mm");
		dto.setInq_ymd(sdf.format(today));
		int res = hotelMapper.insertinq(dto);
		if(res>0) {
			req.setAttribute("msg", "문의성공");
		}else {
			req.setAttribute("msg", "문의실패");
		}
		req.setAttribute("url", "contact.do");
		return "message";
	}
	
}
