package com.chinasofti.dao;

import java.util.List;

import org.springframework.stereotype.Component;

import com.chinasofti.model.UserBasic;



@Component
public interface ApplyMapper {
	
	int applyCompany(String UUID,String recruitId,String username);
	
	String selectApply(String recruitId );
	
	/**
	 * 根据userid返回recruitID
	 * @param userId
	 * @return
	 */
	List<String> selectRecruitID(String userId);
	
	UserBasic selectUserBasic(String userId);
	
	
	
	
}
