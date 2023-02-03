package com.citrus.hotel;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.citrus.hotel.dto.CommonDTO;
import com.citrus.hotel.dto.GroupDTO;
import com.citrus.hotel.dto.Hotel_InfoDTO;
import com.citrus.hotel.dto.MemberDTO;
import com.citrus.hotel.dto.RoomDTO;
import com.citrus.hotel.dto.Room_FacilitiesDTO;
import com.citrus.hotel.service.AdminMapper;


@Controller
public class AdminController {
	@Autowired
	private AdminMapper adminMapper;
	
	@Autowired
	BCryptPasswordEncoder pwdEncoder = new BCryptPasswordEncoder();
	
	
	@RequestMapping("auth-forgot-password.do")
	public String auth_forget_password(){
		return "admin/auth-forgot-password";
	}
	
	@RequestMapping("/admin")
	public String auth_login() {
		return "admin/auth-login";
	}

	@RequestMapping("adminloginpage.do")
	public String adminlogin() {
		return "admin/auth-login";
	}
	
	@RequestMapping("code-manage.do")
	public String code_manage(HttpServletRequest req) {
		List<GroupDTO> glist = adminMapper.groupList();
		req.setAttribute("glist", glist);
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
	
	@RequestMapping("adminlogin.do")
	public String adminlogin(HttpServletRequest req,HttpSession session ,@ModelAttribute MemberDTO dto) {
		
		MemberDTO mdto = adminMapper.adminlogin(dto); 
		if(mdto == null) {
			req.setAttribute("url", "adminloginpage.do");
			req.setAttribute("msg",	"회원이 아닙니다." );
		}else {
			boolean pwdMatch = false;
			pwdMatch = pwdEncoder.matches(dto.getMember_pw(), mdto.getMember_pw());
			if(pwdMatch) {
				req.setAttribute("msg", mdto.getMember_name()+"관리자님 환영합니다.");
				req.setAttribute("url", "hotel-info.do");
				session.setAttribute("memberDTO", mdto);
			}else {
				req.setAttribute("msg", "이메일 또는 패스워드가 불일치합니다. 다시입력해주세요.");
				req.setAttribute("url", "adminloginpage.do");
			}
		}

		return "message";
	}
	
	
	@RequestMapping("room_list.do")
	public @ResponseBody Map<String, Object> room_list(HttpServletRequest req){
		Map<String, Object> resMap = new HashMap<String, Object>();
		
		List<RoomDTO> list = adminMapper.room_list();
		
		resMap.put("list", list);
		
		return resMap;
	}
	
	@RequestMapping("logout.do")
	public String logout(HttpServletRequest req, HttpSession session) {
		session.invalidate();
		req.setAttribute("msg", "로그아웃 되었습니다.");
		req.setAttribute("url", "adminloginpage.do");
		return "message";
	}
	
	
	@RequestMapping("room_data.do")
	public @ResponseBody Map<String, Object> room_data(HttpServletRequest req, @RequestParam Map<String,Object> map){
		Map<String, Object> resMap = new HashMap<String, Object>();
		
		List<RoomDTO> list = adminMapper.room_data(map);
		List<CommonDTO> cmmnList = adminMapper.common_data();
		List<Room_FacilitiesDTO> facilitiesList = adminMapper.facilities_data(map);
		
		resMap.put("list",list);
		resMap.put("cmmnList", cmmnList);
		resMap.put("facilitiesList", facilitiesList);
		
		//resMap.put("rflist",rflist);
		return resMap;
	}
	
	@RequestMapping("room_edit.do")
	public @ResponseBody String room_edit(@RequestParam Map<String,Object>map, String[] e_cmmn_cd){
		
		System.out.println(map + "??map??");
		
		
		for(int i=0;i<e_cmmn_cd.length;i++) {
			System.out.println(e_cmmn_cd[i]);
			
		}
		System.out.println(map.get("e_roomNo"));
		System.out.println(map.get("e_roomType"));
		System.out.println(map.get("e_roomFit"));
		System.out.println(map.get("e_roomMax"));
		System.out.println(map.get("e_roomBed"));
		System.out.println(map.get("e_roomPrice"));
		System.out.println(map.get("e_roomSize"));
		System.out.println(map.get("cmmn_cd"));
		System.out.println(map.get("hiddenValue"));
//		int res = adminMapper.room_edit(map);
		
//		if(res == 0) {
//			
//		}else {
//			
//		}
		
		return "message";
	}
}





















