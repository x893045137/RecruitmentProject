package com.chinasofti.model;

import java.util.Date;

public class UserWorkexe {
	//id
	private Integer id;
	//用户id
	private Integer userid;
	//起止时间
	private Date uw_starttime;
	//终止时间
	private Date uw_endtime;
	//公司名称
	private String uw_position;
	//职位
	private String companyname;
	//部门
	private String department;
	//工作描述
	private String job_description;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getUserid() {
		return userid;
	}
	public void setUserid(Integer userid) {
		this.userid = userid;
	}
	
	public Date getUw_starttime() {
		return uw_starttime;
	}
	public void setUw_starttime(Date uw_starttime) {
		this.uw_starttime = uw_starttime;
	}
	public Date getUw_endtime() {
		return uw_endtime;
	}
	public void setUw_endtime(Date uw_endtime) {
		this.uw_endtime = uw_endtime;
	}
	public String getUw_position() {
		return uw_position;
	}
	public void setUw_position(String uw_position) {
		this.uw_position = uw_position;
	}
	public String getCompanyname() {
		return companyname;
	}
	public void setCompanyname(String companyname) {
		this.companyname = companyname;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getJob_description() {
		return job_description;
	}
	public void setJob_description(String job_description) {
		this.job_description = job_description;
	}
	
	public UserWorkexe() {
	}
	public UserWorkexe(Integer id, Integer userid, Date uw_starttime, Date uw_endtime, String uw_position,
			String companyname, String department, String job_description) {
		super();
		this.id = id;
		this.userid = userid;
		this.uw_starttime = uw_starttime;
		this.uw_endtime = uw_endtime;
		this.uw_position = uw_position;
		this.companyname = companyname;
		this.department = department;
		this.job_description = job_description;
	}
	@Override
	public String toString() {
		return "UserWorkexe [id=" + id + ", userid=" + userid + ", uw_starttime=" + uw_starttime + ", uw_endtime="
				+ uw_endtime + ", uw_position=" + uw_position + ", companyname=" + companyname + ", department="
				+ department + ", job_description=" + job_description + "]";
	}
	
	
}
