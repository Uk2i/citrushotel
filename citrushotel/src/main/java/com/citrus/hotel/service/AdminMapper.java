package com.citrus.hotel.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.citrus.hotel.dto.Hotel_InfoDTO;
import com.citrus.hotel.dto.RoomDTO;

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
	
	
	
	public List<RoomDTO> room_list(){
		return sqlSession.selectList("room_list");
	}
	
	public List<RoomDTO> room_data(Map<String,Object> map){
		return sqlSession.selectList("room_data",map);
	}
}
