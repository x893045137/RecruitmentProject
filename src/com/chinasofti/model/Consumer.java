package com.chinasofti.model;

import org.springframework.stereotype.Component;

/**
*@author 作者：周天子;
*
*version 创建时间：2017年7月18日下午6:11:26
*
*类说明:
*/

@Component
public class Consumer {
	
	private String id;
	private String username;
	private String password;
	private String status;
	public String getId() {
		return id;
	}
	public void setId(String id) {
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
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public Consumer(String id, String username, String password, String status) {
		super();
		this.id = id;
		this.username = username;
		this.password = password;
		this.status = status;
	}
	public Consumer() {
		
	}
	
	@Override
	public String toString() {
		return "Consumer [id=" + id + ", username=" + username + ", password=" + password + ", status=" + status + "]";
	}
	
	

}
