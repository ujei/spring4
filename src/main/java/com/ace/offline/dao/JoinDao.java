package com.ace.offline.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ace.offline.dao.mapper.UserMapper;
import com.ace.offline.domain.User;

@Repository
public class JoinDao {

	@Autowired
	UserMapper userMapper;
	
	public void insertUserJoinInfo(User userInfo) {
		
	}
	
	public void selectUserInfo() {
		userMapper.getUser();
	}
}
