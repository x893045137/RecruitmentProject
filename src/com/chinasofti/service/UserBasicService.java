package com.chinasofti.service;

import java.util.List;

import com.chinasofti.model.User;
import com.chinasofti.model.UserBasic;
import com.chinasofti.model.UserEducation;
import com.chinasofti.model.UserObjective;
import com.chinasofti.model.UserWorkexe;

//编辑用户简历
public interface UserBasicService {
		
			/*//查询用户基本信息
			List<UserBasic> selectUserBasic(UserBasic userbasic);*/
			
			//修改用户基本信息
			int updateUserBasic(UserBasic userbasic);
			
			//修改用户求职意向
			int updateUserObjective(UserObjective userobjective);
			
			//修改用户工作经验
			int updateUserWorkexe(UserWorkexe userwordexe);
			
			//修改用户教育经历
			int updateUserEducation(UserEducation usereducation);
			
			//用户简历信息
			List<User> selectUserBasic(User user);
}
