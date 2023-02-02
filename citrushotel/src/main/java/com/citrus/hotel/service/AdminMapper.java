package com.citrus.hotel.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.citrus.hotel.dto.CommonDTO;
import com.citrus.hotel.dto.Hotel_InfoDTO;
import com.citrus.hotel.dto.MemberDTO;
import com.citrus.hotel.dto.RoomDTO;
import com.citrus.hotel.dto.Room_FacilitiesDTO;

@Service
public class AdminMapper {
	
	@Autowired
	private SqlSession sqlSession;

	public MemberDTO adminlogin(MemberDTO dto) {
		return sqlSession.selectOne("adminlogin", dto);
	}
	
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
	
	public List<CommonDTO> common_data(){
		return sqlSession.selectList("common_data");
	}
	
	public List<Room_FacilitiesDTO> facilities_data(Map<String,Object> map){
		return sqlSession.selectList("facilities_data", map);
	}
	
	public int room_edit(Map<String,Object>map) {
		return sqlSession.update("room_edit");
	}

	public int changepasswd(MemberDTO dto) {
		return sqlSession.update("adminpwchange",dto);
	}
}
