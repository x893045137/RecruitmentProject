package com.chinasofti.model;

import java.util.List;

public class User {
	private Integer id;
	private String username;
	private String password;
	private List<UserBasic> userbasic;
	private List<UserObjective> userobjective;
	private List<UserEducation> usereducation;
	private List<UserWorkexe> userworkexe;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public List<UserBasic> getUserbasic() {
		return userbasic;
	}

	public void setUserbasic(List<UserBasic> userbasic) {
		this.userbasic = userbasic;
	}

	public List<UserObjective> getUserobjective() {
		return userobjective;
	}

	public void setUserobjective(List<UserObjective> userobjective) {
		this.userobjective = userobjective;
	}

	public List<UserEducation> getUsereducation() {
		return usereducation;
	}

	public void setUsereducation(List<UserEducation> usereducation) {
		this.usereducation = usereducation;
	}

	public List<UserWorkexe> getUserworkexe() {
		return userworkexe;
	}

	public void setUserworkexe(List<UserWorkexe> userworkexe) {
		this.userworkexe = userworkexe;
	}
	
	public User() {

	}

	public User(Integer id) {
		super();
		this.id = id;
	}

	public User(Integer id, String username, String password, List<UserBasic> userbasic,
			List<UserObjective> userobjective, List<UserEducation> usereducation, List<UserWorkexe> userworkexe) {
		super();
		this.id = id;
		this.username = username;
		this.password = password;
		this.userbasic = userbasic;
		this.userobjective = userobjective;
		this.usereducation = usereducation;
		this.userworkexe = userworkexe;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", username=" + username + ", password=" + password + ", userbasic=" + userbasic
				+ ", userobjective=" + userobjective + ", usereducation=" + usereducation + ", userworkexe="
				+ userworkexe + "]";
	}

}