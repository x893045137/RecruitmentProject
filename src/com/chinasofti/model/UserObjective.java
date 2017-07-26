package com.chinasofti.model;

public class UserObjective {
	// id
	private Integer id;
	// 期望薪资
	private Double uo_salary;
	// 工作地点
	private String uo_address;
	// 职位
	private String uo_position;
	// 工作性质
	private String worknature;
	// 用户id
	private Integer userid;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Double getUo_salary() {
		return uo_salary;
	}

	public void setUo_salary(Double uo_salary) {
		this.uo_salary = uo_salary;
	}

	public String getUo_address() {
		return uo_address;
	}

	public void setUo_address(String uo_address) {
		this.uo_address = uo_address;
	}

	public String getUo_position() {
		return uo_position;
	}

	public void setUo_position(String uo_position) {
		this.uo_position = uo_position;
	}

	public String getWorknature() {
		return worknature;
	}

	public void setWorknature(String worknature) {
		this.worknature = worknature;
	}

	public Integer getUserid() {
		return userid;
	}

	public void setUserid(Integer userid) {
		this.userid = userid;
	}

	public UserObjective() {
	}

	public UserObjective(Integer id, Double uo_salary, String uo_address, String uo_position, String worknature,
			Integer userid) {
		super();
		this.id = id;
		this.uo_salary = uo_salary;
		this.uo_address = uo_address;
		this.uo_position = uo_position;
		this.worknature = worknature;
		this.userid = userid;
	}

	@Override
	public String toString() {
		return "UserObjective [id=" + id + ", uo_salary=" + uo_salary + ", uo_address=" + uo_address + ", uo_position="
				+ uo_position + ", worknature=" + worknature + ", userid=" + userid + "]";
	}

}
