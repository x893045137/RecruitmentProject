package com.chinasofti.service;

import java.util.List;

import com.chinasofti.model.Company;
import com.chinasofti.model.CompanyDelivery;
import com.chinasofti.model.Recruitinfo;

public interface CompanyService {

	// 查询公司基本信息
	List<Company> selectCompany(Company company);

	// 新增公司基本信息
	int insertCompany(Company company);
	
	//修改企业基本信息
	int updateCompany(Company company);

	// 查询公司招聘信息
	List<Recruitinfo> selectRecruitinfo(Recruitinfo recruitinfo);

	// 新增公司招聘信息
	int insertRecruitinfo(Recruitinfo recruitinfo);

	// 修改公司招聘信息
	int updateRecruitinfo(Recruitinfo recruitinfo);
	
	//查询所有投递
	List<CompanyDelivery> selectCompanyDelivery();
}
