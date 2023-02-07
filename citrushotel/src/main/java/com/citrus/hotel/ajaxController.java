package com.citrus.hotel;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.citrus.hotel.dto.CGroupDTO;
import com.citrus.hotel.dto.CommonDTO;
import com.citrus.hotel.dto.GroupDTO;
import com.citrus.hotel.dto.MemberDTO;
import com.citrus.hotel.dto.NewsDTO;
import com.citrus.hotel.service.AdminMapper;
import com.citrus.hotel.service.HotelMapper;

@Controller
public class ajaxController {
	@Autowired
	private HotelMapper hotelMapper;
	
	@Autowired
	private AdminMapper adminMapper;
	
	@Autowired
	private com.citrus.hotel.service.utilMapper utilMapper;
	
	@Autowired
	BCryptPasswordEncoder pwdEncoder = new BCryptPasswordEncoder();
	
	@RequestMapping("emailadd.do")
	public @ResponseBody Map<String,Object> emailadd(@ModelAttribute NewsDTO dto){
		Map<String,Object> resmap = new HashMap<String,Object>();
		Date today = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy:MM:dd:HH:mm");
		dto.setNews_date(sdf.format(today));
		int res = hotelMapper.emailadd(dto);
		resmap.put("res", res);
		return resmap;
	}
	@RequestMapping("adminpwemail.do")
	public @ResponseBody Map<String,Object>adminpwemail(@ModelAttribute MemberDTO dto){
		
		Map<String,Object> resmap = new HashMap<String,Object>();
		dto.setMember_grade(5);
		MemberDTO mdto = adminMapper.adminlogin(dto);
		int resnumber = utilMapper.sendCertiMail(mdto);
		System.out.println(resnumber);
		resmap.put("res", mdto);
		resmap.put("email",mdto.getMember_email());
		resmap.put("resnum",resnumber);
		return resmap;
	}
	@RequestMapping("adminchangepwd.do")
	public @ResponseBody int adminchangepwd(@ModelAttribute MemberDTO dto) {
		try {
			String pwd = pwdEncoder.encode(dto.getMember_pw());
			dto.setMember_pw(pwd);
		}catch(Exception e) {
			e.printStackTrace();
		}
		dto.setMember_grade(5);
		int res = adminMapper.changepasswd(dto);
		
		return res;
	}
	
	@RequestMapping("codeadd.do")
	public @ResponseBody int codeadd(@ModelAttribute CommonDTO dto) {
		int res = adminMapper.insertcommon(dto);
		return res;
	}
	@RequestMapping("coedit.do")
	public @ResponseBody int coedit(@ModelAttribute CommonDTO dto) {
		int res = adminMapper.updatecommon(dto);
		return res;
	}
	@RequestMapping("searchcode.do")
	public @ResponseBody Map<String,Object> searchcode(@ModelAttribute GroupDTO dto){
		Map<String,Object> resMap = new HashMap<String,Object>();
		List<CGroupDTO>cglist = new ArrayList<CGroupDTO>();
		System.out.println(dto.getGroup_nm()+"필요한거!!!!");
		System.out.println(dto.getGroup_cd()+"필요없는거!!!");
		if(dto.getGroup_nm().equals("all")) {
			cglist = adminMapper.cgroupList();
		}else {
			cglist = adminMapper.cgroupList(dto);
		}
		resMap.put("cgList", cglist);
		return resMap;
	}
}
