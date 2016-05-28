package com.ppd.controller;


import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ppd.entity.Protect;
import com.ppd.entity.Users;
import com.ppd.service.ProtectService;

@Controller("protectController")
public class ProtectController {
	
	private ProtectService protectService;

	@Resource(name="protectService")
	public void setProtectService(ProtectService protectService) {
		this.protectService = protectService;
	}
	
	@RequestMapping(value="addProtect" , method={RequestMethod.POST , RequestMethod.GET})
	public String addProtect(HttpServletRequest request){
		
		Users u=new Users();
		u.setUserid(1);
		Protect p=new Protect(u,"aaa","aaa");
		p.setProtectid(1);
		protectService.add(p);
		System.out.println("addProtect...");
		return "showTest";
	}
}
