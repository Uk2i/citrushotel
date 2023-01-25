package com.citrus.hotel;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.citrus.hotel.dto.NewsDTO;
import com.citrus.hotel.service.HotelMapper;

@Controller
public class ajaxController {
	@Autowired
	private HotelMapper hotelMapper;
	
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
}
