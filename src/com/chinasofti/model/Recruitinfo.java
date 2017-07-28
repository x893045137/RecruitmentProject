package com.chinasofti.model;

import java.util.Date;

/**
 * 招聘基本信息
 * 
 * @author mxl
 *
 */
public class Recruitinfo {

	private String recruitinfoID;

	public String getRecruitinfoID() {
		return recruitinfoID;
	}

	public void setRecruitinfoID(String recruitinfoID) {
		this.recruitinfoID = recruitinfoID;
	}

	private String recruitID; // 招聘ID

	private String job; // 招聘职位

	private String workExperience;// 工作经验

	private String salary;// 月薪

	private String welfare;// 福利

	private String hiring;// 招聘人数

	private String recordschool;// 学历

	private String membership;// 会员号

	private Date ReleaseTime;// 发布时间

	private String companyName; // 公司名

	private String companyLocation; // 公司地点

	private String companyNature; // 公司性质

	private String companySize; // 公司规模

	private String worktype; // 工作类型

	private String descriptions;// 岗位描述

	private String requirement;// 任职要求

	private String jobtype;// 职业类型

	private String date;

	public String getRecruitID() {
		return recruitID;
	}

	public void setRecruitID(String recruitID) {
		this.recruitID = recruitID;
	}

	public String getJob() {
		return job;
	}

	public void setJob(String job) {
		this.job = job;
	}

	public String getWorkExperience() {
		return workExperience;
	}

	public void setWorkExperience(String workExperience) {
		this.workExperience = workExperience;
	}

	public String getSalary() {
		return salary;
	}

	public void setSalary(String salary) {
		this.salary = salary;
	}

	public String getWelfare() {
		return welfare;
	}

	public void setWelfare(String welfare) {
		this.welfare = welfare;
	}

	public String getHiring() {
		return hiring;
	}

	public void setHiring(String hiring) {
		this.hiring = hiring;
	}

	public String getRecordschool() {
		return recordschool;
	}

	public void setRecordschool(String recordschool) {
		this.recordschool = recordschool;
	}

	public String getMembership() {
		return membership;
	}

	public void setMembership(String membership) {
		this.membership = membership;
	}

	public Date getReleaseTime() {
		return ReleaseTime;
	}

	public void setReleaseTime(Date releaseTime) {
		ReleaseTime = releaseTime;
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

	public String getWorktype() {
		return worktype;
	}

	public void setWorktype(String worktype) {
		this.worktype = worktype;
	}

	public String getDescriptions() {
		return descriptions;
	}

	public void setDescriptions(String descriptions) {
		this.descriptions = descriptions;
	}

	public String getRequirement() {
		return requirement;
	}

	public void setRequirement(String requirement) {
		this.requirement = requirement;
	}

	public String getJobtype() {
		return jobtype;
	}

	public void setJobtype(String jobtype) {
		this.jobtype = jobtype;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public Recruitinfo(String recruitinfoID, String recruitID, String job, String workExperience, String salary,
			String welfare, String hiring, String recordschool, String membership, Date releaseTime, String companyName,
			String companyLocation, String companyNature, String companySize, String worktype, String descriptions,
			String requirement, String jobtype, String date) {
		super();
		this.recruitinfoID = recruitinfoID;
		this.recruitID = recruitID;
		this.job = job;
		this.workExperience = workExperience;
		this.salary = salary;
		this.welfare = welfare;
		this.hiring = hiring;
		this.recordschool = recordschool;
		this.membership = membership;
		ReleaseTime = releaseTime;
		this.companyName = companyName;
		this.companyLocation = companyLocation;
		this.companyNature = companyNature;
		this.companySize = companySize;
		this.worktype = worktype;
		this.descriptions = descriptions;
		this.requirement = requirement;
		this.jobtype = jobtype;
		this.date = date;
	}

	public Recruitinfo(String recruitID) {
		super();
		this.recruitID = recruitID;
	}

	public Recruitinfo() {

	}

	@Override
	public String toString() {
		return "Recruitinfo [recruitinfoID=" + recruitinfoID + ", recruitID=" + recruitID + ", job=" + job
				+ ", workExperience=" + workExperience + ", salary=" + salary + ", welfare=" + welfare + ", hiring="
				+ hiring + ", recordschool=" + recordschool + ", membership=" + membership + ", ReleaseTime="
				+ ReleaseTime + ", companyName=" + companyName + ", companyLocation=" + companyLocation
				+ ", companyNature=" + companyNature + ", companySize=" + companySize + ", worktype=" + worktype
				+ ", descriptions=" + descriptions + ", requirement=" + requirement + ", jobtype=" + jobtype + ", date="
				+ date + "]";
	}

}