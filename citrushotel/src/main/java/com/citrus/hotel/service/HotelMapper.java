package com.citrus.hotel.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.citrus.hotel.dto.CommonDTO;
import com.citrus.hotel.dto.Facilities_N_CommonDTO;
import com.citrus.hotel.dto.RoomDTO;
import com.citrus.hotel.dto.Room_FacilitiesDTO;
import com.citrus.hotel.dto.RoomsDTO;



@Service
public class HotelMapper {

	@Autowired
	private SqlSession sqlSession;
	
	//방목록 불러오기
	public List<RoomsDTO> rooms(String room_no){
		return sqlSession.selectList("rooms", room_no);
	}
	
/*	여기에는 슬픈 전설이 있어 
	public List<RoomDTO> listRoom() {
		return sqlSession.selectList("roomList");
	}
	
	//전체 시설물 리스트
	public List<CommonDTO> commonFacilitiesList() {
		return sqlSession.selectList("commonFacilitiesList");
	}
	
	//각 방별 시설물 존재여부정보
	public List<Room_FacilitiesDTO> roomFacilitiesList() {
		return sqlSession.selectList("roomFacilitiesList");
	}
	
*/
}
