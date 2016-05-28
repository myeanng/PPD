package com.ppd.controller;

import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ppd.entity.Bank;
import com.ppd.entity.Users;
import com.ppd.service.BankService;

@Controller("bankController")
public class BankController {
	
	private BankService bankService;

	@Resource(name="bankService")
	public void setBankService(BankService bankService) {
		this.bankService = bankService;
	}
	
	@RequestMapping(value="addBank" , method={RequestMethod.POST , RequestMethod.GET})
	public String addBank(HttpServletRequest request){
		
		Users u=new Users();
		u.setUserid(1);
		Bank b1=new Bank(u,"123456789","ZGYH",new Date(),1);
		b1.setBankcardid(5);
		bankService.add(b1);
		System.out.println("addBank...");
		request.getSession().setAttribute("banks", bankService.findBankListByID(1));
		System.out.println("showBankList...");
		return "showTest";
	}
}
