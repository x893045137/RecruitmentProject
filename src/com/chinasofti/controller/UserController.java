package com.chinasofti.controller;

import java.util.List;
import java.util.Random;
import java.util.UUID;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.chinasofti.model.Enterprise;
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
	public String Adminlogin(@ModelAttribute("user") User user, Model model, HttpServletRequest rq) {

		User consumer = userService.selectByUsername(user.getUsername());
		List<User> login = userService.login(consumer);
		HttpSession session2 = rq.getSession();
		String type = (String)session2.getAttribute("type");
		System.out.println("type    "+type);
		System.out.println(login.size());
		if (consumer != null && consumer.getPassword().equals(user.getPassword())) {
			HttpSession session = rq.getSession();
			session.setAttribute("consumer", consumer);
			
				return "index";			
			
		} else {
			model.addAttribute("message", "帐号或密码错误");
			return "index-login";
		}
	}

	// 登录功能完善
	@RequestMapping("/register.action")
	public ModelAndView register(User user) {
		
		User ruser = userService.selectByUsername(user.getUsername());
		
		String umessage = null;
		
		if(ruser != null){
			umessage   = "该账号已被注册！";
		}else{
			
			
			Random random = new Random();
			
			int nextInt = random.nextInt(1000000000);		
			user.setId(nextInt);
			userService.insert(user);	
			umessage = "用户注册成功！快去登陆吧！";
		}
		
		ModelAndView mav = new ModelAndView("index-register");
		mav.addObject("user", user);
		mav.addObject("umessage",umessage);
		return mav;
	}
	
	/**
	 * 企业注册
	 * @param enterprise
	 * @param rq
	 * @return
	 */
	 @RequestMapping("/enterprise.action")
	 public ModelAndView enterprise(@ModelAttribute("enterprise") Enterprise enterprise,HttpServletRequest rq){
		 
		 String companyLocation = rq.getParameter("companyLocation");
		 String companyname = rq.getParameter("companyname");
		 
		 System.out.println(enterprise);
		 
		 enterprise.setEnterpriseId(getUUID());
		 
		 String selectByenterprisename = userService.selectByenterprisename(enterprise.getEnterprisename());
		 
		 String selectBymembership = userService.selectBymembership(enterprise.getMembership());
		 ModelAndView mav = new ModelAndView("index-register");
		 
		 String message = null;
		 
		 if(selectBymembership != null){
			 message = "该会员号已被注册！";
		 } else if(selectByenterprisename != null){
			 message = "该用户名已被注册 ！";
		 }else {
			 userService.insertenterprise(enterprise);
			 userService.insertcompany(enterprise.getMembership(),companyname,companyLocation);
			 message = "恭喜你，注册成功！";
			 
		 }
		 
		 mav.addObject("emessage",message);	 
		
		 
		 return mav;
		 
	 }
	 
	 /**
	  * 企业登录
	  */
	 @RequestMapping("/qiyelogin.action")
	 public ModelAndView qiyelogin(@ModelAttribute("enterprise" ) Enterprise enterprise,HttpServletRequest rq){
		 
		 enterprise.setEnterpriseId(getUUID());
		 
		 Enterprise enter = userService.selectByEUsername(enterprise.getEnterprisename());
		 
		 ModelAndView mav = new ModelAndView();
		 
		 String message = null;
		 
		 if(enter != null){
			 if(enter.getEnterprisepwd().equals(enterprise.getEnterprisepwd())){
				 HttpSession session = rq.getSession();			 
				 session.setAttribute("enterprise", enter);
				 mav.setViewName("index-qybasic");
			 }else{
				 message = "密码错误！";
				 mav.addObject("eemessage", message);
			 }
		 }else {
			 message = "该账号不存在！";
			 mav.addObject("eemessage", message);
		 }
		 
		
		return mav;
		 
	 }
	 
	 
	 
	 
	 /**
	  * 退出登录
	  * @return
	  */
	 @RequestMapping("/cancel.action")
	 public ModelAndView cancel(HttpServletRequest rq){
		 HttpSession session = rq.getSession();
		 session.removeAttribute("consumer");  //注销session中的username对象
		 ModelAndView mav = new ModelAndView("index");
		 return mav ;
		 
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
