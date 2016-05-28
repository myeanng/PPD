package com.ppd.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ppd.service.SafetyService;


@Controller("safetyController")
public class SafetyController {
	private SafetyService safetyService;

	@Resource(name="safetyService")
	public void setSafetyService(SafetyService safetyService) {
		this.safetyService = safetyService;
	}
	
	
	@RequestMapping(value="findSafety" , method={RequestMethod.POST , RequestMethod.GET})
	public String findSafety(int id,HttpServletRequest request){
		request.getSession().setAttribute("safety", safetyService.queryById(id));
		return "showTest";
	}
	
}
