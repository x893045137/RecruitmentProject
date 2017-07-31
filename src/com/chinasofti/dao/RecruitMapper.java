package com.chinasofti.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;

import com.chinasofti.model.Recruit;
import com.chinasofti.model.Recruitinfo;

@Component
public interface RecruitMapper {
	
	List<Recruitinfo> selectAllRecruit(Integer currage,Integer page);
	
	List<Recruitinfo> selectRecruit();
	
	List<Recruitinfo> selectRecruits(@Param("recruit") Recruitinfo recruit,@Param("currage") Integer currage,@Param("page") Integer page,@Param("keyword") String keyword);
	
	//List<Recruitinfo> selectRecruits(Recruitinfo recruit);

	List<Recruitinfo> selectAllRecruits(@Param("recruit") Recruitinfo recruit,@Param("keyword") String keyword);
	
	//返回单个招聘的所有信息
	Recruitinfo selectRecruitment(String recruitID);
	
	//返回相似职位信息
	
	List<Recruitinfo> selectLikeRecruit(@Param("recruit") Recruitinfo recruit);
	
	

}
