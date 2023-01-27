package com.citrus.hotel;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.citrus.hotel.dto.CommonDTO;
import com.citrus.hotel.dto.Hotel_InfoDTO;
import com.citrus.hotel.dto.RoomDTO;
import com.citrus.hotel.service.AdminMapper;


@Controller
public class AdminController {
	@Autowired
	private AdminMapper adminMapper;
	
	@RequestMapping("auth-forgot-password.do")
	public String auth_forget_password(){
		return "admin/auth-forgot-password";
	}
	
	@RequestMapping("auth-login.do")
	public String auth_login() {
		return "admin/auth-login";
	}
	
	@RequestMapping("code-manage.do")
	public String code_manage() {
		return "admin/code-manage";
	}
	
	@RequestMapping("hotel-info.do")
	public String hotel_info(HttpServletRequest req) {
		List<Hotel_InfoDTO> hotelInfoList = adminMapper.hotelInfoList();
		return "admin/hotel-info";
	}
	
	@RequestMapping("hotel-reserve.do")
	public String hotel_reserve() {
		return "admin/hotel-reserve";
	}
	
	@RequestMapping("hotel-room.do")
	public String hotel_room() {
		return "admin/hotel-room";
	}
	
	@RequestMapping("menu-about.do")
	public String menu_about() {
		return "admin/menu-about";
	}
	
	@RequestMapping("menu-blog.do")
	public String menu_blog() {
		return "admin/menu-blog";
	}
	
	@RequestMapping("menu-home.do")
	public String menu_home() {
		return "admin/menu-home";
	}
	
	@RequestMapping("user-manage.do")
	public String user_manage() {
		return "admin/user-manage";
	}
	
	@RequestMapping("user-subscribe.do")
	public String user_subscribe() {
		return "admin/user-subscribe";
	}
	
	
	
	
	@RequestMapping("room_list.do")
	public @ResponseBody Map<String, Object> room_list(HttpServletRequest req){
		Map<String, Object> resMap = new HashMap<String, Object>();
		
		List<RoomDTO> list = adminMapper.room_list();
		
		resMap.put("list", list);
		
		return resMap;
	}
	
	
	@RequestMapping("room_data.do")
	public @ResponseBody Map<String, Object> room_data(HttpServletRequest req, @RequestParam Map<String,Object> map){
		Map<String, Object> resMap = new HashMap<String, Object>();
		
		List<RoomDTO> list = adminMapper.room_data(map);
		List<CommonDTO> cmmnList = adminMapper.common_data(map);
		
		
		resMap.put("list",list);
		resMap.put("cmmnList", cmmnList);
		//resMap.put("rflist",rflist);
		return resMap;
	}
	
	@RequestMapping("room_edit.do")
	public @ResponseBody String room_edit(@RequestParam Map<String,Object>map){
		int res = adminMapper.room_edit(map);
		
		if(res == 0) {
			
		}else {
			
		}
		
		return "message";
	}
}





















