package com.chinasofti.model;

public class Recruit {
	
	private Company company;
	
	private Recruitinfo recruitinfo;
		
	private String date;
	
	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public Company getCompany() {
		return company;
	}

	public void setCompany(Company company) {
		this.company = company;
	}

	public Recruitinfo getRecruitinfo() {
		return recruitinfo;
	}

	public void setRecruitinfo(Recruitinfo recruitinfo) {
		this.recruitinfo = recruitinfo;
	}







	@Override
	public String toString() {
		return "Recruit [company=" + company + ", recruitinfo=" + recruitinfo + ", date=" + date + "]";
	}

	public Recruit(Company company, Recruitinfo recruitinfo, String date) {
	
		this.company = company;
		this.recruitinfo = recruitinfo;
		this.date = date;
	}

	public Recruit() {
		
	}




	

}
