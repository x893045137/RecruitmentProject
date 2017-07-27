package com.chinasofti.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.chinasofti.model.Recruitinfo;

/*
 * 页面跳转
 */
@Controller
public class ReturnWiew {
	
	@RequestMapping("/index.action")
	public ModelAndView index(HttpServletRequest request,HttpServletResponse response){
		//跳转至主页 
		return new ModelAndView("index");
	}
	@RequestMapping("/gologin.action")
	public ModelAndView login(HttpServletRequest request,HttpServletResponse response){
		//跳转至登录页
		return new ModelAndView("index-login");
	}
	@RequestMapping("/goregister.action")
	public ModelAndView register(HttpServletRequest request,HttpServletResponse response){
		//跳转至登录页
		return new ModelAndView("index-register");
	}
	
	@RequestMapping("/jsp/entrance.action")
	public ModelAndView entrance(@ModelAttribute("recruit") Recruitinfo recruit,HttpServletRequest request,HttpServletResponse response){
		HttpSession session = request.getSession();		
		session.setAttribute("salary", recruit.getSalary());
		session.setAttribute("companyNature", recruit.getCompanyNature());
		session.setAttribute("WorkExperience", recruit.getWorkExperience());
		session.setAttribute("Recordschool", recruit.getRecordschool());
		session.setAttribute("companySize", recruit.getCompanySize());
		session.setAttribute("companyLocation", recruit.getCompanyLocation());
		session.setAttribute("welfare", recruit.getWelfare());
		session.setAttribute("worktype", recruit.getWorktype());
		
		return new ModelAndView("index");
	}
}
