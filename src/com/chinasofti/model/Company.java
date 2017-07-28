package com.chinasofti.model;

public class Company {
	//公司简称
	private String membership;
	//公司名称
	private String companyName;
	//公司地址
	private String companyLocation;
	//公司性质
	private String companyNature;
	//公司规模
	private String companySize;
	
	public String getMembership() {
		return membership;
	}
	public void setMembership(String membership) {
		this.membership = membership;
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
	
	public Company() {
	}
	public Company(String membership, String companyName, String companyLocation, String companyNature,
			String companySize, Integer c_enterpriseid) {
		super();
		this.membership = membership;
		this.companyName = companyName;
		this.companyLocation = companyLocation;
		this.companyNature = companyNature;
		this.companySize = companySize;
	}
	@Override
	public String toString() {
		return "Company [membership=" + membership + ", companyName=" + companyName + ", companyLocation="
				+ companyLocation + ", companyNature=" + companyNature + ", companySize=" + companySize + "]";
	}
}
