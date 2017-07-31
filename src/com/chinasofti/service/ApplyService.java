package com.chinasofti.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.chinasofti.model.UserBasic;

@Service
public interface ApplyService {
	
	int applyCompany(String UUID,String recruitId,String username);
	
	String selectApply(String recruitId );
	
	List<String> selectRecruitID(String userId);
	
	//返回个人信息
	UserBasic selectUserBasic(String userId);
}
