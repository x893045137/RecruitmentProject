package com.chinasofti.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chinasofti.dao.UserMapper;
import com.chinasofti.model.User;

@Service
public class UserServiceImpl implements UserService{
	
	@Autowired
	private UserMapper userMapper;
	
	public UserMapper getUserMapper() {
		return userMapper;
	}
	
	public void setUserMapper(UserMapper userMapper) {
		this.userMapper = userMapper;
	}


	//管理员登录
	public List<User> login(User user) {
		return userMapper.login(user);
	}

	@Override
	public User selectByUsername(String username) {
		
		return userMapper.selectByUsername(username);
	}
}
