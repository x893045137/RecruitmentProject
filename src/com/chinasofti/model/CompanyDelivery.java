package com.chinasofti.model;

public class CompanyDelivery {
		private Integer deliveryid;
		//姓名
		private String rd_username;
		//工作经验
		private String rd_workexe;
		//申请职位
		private String rd_jobtype;
		//薪资
		private Double rd_salary;
		//电话
		private String rd_phone;
		//email
		private String rd_email;
		public Integer getDeliveryid() {
			return deliveryid;
		}
		public void setDeliveryid(Integer deliveryid) {
			this.deliveryid = deliveryid;
		}
		public String getRd_username() {
			return rd_username;
		}
		public void setRd_username(String rd_username) {
			this.rd_username = rd_username;
		}
		public String getRd_workexe() {
			return rd_workexe;
		}
		public void setRd_workexe(String rd_workexe) {
			this.rd_workexe = rd_workexe;
		}
		public String getRd_jobtype() {
			return rd_jobtype;
		}
		public void setRd_jobtype(String rd_jobtype) {
			this.rd_jobtype = rd_jobtype;
		}
		public Double getRd_salary() {
			return rd_salary;
		}
		public void setRd_salary(Double rd_salary) {
			this.rd_salary = rd_salary;
		}
		public String getRd_phone() {
			return rd_phone;
		}
		public void setRd_phone(String rd_phone) {
			this.rd_phone = rd_phone;
		}
		public String getRd_email() {
			return rd_email;
		}
		public void setRd_email(String rd_email) {
			this.rd_email = rd_email;
		}
		public CompanyDelivery() {
		}
		public CompanyDelivery(Integer deliveryid, String rd_username, String rd_workexe, String rd_jobtype,
				Double rd_salary, String rd_phone, String rd_email) {
			super();
			this.deliveryid = deliveryid;
			this.rd_username = rd_username;
			this.rd_workexe = rd_workexe;
			this.rd_jobtype = rd_jobtype;
			this.rd_salary = rd_salary;
			this.rd_phone = rd_phone;
			this.rd_email = rd_email;
		}
		@Override
		public String toString() {
			return "CompanyDelivery [deliveryid=" + deliveryid + ", rd_username=" + rd_username + ", rd_workexe="
					+ rd_workexe + ", rd_jobtype=" + rd_jobtype + ", rd_salary=" + rd_salary + ", rd_phone=" + rd_phone
					+ ", rd_email=" + rd_email + "]";
		}
}
