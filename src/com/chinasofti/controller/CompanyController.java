package com.chinasofti.controller;

import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.chinasofti.model.Company;
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
		
		@RequestMapping("/insertRecruitinfo.action")
		public String InsertRecruitinfo(@ModelAttribute("recruitinfo") Recruitinfo recruitinfo,Model model){
			recruitinfo.setRecruitID(getUUID());
			System.out.println(recruitinfo.getRecruitID());
			int i = companyservice.insertRecruitinfo(recruitinfo);
			String message=null;
			if(i>0){
				model.addAttribute("message", "新增成功");
				return SelectRecruitinfo(new Recruitinfo(recruitinfo.getRecruitID()),model);
			}else{
				model.addAttribute("message", "新增失败");
				return "index-qypost";
			}
		}
}
