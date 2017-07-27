package com.chinasofti.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chinasofti.dao.ApplyMapper;

@Service
public class ApplyServiceImpI  implements ApplyService{
	
	@Autowired
	private ApplyMapper am;
		
	public ApplyMapper getAm() {
		return am;
	}
	public void setAm(ApplyMapper am) {
		this.am = am;
	}




	@Override
	public int applyCompany(String UUID, String recruitId, String username) {
		
		return am.applyCompany(UUID, recruitId, username);
		
	}
	@Override
	public String selectApply(String recruitId) {
		
		return am.selectApply(recruitId);
	}
	@Override
	public List<String> selectRecruitID(String userId) {
		
		return am.selectRecruitID(userId);
	}


}
