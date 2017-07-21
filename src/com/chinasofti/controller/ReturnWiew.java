package com.chinasofti.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

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
}
