package com.citrus.hotel.service;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminMapper {
	
	@Autowired
	private SqlSession sqlSession;
	
	
}
