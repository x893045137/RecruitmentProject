package com.chinasofti.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.chinasofti.dao.UserMapper;
import com.chinasofti.model.Consumer;

/**
*@author 作者：周天子;
*
*version 创建时间：2017年7月18日下午6:14:07
*
*类说明:
*/

@Component
public class UserServiceImpl implements UserService{

	@Autowired
	private UserMapper userMapper;
	
	
	public UserMapper getUserMapper() {
		return userMapper;
	}


	public void setUserMapper(UserMapper userMapper) {
		this.userMapper = userMapper;
	}


	@Override
	public Consumer selectByUsername(String username) {
		
		return userMapper.selectByUsername(username);
	}

}
