package com.chinasofti.service;

import java.util.List;

import org.springframework.stereotype.Service;

@Service
public interface ApplyService {
	
	int applyCompany(String UUID,String recruitId,String username);
	
	String selectApply(String recruitId );
	
	List<String> selectRecruitID(String userId);
}
