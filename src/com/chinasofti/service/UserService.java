package com.chinasofti.service;

import java.util.List;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.chinasofti.model.User;

public interface UserService {
	
	//管理员登录
	List<User> login(User user);
	
	//根据账号返回用户信息	
	User selectByUsername(String username);
}
