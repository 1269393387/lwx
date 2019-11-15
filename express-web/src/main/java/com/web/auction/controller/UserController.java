package com.web.auction.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.web.auction.pojo.Auctionuser;
import com.web.auction.service.UserService;

@Controller
public class UserController {
	@Autowired
	private UserService userService;
	
	@RequestMapping("/doLogin")
	public String doLogin(String username,String userpassword, HttpSession session,Model model,String inputCode) {
		String randomNum=(String)session.getAttribute("numrand");
		Auctionuser auctionuser=new Auctionuser();
		if(!inputCode.equals(randomNum)) {
			model.addAttribute("errorMsg","验证码错误");
			return "login";
		}
		
		Auctionuser loginUser=userService.login(username, userpassword);
		
		if(loginUser!=null) {
			session.setAttribute("user", loginUser);
			return "index";
		}else {
			
			model.addAttribute("errorMsg","账号密码错误");
			return "login";
		
		}
		}
	@RequestMapping("/doLogout")
	public String doLogout(HttpSession session) {
		session.invalidate();
	
		return "login";
	}

}
