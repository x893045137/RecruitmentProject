package com.chinasofti.model;

import java.util.Date;

public class UserEducation {
	// id
	private Integer id;
	// 用户id
	private Integer userid;
	// 起止时间
	private Date ue_starttime;
	// 终止时间
	private Date ue_endtime;
	// 学校
	private String school;
	// 学历
	private String record;
	// 专业
	private String professional;

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

	public Date getUe_starttime() {
		return ue_starttime;
	}

	public void setUe_starttime(Date ue_starttime) {
		this.ue_starttime = ue_starttime;
	}

	public Date getUe_endtime() {
		return ue_endtime;
	}

	public void setUe_endtime(Date ue_endtime) {
		this.ue_endtime = ue_endtime;
	}

	public String getSchool() {
		return school;
	}

	public void setSchool(String school) {
		this.school = school;
	}

	public String getRecord() {
		return record;
	}

	public void setRecord(String record) {
		this.record = record;
	}

	public String getProfessional() {
		return professional;
	}

	public void setProfessional(String professional) {
		this.professional = professional;
	}

	public UserEducation() {
	}

	public UserEducation(Integer id, Integer userid, Date ue_starttime, Date endtime, String school, String record,
			String professional) {
		super();
		this.id = id;
		this.userid = userid;
		this.ue_starttime = ue_starttime;
		this.ue_endtime = endtime;
		this.school = school;
		this.record = record;
		this.professional = professional;
	}

	@Override
	public String toString() {
		return "UserEducation [id=" + id + ", userid=" + userid + ", starttime=" + ue_starttime + ", endtime=" + ue_endtime
				+ ", school=" + school + ", record=" + record + ", professional=" + professional + "]";
	}

}
