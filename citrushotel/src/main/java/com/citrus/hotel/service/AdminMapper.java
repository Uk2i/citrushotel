package com.citrus.hotel.service;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.citrus.hotel.dto.MemberDTO;

@Service
public class AdminMapper {
	
	@Autowired
	private SqlSession sqlSession;

	public MemberDTO adminlogin(MemberDTO dto) {
		return sqlSession.selectOne("adminlogin", dto);
	}
	
	
}
