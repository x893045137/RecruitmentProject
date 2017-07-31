package com.chinasofti.controller;

import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.chinasofti.model.Recruitinfo;
import com.chinasofti.service.RecruitService;

@Controller
@RequestMapping("/jsp")
public class RecruitController {

	@Autowired
	private RecruitService rs;

	public RecruitService getRs() {
		return rs;
	}

	public void setRs(RecruitService rs) {
		this.rs = rs;
	}

	@RequestMapping("/showRecruit.action")
	public ModelAndView showRecruit(HttpServletRequest rq) {

		Integer currage = 0; // 当前页
		String rcurrage = rq.getParameter("currage");
		System.out.println(rcurrage);
		if (rcurrage != null) {
			currage = Integer.parseInt(rcurrage);
		}
		List<Recruitinfo> recruit = rs.selectAllRecruit(currage, 1);

		Integer number = rs.selectRecruit().size(); // 总条数
		System.out.println(number);
		SimpleDateFormat sdf = new SimpleDateFormat("MM-dd");
		for (Recruitinfo r : recruit) {
			r.setDate(sdf.format(r.getReleaseTime()));
		}
		ModelAndView mav = new ModelAndView("search_result");
		// mav.addObject("recruit",recruit);
		// mav.addObject("number",number);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("salary", "1");
		map.put("companyNature", "99");
		map.put("WorkExperience", "99");
		map.put("Recordschool", "99");
		map.put("companySize", "99");
		map.put("companyLocation", "99");
		map.put("welfare", "1");
		map.put("worktype", "1");
		map.put("currage", currage);
		map.put("recruit", recruit);
		map.put("number", number);
		mav.addAllObjects(map);
		//System.out.println("currage" + currage);
		return mav;

	}

	@RequestMapping("/selectRecruit.action")
	public ModelAndView selectRecruit(@ModelAttribute("recruit") Recruitinfo recruit, HttpServletRequest rq) {
		System.out.println(recruit);
		Map<String, Object> map = new HashMap<String, Object>();
//		map.put("salary", recruit.getSalary());
//		map.put("companyNature", recruit.getCompanyNature());
//		map.put("WorkExperience", recruit.getWorkExperience());
//		map.put("Recordschool", recruit.getRecordschool());
//		map.put("companySize", recruit.getCompanySize());
//		map.put("companyLocation", recruit.getCompanyLocation());
//		map.put("welfare", recruit.getWelfare());
//		map.put("worktype", recruit.getWorktype());
		System.out.println("map:            "+map);
		Recruitinfo support = support(recruit);
		System.out.println("support:       "+support);
		Integer currage = 0; // 当前页
		String rcurrage = rq.getParameter("currage");
		System.out.println(rcurrage);
		if (rcurrage != null) {
			currage = Integer.parseInt(rcurrage);
		}
		
		HttpSession session = rq.getSession();
		String keyword = rq.getParameter("keyword");
		
		Integer begin =  currage*4;
		
		if(keyword != null){		
			session.setAttribute("keyword", keyword);	
		}else {			
			keyword = (String) session.getAttribute("keyword");
		}
		
		Integer num = rs.selectAllRecruits(support,keyword).size() ;// 总条数
		List<Recruitinfo> selectRecruits = rs.selectRecruits(support, begin, 4 , keyword);
		
		SimpleDateFormat sdf = new SimpleDateFormat("MM-dd");
		for (Recruitinfo r : selectRecruits) {
			r.setDate(sdf.format(r.getReleaseTime()));
		}
		String rmessage = support.getSalary()+" "+support.getCompanyNature()+" "+	support.getWorkExperience()+" "+
				support.getRecordschool()+" "+support.getCompanySize()+" "+support.getCompanyLocation()+" "+
				support.getWelfare()+" "+support.getWorktype();
		
		// 返回已选择哪些条件筛选
		session.setAttribute("rmessage", rmessage);
		session.setAttribute("salary", recruit.getSalary());
		session.setAttribute("companyNature", recruit.getCompanyNature());
		session.setAttribute("WorkExperience", recruit.getWorkExperience());
		session.setAttribute("Recordschool", recruit.getRecordschool());
		session.setAttribute("companySize", recruit.getCompanySize());
		session.setAttribute("companyLocation", recruit.getCompanyLocation());
		session.setAttribute("welfare", recruit.getWelfare());
		session.setAttribute("worktype", recruit.getWorktype());
		
		
		
		// 总页数
		Integer number =0;
		
		if(num%4 ==0){
			 number = num / 4;
		}else{
			number = num / 4+1;
		}
		
		ModelAndView mav = new ModelAndView("search_result");
		//System.out.println(support);
		map.put("currage", currage);
		map.put("recruit", selectRecruits);
		map.put("number", number);
		map.put("num", num);
		mav.addAllObjects(map);
		return  mav ;

	}
	
	@RequestMapping("/company.action")
	public ModelAndView company(HttpServletRequest rq){
		
	
		Recruitinfo recruit = rs.selectRecruitment(rq.getParameter("recruitID"));
		
		List<Recruitinfo> selectLikeRecruit = rs.selectLikeRecruit(recruit);
		
		
		SimpleDateFormat sdf = new SimpleDateFormat("MM-dd");
		
		recruit.setDate(sdf.format(recruit.getReleaseTime()));
	
		//System.out.println(recruit.getDescriptions());
		//分割出岗位要求字段
		String[] description = recruit.getDescriptions().split("；");
		
		
		//分割出职业要求字段
		String[] requirement = recruit.getRequirement().split("；");
		
		ModelAndView mav = new ModelAndView("company");
		
		Map<String, Object> map = new HashMap<String, Object>();
		//System.out.println(recruit);
		map.put("Recruit", recruit);
		map.put("description", description);
		map.put("requirement", requirement);
		map.put("selectLikeRecruit", selectLikeRecruit);
		mav.addAllObjects(map);		
		return mav;
		
	}
	
	@RequestMapping("/keyword.action")
	public ModelAndView keyword(){
		
		return null;
		
	}

	

	/**
	 * 模糊查询辅助类
	 * @param recruit
	 * @return
	 */
	public Recruitinfo support(Recruitinfo recruit) {
		Recruitinfo rec = new Recruitinfo();
		// 月薪
		switch (recruit.getSalary()) {
		case "1":
			rec.setSalary("");
			break;
		case "2":
			rec.setSalary("2千以下");
			break;
		case "3":
			rec.setSalary("2-3千");
			break;
		case "4":
			rec.setSalary("3-4.5千");
			break;
		case "5":
			rec.setSalary("4.5-6千");
			break;
		case "6":
			rec.setSalary("6-8千");
			break;
		}
		
		//公司性质
		switch (recruit.getCompanyNature()){
		case "99":
			rec.setCompanyNature("");
			break;
		case "98":
			rec.setCompanyNature("外资");
			break;
		case "97":
			rec.setCompanyNature("合资");
			break;
		case "96":
			rec.setCompanyNature("国企");
			break;
		case "95":
			rec.setCompanyNature("民营公司");
			break;
		default:
			break;
		}
		
		//工作经验
		switch (recruit.getWorkExperience()) {
		case "99":
			rec.setWorkExperience("");
			break;
		case "98":
			rec.setWorkExperience("无经验");
			break;
		case "97":
			rec.setWorkExperience("1-3年");
			break;
		case "96":
			rec.setWorkExperience("3年以上");
			break;
		default:
			break;
		}
		
		//学历
		switch (recruit.getRecordschool()) {
		case "99":
			rec.setRecordschool("");
			break;
		case "98":
			rec.setRecordschool("初中");
			break;
		case "97":
			rec.setRecordschool("高中");
			break;
		case "96":
			rec.setRecordschool("大专");
			break;
		case "95":
			rec.setRecordschool("本科");
			break;
		default:
			break;
		}
		
		//公司规模
		switch (recruit.getCompanySize()) {
		case "99":
			rec.setCompanySize("");
			break;
		case "98":
			rec.setCompanySize("少于100人");
			break;
		case "97":
			rec.setCompanySize("100-500人");
			break;
		case "96":
			rec.setCompanySize("500-1000人");
			break;
		default:
			break;
		}
	
		//公司位置
		switch (recruit.getCompanyLocation()) {
		case "99":
			rec.setCompanyLocation("");
			break;
		case "98":
			rec.setCompanyLocation("北京");
			break;
		case "97":
			rec.setCompanyLocation("上海");
			break;
		case "96":
			rec.setCompanyLocation("江苏");
			break;
		default:
			break;
		}
		
		//福利
		switch (recruit.getWelfare()) {
		case "1":
			rec.setWelfare("");
			break;
		case "2":
			rec.setWelfare("周末双休");
			break;
		case "3":
			rec.setWelfare("五险一金");
			break;
		case "4":
			rec.setWelfare("绩效奖金");
			break;
		case "5":
			rec.setWelfare("住房补贴");
			break;
		case "6":
			rec.setWelfare("餐饮补贴");
			break;
		case "7":
			rec.setWelfare("员工旅游");
			break;
		default:
			break;
		}
		
		switch (recruit.getWorktype()) {
		case "1":
			rec.setWorktype("");
			break;
		case "2":
			rec.setWorktype("全职");
			break;
		case "3":
			rec.setWorktype("兼职");
			break;
		case "4":
			rec.setWorktype("实习全职");
			break;
		case "5":
			rec.setWorktype("实习兼职");
			break;
		default:
			break;
		}
		
		return rec;
	}

}
