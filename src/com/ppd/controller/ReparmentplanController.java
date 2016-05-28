package com.ppd.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ppd.service.RepaymentplanService;

@Controller("repaymentplanController")
public class ReparmentplanController {
	
	private RepaymentplanService repaymentplanService;
	
	@Resource(name="repaymentplanService")
	public void setRepaymentplanService(RepaymentplanService repaymentplanService) {
		this.repaymentplanService = repaymentplanService;
	}
	
	@RequestMapping(value="findRepaymentplan" , method={RequestMethod.POST , RequestMethod.GET})
	public String findRepaymentplan(int id ,HttpServletRequest request){
		request.getSession().setAttribute("repaymentplan", repaymentplanService.queryById(id));
		return "showTest";
	}
	
}
