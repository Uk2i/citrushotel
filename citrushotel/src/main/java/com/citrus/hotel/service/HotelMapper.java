package com.citrus.hotel.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.citrus.hotel.dto.InquiryDTO;
import com.citrus.hotel.dto.RoomDTO;

@Service
public class HotelMapper {
	@Autowired
	private SqlSession sqlSession;
	
	
	public List<RoomDTO> listRoom(Map<String,Object> map) {
		return sqlSession.selectList("roomList",map);
	}


	public int insertinq(InquiryDTO dto) {
		
		return sqlSession.insert("insertinq", dto);
	}
	
}
