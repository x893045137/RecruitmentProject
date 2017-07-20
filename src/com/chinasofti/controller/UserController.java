package com.chinasofti.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.chinasofti.model.User;
import com.chinasofti.service.UserService;

@Controller
@RequestMapping("/jsp")
public class UserController {

	@Autowired
	private UserService userService;
	
	public UserService getUserService() {
		return userService;
	}
	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	@RequestMapping("/userlogin.action")
	public String Adminlogin(@ModelAttribute("user") User user, Model model,HttpServletRequest rq) {
		
			User consumer = userService.selectByUsername(user.getUsername());
			if(consumer != null&&consumer.getPassword().equals(user.getPassword())){
				HttpSession session = rq.getSession();
				session.setAttribute("consumer", consumer);
				return "index";
			}			
		  else {
			model.addAttribute("message", "帐号或密码错误");
			return "index-login";
		  }	
	}
}
