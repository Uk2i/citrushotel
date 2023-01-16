package com.citrus.hotel;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.citrus.hotel.dto.MemberDTO;
import com.citrus.hotel.service.MemberMapper;

@Controller
public class MemberController {
	
	@Autowired
	MemberMapper MemberMapper;
	
	@Autowired
	BCryptPasswordEncoder pwdEncoder = new BCryptPasswordEncoder();
	
	@RequestMapping("signupinsert.do")
	public String signupinser(HttpServletRequest req,@ModelAttribute MemberDTO dto) {
		try {
			String pwd = pwdEncoder.encode(dto.getMember_pw());
			dto.setMember_pw(pwd);
		}catch(Exception e) {
			e.printStackTrace();
		}
		int res = MemberMapper.insertMember(dto);
		if(res>0) {
			req.setAttribute("msg", "회원가입성공");
			req.setAttribute("url", "index.do");
		}else {
			req.setAttribute("msg", "회원가입실패");
			req.setAttribute("url", req.getServletPath());
		}
		return "message" ;
	}
	@RequestMapping(value = "emailCheck.do")
	public @ResponseBody Map<String, Object>emailCheck(@ModelAttribute MemberDTO dto){
		MemberDTO result = MemberMapper.emailCheck(dto);
		Map<String,Object> resMap = new HashMap<String, Object>();
		resMap.put("result", result);
		return resMap;
		
	}
	
	@RequestMapping(value="loginOk.do")
	public String loginok(HttpServletRequest req, @ModelAttribute MemberDTO dto) {
		
		
		MemberDTO result = MemberMapper.loginMemeber(dto);
		if (dto == null) {
			req.setAttribute("msg", "회원이 아니십니다.");
			req.setAttribute("url", "login.do");
		}else {
			boolean pwdMatch = false;
			pwdMatch = pwdEncoder.matches(dto.getMember_pw(), result.getMember_pw());
			if(pwdMatch) {
				req.setAttribute("msg", result.getMember_name()+"님 환영합니다.");
				req.setAttribute("url", "index.do");
				HttpSession session = req.getSession();
				session.setAttribute("memberDTO", result);
			}else {
				req.setAttribute("msg", "이메일 또는 패스워드가 불일치합니다. 다시입력해주세요.");
				req.setAttribute("url", "login.do");
			}
		}
		
		return "message";
	}
	
}
