package com.chinasofti.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import com.chinasofti.model.Recruit;
import com.chinasofti.model.Recruitinfo;

@Service
public interface RecruitService {
	
	List<Recruitinfo> selectAllRecruit(Integer currage,Integer page);
	
	List<Recruitinfo> selectRecruit();
	
	//分页模糊查询
	List<Recruitinfo> selectRecruits(Recruitinfo recruit,Integer currage,Integer page);
	
	//模糊查询所有
	List<Recruitinfo> selectAllRecruits(Recruitinfo recruit);
	
	//返回进一步招聘信息
	Recruitinfo selectRecruitment(String recruitID);
	
	//返回相似职位信息
	
	List<Recruitinfo> selectLikeRecruit(@Param("recruit") Recruitinfo recruit);
	
}
