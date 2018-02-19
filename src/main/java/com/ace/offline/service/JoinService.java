package com.ace.offline.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.ace.offline.dao.JoinDao;
import com.ace.offline.domain.User;

public class JoinService {

	@Autowired
	JoinDao joinDao;
	
	public void processUserJoin(User user) {
		joinDao.selectUserInfo();
	}
}
