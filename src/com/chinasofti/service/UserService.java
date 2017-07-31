package com.chinasofti.service;

import java.util.List;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.chinasofti.model.Enterprise;
import com.chinasofti.model.User;

@Service
public interface UserService {

	// 管理员登录
	List<User> login(User user);

	// 根据账号返回用户信息
	User selectByUsername(String username);

	// 登录功能
	int insert(User user);
	
	// 检查企业账号是否已存在
	
		String selectByenterprisename(String enterprisename);
		
		//检查企业会员号是否已存在
		
		String selectBymembership(String membership);
		
		//注册企业
		
		int insertenterprise(Enterprise enterprise);
		
		//新增企业信息
		
		int insertcompany(String... strings);
		
		Enterprise selectByEUsername(String username);
}
