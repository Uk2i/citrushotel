package com.citrus.hotel.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.citrus.hotel.dto.InquiryDTO;
import com.citrus.hotel.dto.NewsDTO;
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
	public List<RoomsDTO> rooms(){
		return sqlSession.selectList("rooms");
	}
	
	
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
	
	
	//방번호에 따른 '1' 상태인(구비되어있음) 시설정보 불러오기
	public List<Facilities_N_CommonDTO> select_room_facilities() {
		return sqlSession.selectList("select_room_facilities");
	}
	
	public List<Facilities_N_CommonDTO> cmmn_nm_test(String room_no) {
		return sqlSession.selectList("cmmn_nm_test",room_no);
	}


	public int insertinq(InquiryDTO dto) {
		
		return sqlSession.insert("insertinq", dto);
	}


	public int emailadd(NewsDTO dto) {
		return sqlSession.insert("insertemail",dto);
	}
	
}
