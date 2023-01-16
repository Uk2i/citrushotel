package com.citrus.hotel.service;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.citrus.hotel.dto.MemberDTO;

@Service
public class MemberMapper {
	
	@Autowired
	private SqlSession sqlSession;
	

	public MemberDTO emailCheck(MemberDTO dto) {
		return sqlSession.selectOne("emailcheck",dto);
	}


	public int insertMember(MemberDTO dto) {
		return sqlSession.insert("insertMember", dto);
	}


	public MemberDTO loginMemeber(MemberDTO dto) {
		return sqlSession.selectOne("getMember",dto);
	}
}
