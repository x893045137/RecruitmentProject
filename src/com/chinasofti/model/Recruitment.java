package com.chinasofti.model;

import java.util.Date;

/**
 * 招聘表
 * @author mxl
 *
 */
public class Recruitment {
	
	private String recruitID; // 招聘id
	
	private String  Membership;//会员号
	
	private Date ReleaseTime;//发布时间

	public String getRecruitID() {
		return recruitID;
	}

	public void setRecruitID(String recruitID) {
		this.recruitID = recruitID;
	}

	public String getMembership() {
		return Membership;
	}

	public void setMembership(String membership) {
		Membership = membership;
	}

	public Date getReleaseTime() {
		return ReleaseTime;
	}

	public void setReleaseTime(Date releaseTime) {
		ReleaseTime = releaseTime;
	}
	
	

	public Recruitment() {
	
	}

	public Recruitment(String recruitID, String membership, Date releaseTime) {	
		this.recruitID = recruitID;
		Membership = membership;
		ReleaseTime = releaseTime;
	}

	@Override
	public String toString() {
		return "Recruitment [recruitID=" + recruitID + ", Membership=" + Membership + ", ReleaseTime=" + ReleaseTime
				+ "]";
	}
	
	
	
	
}
