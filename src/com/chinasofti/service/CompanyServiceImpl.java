package com.chinasofti.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chinasofti.dao.CompanyMapper;
import com.chinasofti.model.Company;
import com.chinasofti.model.CompanyDelivery;
import com.chinasofti.model.Recruitinfo;

@Service
public class CompanyServiceImpl implements CompanyService{
	
	@Autowired
	private CompanyMapper companymapper;
	
	public CompanyMapper getCompanymapper() {
		return companymapper;
	}

	public void setCompanymapper(CompanyMapper companymapper) {
		this.companymapper = companymapper;
	}

	@Override
	public List<Company> selectCompany(Company company) {
		return companymapper.selectCompany(company);
	}

	@Override
	public List<Recruitinfo> selectRecruitinfo(Recruitinfo recruitinfo) {
		return companymapper.selectRecruitinfo(recruitinfo);
	}

	@Override
	public int insertRecruitinfo(Recruitinfo recruitinfo) {
		return companymapper.insertRecruitinfo(recruitinfo);
	}

	@Override
	public int updateRecruitinfo(Recruitinfo recruitinfo) {
		return companymapper.updateRecruitinfo(recruitinfo);
	}

	@Override
	public int insertCompany(Company company) {
		return companymapper.insertCompany(company);
	}

	@Override
	public int updateCompany(Company company) {
		return companymapper.updateCompany(company);
	}

	@Override
	public List<CompanyDelivery> selectCompanyDelivery() {
		return companymapper.selectCompanyDelivery();
	}


}
