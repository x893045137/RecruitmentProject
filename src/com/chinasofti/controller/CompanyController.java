package com.chinasofti.controller;

import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.chinasofti.model.Company;
import com.chinasofti.model.CompanyDelivery;
import com.chinasofti.model.Recruitinfo;
import com.chinasofti.service.CompanyService;

@Controller
@RequestMapping("/jsp")
public class CompanyController {
	
	// 获取UUID
			public String getUUID() {
				// 生成随机的UUID
				UUID uuid = UUID.randomUUID();
				// 转换成字符串
				String string = uuid.toString();
				// 去除横杠
				string = string.replaceAll("-", "");
				return string;
			}
		
		@Autowired
		private CompanyService companyservice;

		public CompanyService getCompanyservice() {
			return companyservice;
		}

		public void setCompanyservice(CompanyService companyservice) {
			this.companyservice = companyservice;
		}
		
		//查询企业基本信息
		@RequestMapping("/selectCompany.action")
		public String SelectCompany(@ModelAttribute("company") Company company,Model model){
			List<Company>list= companyservice.selectCompany(company);
			if(list.size()>0){
				model.addAttribute("list",list );
				return "index-qybasic";
			}else{
				model.addAttribute("list",list );
				return "index-qybasic";
			}
		}
		//新增企业基本信息
		@RequestMapping("/insertCompany.action")
		public String InsertCompany(@ModelAttribute("company") Company company,Model model){
			int i=companyservice.insertCompany(company);
			if(i>0){
				return SelectCompany(new Company(company.getMembership(),company.getCompanyName()) , model);
			}else{
				return SelectCompany(new Company(company.getMembership(),company.getCompanyName()) , model);
			}
		}
		
		//修改企业基本信息
		@RequestMapping("/updateCompany.action")
		public String UpdateCompany(@ModelAttribute("company") Company company,Model model){
			int i = companyservice.updateCompany(company);
			if(i>0){
				model.addAttribute("message", "修改成功");
				return SelectCompany(new Company(company.getMembership(),company.getCompanyName()) , model);
			}else{
				model.addAttribute("message", "修改成功");
				return SelectCompany(new Company(company.getMembership(),company.getCompanyName()) , model);
			}
		}
		
		//查询用户招聘信息
		@RequestMapping("/slectRecruitinfo.action")
		public String SelectRecruitinfo(@ModelAttribute("recruitinfo") Recruitinfo recruitinfo,Model model){
			List<Recruitinfo>list=companyservice.selectRecruitinfo(recruitinfo);
			if(list.size()>0){
				model.addAttribute("list",list );
				return "index-qypost";
			}else{
				model.addAttribute("list",list );
				return "index-qypost";
			}
		}
		
		//新增企业招聘信息
		@RequestMapping("/insertRecruitinfo.action")
		public String InsertRecruitinfo(@ModelAttribute("recruitinfo") Recruitinfo recruitinfo,Model model){
			recruitinfo.setRecruitID(getUUID());
			recruitinfo.setReleaseTime(new Date());
			int i = companyservice.insertRecruitinfo(recruitinfo);
			if(i>0){
				model.addAttribute("message", "新增成功");
				return SelectRecruitinfo(new Recruitinfo(recruitinfo.getRecruitID()),model);
			}else{
				model.addAttribute("message", "新增失败");
				return SelectRecruitinfo(new Recruitinfo(recruitinfo.getRecruitID()),model);
			}
		}
		
		//修改企业招聘信息
		@RequestMapping("/updateRecruitinfo.action")
		public String UpdateRecruitinfo(@ModelAttribute("recruitinfo") Recruitinfo recruitinfo,Model model){
			int i=companyservice.updateRecruitinfo(recruitinfo);
			System.out.println(recruitinfo.getRecruitID());
			if(i>0){
				model.addAttribute("message", "修改成功");
				return SelectRecruitinfo(new Recruitinfo(recruitinfo.getRecruitID()),model);
			}else{
				model.addAttribute("message", "修改失败");
				return SelectRecruitinfo(new Recruitinfo(recruitinfo.getRecruitID()),model);
			}
		}
		
		//查询投递信息
		public String SelectCompanyDelivery(@ModelAttribute("companydelivery") CompanyDelivery companydelivery , Model model){
			List<CompanyDelivery> list=companyservice.selectCompanyDelivery();
			if(list.size()>0){
				model.addAttribute("list", list);
				return "index-qyready";
			}else{
				return "index-qyready";
			}
		}
}
