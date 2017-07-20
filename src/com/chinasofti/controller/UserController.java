package com.chinasofti.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.chinasofti.model.User;
import com.chinasofti.service.UserService;

@Controller
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
	public String Adminlogin(@ModelAttribute("user") User user, Model model) {
		if (user.getUsername() != null && !"".equals(user.getUsername()) && user.getPassword() != null
				&& !"".equals(user.getPassword())) {
			List<User> list = userService.login(user);
			if (list.size() > 0) {
				return "welcome";
			} else {
				return "index-login";
			}
		} else {
			return "index-login";
		}
	}
}
