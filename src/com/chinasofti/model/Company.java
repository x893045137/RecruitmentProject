package com.chinasofti.model;


/**
 * 公司表
 * @author mxl
 *
 */
public class Company {
	
	private String Membership; //会员号
	
	private String companyName; //公司名
	
	private String companyLocation; //公司地点
	
	private String companyNature; //公司性质
	
	private String companySize; //公司规模

	public String getMembership() {
		return Membership;
	}

	public void setMembership(String membership) {
		Membership = membership;
	}

	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	public String getCompanyLocation() {
		return companyLocation;
	}

	public void setCompanyLocation(String companyLocation) {
		this.companyLocation = companyLocation;
	}

	public String getCompanyNature() {
		return companyNature;
	}

	public void setCompanyNature(String companyNature) {
		this.companyNature = companyNature;
	}

	public String getCompanySize() {
		return companySize;
	}

	public void setCompanySize(String companySize) {
		this.companySize = companySize;
	}

	public Company(String membership, String companyName, String companyLocation, String companyNature,
			String companySize) {		
		Membership = membership;
		this.companyName = companyName;
		this.companyLocation = companyLocation;
		this.companyNature = companyNature;
		this.companySize = companySize;
	}

	public Company() {
		
	}

	@Override
	public String toString() {
		return "Company [Membership=" + Membership + ", companyName=" + companyName + ", companyLocation="
				+ companyLocation + ", companyNature=" + companyNature + ", companySize=" + companySize + "]";
	}
	
	
	
}
