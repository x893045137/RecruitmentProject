package com.chinasofti.controller;

import java.util.ArrayList;
import java.util.List;

import javax.security.auth.login.AccountNotFoundException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.xml.ws.Action;

import org.apache.coyote.ActionCode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.chinasofti.model.User;
import com.chinasofti.model.UserBasic;
import com.chinasofti.model.UserEducation;
import com.chinasofti.model.UserObjective;
import com.chinasofti.model.UserWorkexe;
import com.chinasofti.service.UserBasicService;

//编辑用户简历
@Controller
@RequestMapping("/jsp")
public class UserBasicController {
	
	@Autowired
	private UserBasicService userbasicservice;

	public UserBasicService getUserbasicservice() {
		return userbasicservice;
	}

	public void setUserbasicservice(UserBasicService userbasicservice) {
		this.userbasicservice = userbasicservice;
	}
/*	//查询用户基本信息
	@RequestMapping("/selectUserbasic.action")
	public String SelectUserBasic(@ModelAttribute("userbasic") UserBasic userbasic,Model model){
		List<UserBasic> list=userbasicservice.selectUserBasic(userbasic);
		for (UserBasic userBasic : list) {
			model.addAttribute("userBasic", userBasic);
		}
		return "index-resume";
	}*/
	@RequestMapping("/goupdateUserBasic.action")
	public String goUserBasic(@ModelAttribute("user") User user,Model model){
		List<User> list=userbasicservice.selectUserBasic(user);
		List<UserBasic> userbasic=null;
		List<UserEducation> usereducation = null;
		List<UserObjective> userobjective = null;
		List<UserWorkexe> userworkexe = null;
		for (int i = 0; i < list.size(); i++) {
			userbasic = list.get(i).getUserbasic();
			usereducation = list.get(i).getUsereducation();
			userobjective = list.get(i).getUserobjective();
			userworkexe = list.get(i).getUserworkexe();
		}
		model.addAttribute("userbasic", userbasic); 
		model.addAttribute("usereducation", usereducation);
		model.addAttribute("userobjective", userobjective);
		model.addAttribute("userworkexe", userworkexe);
		model.addAttribute("list", list);
		return "index-resume";
	}
	//修改用户基本信息
	@RequestMapping("/updateUserbasic.action")
	public String UpdateUserBasic(@ModelAttribute("userbasic") UserBasic userbasic,Model model){
		int j=userbasicservice.updateUserBasic(userbasic);
		String message=null;
		if(j>0){
			List<User> list=userbasicservice.selectUserBasic(new User(userbasic.getUserid()));
			List<UserBasic> userbasic2=null;
			List<UserEducation> usereducation2 = null;
			List<UserObjective> userobjective2 = null;
			List<UserWorkexe> userworkexe2 = null;
			for (int i = 0; i < list.size(); i++) {
				userbasic2 = list.get(i).getUserbasic();
				usereducation2 = list.get(i).getUsereducation();
				userobjective2 = list.get(i).getUserobjective();
				userworkexe2 = list.get(i).getUserworkexe();
			}
			model.addAttribute("userbasic", userbasic2); 
			model.addAttribute("usereducation", usereducation2);
			model.addAttribute("userobjective", userobjective2);
			model.addAttribute("userworkexe", userworkexe2);
			model.addAttribute("list", list);
			model.addAttribute("message", "信息修改成功");
			return "index-resume";
		}else{
			model.addAttribute("message", "信息修改失败");
			return "index-resume";
		}
	}

	//修改用户求职意向
	@RequestMapping("/updateUserobjective.action")
	public String UpdateUserObjective(@ModelAttribute("userobjective") UserObjective userobjective,Model model){
		int j=userbasicservice.updateUserObjective(userobjective);
		String message=null;
		if(j>0){
			List<User> list=userbasicservice.selectUserBasic(new User(userobjective.getUserid()));
			List<UserBasic> userbasic2=null;
			List<UserEducation> usereducation2 = null;
			List<UserObjective> userobjective2 = null;
			List<UserWorkexe> userworkexe2 = null;
			for (int i = 0; i < list.size(); i++) {
				userbasic2 = list.get(i).getUserbasic();
				usereducation2 = list.get(i).getUsereducation();
				userobjective2 = list.get(i).getUserobjective();
				userworkexe2 = list.get(i).getUserworkexe();
			}
			model.addAttribute("userbasic", userbasic2); 
			model.addAttribute("usereducation", usereducation2);
			model.addAttribute("userobjective", userobjective2);
			model.addAttribute("userworkexe", userworkexe2);
			model.addAttribute("list", list);
			model.addAttribute("message", "信息修改成功");
			return "index-resume";
		}else{
			model.addAttribute("message", "信息修改失败");
			return "index-resume";
		}
	}
	
	//修改用户工作经验
	@RequestMapping("/updateUserworkexe.action")
	public String UpdateUserWorkexe(@ModelAttribute("userworkexe") UserWorkexe userworkexe,Model model){
		int j =userbasicservice.updateUserWorkexe(userworkexe);
		String message=null;
		if(j>0){
			List<User> list=userbasicservice.selectUserBasic(new User(userworkexe.getUserid()));
			List<UserBasic> userbasic2=null;
			List<UserEducation> usereducation2 = null;
			List<UserObjective> userobjective2 = null;
			List<UserWorkexe> userworkexe2 = null;
			for (int i = 0; i < list.size(); i++) {
				userbasic2 = list.get(i).getUserbasic();
				usereducation2 = list.get(i).getUsereducation();
				userobjective2 = list.get(i).getUserobjective();
				userworkexe2 = list.get(i).getUserworkexe();
			}
			model.addAttribute("userbasic", userbasic2); 
			model.addAttribute("usereducation", usereducation2);
			model.addAttribute("userobjective", userobjective2);
			model.addAttribute("userworkexe", userworkexe2);
			model.addAttribute("list", list);
			model.addAttribute("message", "信息修改成功");
			return "index-resume";
		}else{
			model.addAttribute("message", "信息修改失败");
			return "index-resume";
		}
	}
	
	//修改用户教育经历
	@RequestMapping("/updateUsereducation.action")
	public String UpdateUserEducation(@ModelAttribute("usereducation") UserEducation usereducation,Model model){
		int j=userbasicservice.updateUserEducation(usereducation);
		String message=null;
		if(j>0){
			List<User> list=userbasicservice.selectUserBasic(new User(usereducation.getUserid()));
			List<UserBasic> userbasic2=null;
			List<UserEducation> usereducation2 = null;
			List<UserObjective> userobjective2 = null;
			List<UserWorkexe> userworkexe2 = null;
			for (int i = 0; i < list.size(); i++) {
				userbasic2 = list.get(i).getUserbasic();
				usereducation2 = list.get(i).getUsereducation();
				userobjective2 = list.get(i).getUserobjective();
				userworkexe2 = list.get(i).getUserworkexe();
			}
			model.addAttribute("userbasic", userbasic2); 
			model.addAttribute("usereducation", usereducation2);
			model.addAttribute("userobjective", userobjective2);
			model.addAttribute("userworkexe", userworkexe2);
			model.addAttribute("list", list);
			model.addAttribute("message", "信息修改成功");
			return "index-resume";
		}else{
			model.addAttribute("message", "信息修改失败");
			return "index-resume";
		}
	}
	
}
