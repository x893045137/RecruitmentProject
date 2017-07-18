package com.chinasofti.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.context.support.HttpRequestHandlerServlet;
import org.springframework.web.servlet.ModelAndView;

import com.chinasofti.model.Consumer;


/**
*@author 作者：周天子;
*
*version 创建时间：2017年7月18日下午6:04:09
*
*类说明:
*/

@Controller
@RequestMapping
public class PersonController {
	
//	@Autowired
//	private ModelAndView mav;
//
//	public ModelAndView getMav() {
//		return mav;
//	}
//
//	public void setMav(ModelAndView mav) {
//		this.mav = mav;
//	}
//	
	@RequestMapping("/login.action")
	public ModelAndView login(HttpServletRequest request,HttpServletResponse response){
		return new ModelAndView("welcome");
	}
}
