package com.chinasofti.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chinasofti.dao.RecruitMapper;
import com.chinasofti.model.Recruit;
import com.chinasofti.model.Recruitinfo;

@Service
public class RecruitServiceImpI implements RecruitService{
	
	@Autowired
	private RecruitMapper rm;
	public RecruitMapper getRm() {
		return rm;
	}
	public void setRm(RecruitMapper rm) {
		this.rm = rm;
	}
	
	@Override
	public List<Recruitinfo> selectAllRecruit(Integer currage, Integer page) {
		
		return rm.selectAllRecruit(currage, page);
	}
	@Override
	public List<Recruitinfo> selectRecruit() {
		
		return rm.selectRecruit();
	}
	/**
	 *分页 模糊查询
	 */
	@Override
	public List<Recruitinfo> selectRecruits(Recruitinfo recruit, Integer currage, Integer page , String keyword) {
	
		return rm.selectRecruits(recruit, currage, page,keyword);
	}
	
	/**
	 * 模糊查询所有
	 */
	@Override
	public List<Recruitinfo> selectAllRecruits(Recruitinfo recruit,String keyword) {
		
		return rm.selectAllRecruits(recruit,keyword);
	}
	
	/**
	 * 返回单个招聘的所有信息
	 */
	@Override
	public Recruitinfo selectRecruitment(String recruitID) {
			
		return rm.selectRecruitment(recruitID);
	}
	
	//返回相似职位信息
	@Override
	public List<Recruitinfo> selectLikeRecruit(Recruitinfo recruit) {
		
		return rm.selectLikeRecruit(recruit);
	}




	

}
