package com.citrus.hotel.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.citrus.hotel.dto.CGroupDTO;
import com.citrus.hotel.dto.CommonDTO;
import com.citrus.hotel.dto.GroupDTO;
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
	public int hotelInfoInsert(Hotel_InfoDTO dto) {
		return sqlSession.insert("hotelInfoInsert",dto);
	}

	public int hotelInfoEdit(Hotel_InfoDTO dto) {
		return sqlSession.update("hotelInfoEdit", dto);
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

	public int room_add(Map<String,Object>map) {
		return sqlSession.insert("room_add",map);
	}

	public int rf_checked_edit(Map<String,Object> map) {
		return sqlSession.update("rf_checked_edit", map);
	}

	public int rf_default_setting(Map<String,Object> map) {
		return sqlSession.insert("rf_default_setting", map);
	}

	public int room_edit(Map<String,Object>map) {
		return sqlSession.update("room_edit", map);
	}

	public int checkbox_default(Map<String,Object> map) {
		return sqlSession.update("checkbox_default", map);
	}

	public int changepasswd(MemberDTO dto) {
		return sqlSession.update("adminpwchange",dto);
	}

	public List<GroupDTO> groupList() {
		return sqlSession.selectList("group_list");
	}

	public int insertcommon(CommonDTO dto) {
		return sqlSession.insert("insertcode",dto);
	}

	public List<CGroupDTO> cgroupList() {
		return sqlSession.selectList("cgroup_list");
	}

	public int updatecommon(CommonDTO dto) {
		return sqlSession.update("coedit", dto);
	}

	public List<CGroupDTO> cgroupList(GroupDTO dto) {
		return sqlSession.selectList("sercgroup_list",dto);
	}


}
