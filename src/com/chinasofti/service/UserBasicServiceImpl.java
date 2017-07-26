package com.chinasofti.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chinasofti.dao.UserBasicMapper;
import com.chinasofti.model.User;
import com.chinasofti.model.UserBasic;
import com.chinasofti.model.UserEducation;
import com.chinasofti.model.UserObjective;
import com.chinasofti.model.UserWorkexe;
//编辑用户基本信息
@Service
public class UserBasicServiceImpl implements UserBasicService{

	@Autowired
	private UserBasicMapper userbasicmapper;
	
	public UserBasicMapper getUserbasicmapper() {
		return userbasicmapper;
	}

	public void setUserbasicmapper(UserBasicMapper userbasicmapper) {
		this.userbasicmapper = userbasicmapper;
	}
	
/*	//查询用户基本信息
	@Override
	public List<UserBasic> selectUserBasic(UserBasic userbasic) {
		return userbasicmapper.selectUserBasic(userbasic);
	}*/

	//修改基本信息
	@Override
	public int updateUserBasic(UserBasic userbasic) {
		return userbasicmapper.updateUserBasic(userbasic);
	}

	@Override
	public int updateUserObjective(UserObjective userobjective) {
		return userbasicmapper.updateUserObjective(userobjective);
	}

	@Override
	public int updateUserWorkexe(UserWorkexe userwordexe) {
		return userbasicmapper.updateUserWorkexe(userwordexe);
	}

	@Override
	public int updateUserEducation(UserEducation usereducation) {
		return userbasicmapper.updateUserEducation(usereducation);
	}

	@Override
	public List<User> selectUserBasic(User user) {
		return userbasicmapper.selectUserBasic(user);
	}
	
}
