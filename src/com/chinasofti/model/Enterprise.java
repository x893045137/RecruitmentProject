package com.chinasofti.model;

/**
 * 企业类
 * @author mxl
 *
 */
public class Enterprise {
	
	
	private String enterpriseId; // 企业注册ID
	
	private String membership; // 会员号
	
	private String 	enterprisename; // 企业账号
	
	private String enterprisepwd; // 企业密码


	public String getEnterpriseId() {
		return enterpriseId;
	}

	public void setEnterpriseId(String enterpriseId) {
		this.enterpriseId = enterpriseId;
	}

	public String getMembership() {
		return membership;
	}

	public void setMembership(String membership) {
		this.membership = membership;
	}

	public String getEnterprisename() {
		return enterprisename;
	}

	public void setEnterprisename(String enterprisename) {
		this.enterprisename = enterprisename;
	}

	public String getEnterprisepwd() {
		return enterprisepwd;
	}

	public void setEnterprisepwd(String enterprisepwd) {
		this.enterprisepwd = enterprisepwd;
	}

	public Enterprise(String enterpriseId, String membership, String enterprisename, String enterprisepwd) {
		this.enterpriseId = enterpriseId;
		this.membership = membership;
		this.enterprisename = enterprisename;
		this.enterprisepwd = enterprisepwd;
	}

	public Enterprise() {
		
	}

	@Override
	public String toString() {
		return "Enterprise [enterpriseId=" + enterpriseId + ", membership=" + membership + ", enterprisename="
				+ enterprisename + ", enterprisepwd=" + enterprisepwd + "]";
	}
	
	
	
	
}
