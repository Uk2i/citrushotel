package com.citrus.hotel.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.citrus.hotel.dto.Hotel_InfoDTO;

@Service
public class AdminMapper {
	
	@Autowired
	private SqlSession sqlSession;
	
	public List<Hotel_InfoDTO> hotelInfoList(){
		return sqlSession.selectList("hotelInfoList");
	}
	
	public int hotelInfoEdit() {
		return sqlSession.update("hotelInfoEdit");
	}
	
}
