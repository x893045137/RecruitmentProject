package com.chinasofti.service;

import java.util.List;

import com.chinasofti.model.Company;
import com.chinasofti.model.Recruitinfo;

public interface CompanyService {

	// 查询公司基本信息
	List<Company> selectCompany(Company company);

	// 查询公司招聘信息
	List<Recruitinfo> selectRecruitinfo(Recruitinfo recruitinfo);

	// 新增公司招聘信息
	int insertRecruitinfo(Recruitinfo recruitinfo);

	// 修改公司招聘信息
	int updateRecruitinfo(Recruitinfo recruitinfo);
}
