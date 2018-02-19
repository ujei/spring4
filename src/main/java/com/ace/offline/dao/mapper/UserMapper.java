package com.ace.offline.dao.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.ace.offline.domain.User;

@Mapper
public interface UserMapper {

	public User getUser();
}
