package com.chinasofti.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chinasofti.dao.UserMapper;
import com.chinasofti.model.Enterprise;
import com.chinasofti.model.User;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserMapper userMapper;

	public UserMapper getUserMapper() {
		return userMapper;
	}

	public void setUserMapper(UserMapper userMapper) {
		this.userMapper = userMapper;
	}

	// 管理员登录
	public List<User> login(User user) {
		return userMapper.login(user);
	}

	@Override
	public User selectByUsername(String username) {

		return userMapper.selectByUsername(username);
	}

	@Override
	public int insert(User user) {
		return userMapper.insertRegister(user);

	}

	// 检查企业账号是否已存在
	@Override
	public String selectByenterprisename(String enterprisename) {
		
		return userMapper.selectByenterprisename(enterprisename);
	}
	//检查企业会员号是否已存在
	@Override
	public String selectBymembership(String membership) {
		
		return userMapper.selectBymembership(membership);
	}
	//注册企业
	@Override
	public int insertenterprise(Enterprise enterprise) {
		
		return userMapper.insertenterprise(enterprise);
	}



	@Override
	public Enterprise selectByEUsername(String username) {
		return userMapper.selectByEUsername(username);
	}
	//新增企业信息
	@Override
	public int insertcompany(String membership, String companyName, String companyLocation) {
		
		return userMapper.insertcompany(membership, companyName, companyLocation);
	}
}
