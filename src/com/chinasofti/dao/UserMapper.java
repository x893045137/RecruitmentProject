package com.chinasofti.dao;

import java.util.List;

import org.springframework.stereotype.Component;

import com.chinasofti.model.User;

@Component
public interface UserMapper {
	
	//管理员登录
	List<User> login(User user);
	
	//根据账号返回用户信息	
	User selectByUsername(String username);
	

}
