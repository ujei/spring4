package com.ace.offline.dao.mapper;

import org.springframework.stereotype.Repository;

import com.ace.offline.domain.User;

@Repository(value="userMapper")
public interface UserMapper {

	public User getUser();
}
