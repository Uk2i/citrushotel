package com.citrus.hotel;

import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.citrus.hotel.dto.CGroupDTO;
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
		List<CGroupDTO>cglist = adminMapper.cgroupList();
		req.setAttribute("glist", glist);
		req.setAttribute("cglist", cglist);
		return "admin/code-manage";
	}
	
	@RequestMapping("hotel-info.do")
	public String hotel_info(HttpServletRequest req) {
		List<Hotel_InfoDTO> hotelInfoList = adminMapper.hotelInfoList();
		return "admin/hotel-info";
	}

	@RequestMapping("hotel-info-edit.do")
	public String hotel_info_edit(HttpServletRequest req, Hotel_InfoDTO hotel_infoDTO){

		// 기존에 입력된 호텔정보가 있는지 확인하기 위해 조회
		List<Hotel_InfoDTO> hotelInfoList = adminMapper.hotelInfoList();

		int hotelInfo = 0;
		// 조회값이 없으면 입력, 있으면 수정
		// 우선 호텔 정보는 하나만 있는것으로 한정짓고
		// hotel_info 테이블의 쿼리문에 hi_no = 1 로 지정, hi_name 도 'Citrus Hotel' 고정
		if(hotelInfoList.isEmpty()) {
			hotelInfo = adminMapper.hotelInfoInsert(hotel_infoDTO);
		} else {
			hotelInfo = adminMapper.hotelInfoEdit(hotel_infoDTO);
		}

		System.out.println("hotel_infoDTO = " + hotel_infoDTO);
		System.out.println("hi_addr = " + hotel_infoDTO.getHi_addr());

		if(hotelInfo == 1){
			req.setAttribute("msg","호텔 정보 입력/수정 완료!");
			req.setAttribute("url","hotel-info.do");
		} else {
			req.setAttribute("msg","호텔 정보 입력/수정 실패!");
			req.setAttribute("url","hotel-info.do");
		}

		return "message";
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
	
	@RequestMapping("room_add.do")
	public String room_add(HttpServletRequest req,@RequestParam Map<String,Object> map) {
		//시설 체크박스, 이미지 구현 해야함
		System.out.println(map + " : 이것이 Map 값들이지");
		
		if(map.get("room_use")!=null) {
			map.put("room_use", 1);
		} else {
			map.put("room_use", 0);
		}
		
		int room_add = adminMapper.room_add(map);
		
		System.out.println(room_add+ "room_add 값이다아아아아아아아아아아아아");
		
		
		
		return "message";
	}
	
	@RequestMapping("room_edit.do")
	public String room_edit(HttpServletRequest req, @RequestParam Map<String,Object>map){
		System.out.println(map + " : 이것이 Map 값들이지");
		
		
		map.put("CheckedList", Arrays.asList(map.get("hiddenValue")));
		
		// 이미지 구현 해야함.
		

		//방정보 수정 (테이블 room)
		int room_edit = adminMapper.room_edit(map);

		req.setAttribute("url", "hotel-room.do");
		
		if(room_edit == 0) {
			req.setAttribute("msg", "방정보 수정 실패ㅠㅠ");
		} else {
			//체크박스 초기화 전부 0으로 먼저 처리
			int roomf_use_off_all = adminMapper.checkbox_default(map);
			int roomf_use_on = 0;

			if(roomf_use_off_all == 0) {
				req.setAttribute("msg", "checkbox_default 실패 !!!!");
			
			}else {
				//체크된 값들 받아서 1로 재 설정
			
				roomf_use_on = adminMapper.checkbox_update(map);
				
				if(roomf_use_on == 0) {
					req.setAttribute("msg", "roomf_use_on 실패");
				}else {
					req.setAttribute("msg", "방정보 수정 성공");
				}
			}			
		}
		
		
		
		
		
		
		

		
		return "message";
	}
}





















