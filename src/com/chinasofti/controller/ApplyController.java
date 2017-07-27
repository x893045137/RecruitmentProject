package com.chinasofti.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.chinasofti.model.Recruitinfo;
import com.chinasofti.service.ApplyService;
import com.chinasofti.service.RecruitService;



@Controller
@RequestMapping("/jsp")
public class ApplyController {
	
	@Autowired
	private ApplyService as;
	
	public ApplyService getAs() {
		return as;
	}
	public void setAs(ApplyService as) {
		this.as = as;
	}
	
	@Autowired
	private RecruitService res;		
	public RecruitService getRs() {
		return res;
	}
	public void setRs(RecruitService res) {
		this.res = res;
	}
	/**
	 * 申请提交简历
	 * @param rq
	 * @throws IOException 
	 */
	@RequestMapping("/apply.action")
	public void apply(HttpServletRequest rq,HttpServletResponse rs) throws IOException{
		
		 rs.setCharacterEncoding("utf-8"); 
		 JSONObject jsonObject = new JSONObject();
		JSONArray jsonArray = new JSONArray();
		
		String RecruitID = rq.getParameter("RecruitID");
		String userid = rq.getParameter("userid");
		
	    System.out.println(RecruitID);
		System.out.println("usrid               "+userid);
		
		String UUID = getUUID();
		
		String selectApply = as.selectApply(RecruitID);
		
		
		System.out.println("selectApply                    "+selectApply);
		
		
		String amessage =null;
		
		if(selectApply ==null || ! selectApply.equals(userid)){		
			as.applyCompany(UUID, RecruitID, userid);
			System.out.println("插入成功");
			amessage = "申请职位成功！";
			
		}
		else{
			System.out.println("你已经申请过这个职位了！");
			amessage = "你已经申请过这个职位了！";
		}
			
//			jsonObject.put("amessage", amessage);
//			jsonArray.add(jsonObject);
			PrintWriter pw = rs.getWriter();		
			pw.println(amessage);
			pw.close();
		
		
		
	}
	/**
	 * 我的申请页面action
	 * @param rq
	 * @param rs
	 * @return
	 */
	@RequestMapping("/selectApply.action")	
	public ModelAndView selectApply(HttpServletRequest rq,HttpServletResponse rs){
		
		String userid = rq.getParameter("userid");
		
		 List<String> recruitID = as.selectRecruitID(userid);
		 List<Recruitinfo> recruitinfo = new ArrayList<Recruitinfo>();
		 
		 for (String string : recruitID) {
			 SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			 Recruitinfo recruitment = res.selectRecruitment(string);
			 recruitment.setDate(sdf.format(recruitment.getReleaseTime()));
			 recruitinfo.add(recruitment);
		}
		
		
		ModelAndView mav = new ModelAndView("my_apply");		
	
		mav.addObject("recruitinfo", recruitinfo);
		
		return mav;
		
	}
	
	/**
	 * 我的job页面action
	 * @return
	 */
	@RequestMapping("Myjob.action")
	public ModelAndView Myjob(HttpServletRequest rq,HttpServletResponse rs){
		
		String userid = rq.getParameter("userid");
		
		List<String> recruitID = as.selectRecruitID(userid);
		
		int size = recruitID.size(); // 申请个数
		
		ModelAndView mav = new ModelAndView("my_apply");
		mav.addObject("size",size);
		
		return mav;
		
	}
	
	
	public String getUUID() {
		// 生成随机的UUID
		UUID uuid = UUID.randomUUID();
		// 转换成字符串
		String string = uuid.toString();
		// 去除横杠
		//string = string.replaceAll("-", "");
		return string;
	}
}
