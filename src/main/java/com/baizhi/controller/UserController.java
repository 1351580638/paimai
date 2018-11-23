package com.baizhi.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.baizhi.entity.User;
import com.baizhi.service.UserService;

@Controller

public class UserController {
	@Autowired
	private UserService service;
	
	@RequestMapping("/getOne")
	public String selectOne(User user,String kaptcha,HttpSession session){
		
		String sessionKaptcha = (String) session.getAttribute("kaptcha");
		
		if(kaptcha.equalsIgnoreCase(sessionKaptcha)){
			
			User us=service.selectOne(user);
			
		if(us!=null){
			session.setAttribute("user",us);
			return "forward:/selectAll.action";
			
		}else{
			return "redirect:/login.jsp";
		}
		}
		return "redirect:/login.jsp";
	}
	

	
	@RequestMapping("/add")
	public String insert(User user,String kaptcha,HttpSession session ){
		String sessionKaptcha = (String) session.getAttribute("kaptcha");
		if(kaptcha.equalsIgnoreCase(sessionKaptcha)){
			service.insert(user);
			return "redirect:/login.jsp";
		}else{
		return "redirect:/auctionreg.jsp";
	}
		
}	

	
}
