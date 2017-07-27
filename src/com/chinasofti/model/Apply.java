package com.chinasofti.model;

/**
 * 申请
 * @author mxl
 *
 */
public class Apply {
	
	private String applyID;
	
	private Recruitinfo recruitinfo;

	public String getApplyID() {
		return applyID;
	}

	public void setApplyID(String applyID) {
		this.applyID = applyID;
	}

	public Recruitinfo getRecruitinfo() {
		return recruitinfo;
	}

	public void setRecruitinfo(Recruitinfo recruitinfo) {
		this.recruitinfo = recruitinfo;
	}

	public Apply(String applyID, Recruitinfo recruitinfo) {
		this.applyID = applyID;
		this.recruitinfo = recruitinfo;
	}

	public Apply() {
		
	}

	@Override
	public String toString() {
		return "Apply [applyID=" + applyID + ", recruitinfo=" + recruitinfo + "]";
	}
	
	
	

}
