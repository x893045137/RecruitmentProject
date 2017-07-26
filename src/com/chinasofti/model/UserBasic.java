package com.chinasofti.model;

import java.util.Date;

//编辑用户简历
public class UserBasic {
		//id
		private Integer id;
		//用户名
		private String ub_username;
		//性别
		private String sex;
		//年龄
		private Integer age;
		//地址
		private String ub_address;
		//手机号码
		private String phone;
		//出生日期
		private Date birthday;
		//身份证号码
		private String cardid;
		//求职状态
		private String job_status;
		//邮箱
		private String email;
		//用户id
		private Integer userid;
		public Integer getId() {
			return id;
		}
		public void setId(Integer id) {
			this.id = id;
		}
		
		public String getUb_username() {
			return ub_username;
		}
		public void setUb_username(String ub_username) {
			this.ub_username = ub_username;
		}
		public String getSex() {
			return sex;
		}
		public void setSex(String sex) {
			this.sex = sex;
		}
		
		public Integer getAge() {
			return age;
		}
		public void setAge(Integer age) {
			this.age = age;
		}
		
		public String getUb_address() {
			return ub_address;
		}
		public void setUb_address(String ub_address) {
			this.ub_address = ub_address;
		}
		public String getPhone() {
			return phone;
		}
		public void setPhone(String phone) {
			this.phone = phone;
		}
		public Date getBirthday() {
			return birthday;
		}
		public void setBirthday(Date birthday) {
			this.birthday = birthday;
		}
		public String getCardid() {
			return cardid;
		}
		public void setCardid(String cardid) {
			this.cardid = cardid;
		}
		public String getJob_status() {
			return job_status;
		}
		public void setJob_status(String job_status) {
			this.job_status = job_status;
		}
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		public Integer getUserid() {
			return userid;
		}
		public void setUserid(Integer userid) {
			this.userid = userid;
		}
		public UserBasic() {
		}
		
		public UserBasic(Integer id, String ub_username, String sex, Integer age, String ub_address, String phone,
				Date birthday, String cardid, String job_status, String email, Integer userid) {
			super();
			this.id = id;
			this.ub_username = ub_username;
			this.sex = sex;
			this.age = age;
			this.ub_address = ub_address;
			this.phone = phone;
			this.birthday = birthday;
			this.cardid = cardid;
			this.job_status = job_status;
			this.email = email;
			this.userid = userid;
		}
		@Override
		public String toString() {
			return "UserBasic [id=" + id + ", username=" + ub_username + ", sex=" + sex + ", age=" + age + ", address="
					+ ub_address + ", phone=" + phone + ", birthday=" + birthday + ", cardid=" + cardid + ", job_status="
					+ job_status + ", email=" + email + ", userid=" + userid + "]";
		}	
}
