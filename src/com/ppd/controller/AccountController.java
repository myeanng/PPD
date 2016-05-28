package com.ppd.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ppd.entity.Account;
import com.ppd.service.AccountService;


@Controller("accountController")
public class AccountController {
	
	private AccountService accountService;

	
	@Resource(name="accountService")
	public void setAccountService(AccountService accountService) {
		this.accountService = accountService;
	}
	
	
	@RequestMapping(value="findAccount" , method={RequestMethod.POST , RequestMethod.GET})
	public String findAccount(int id,HttpServletRequest request){
		request.getSession().setAttribute("account", accountService.queryById(id));
		return "showTest";
	}
	
	@RequestMapping(value="upAccount" , method={RequestMethod.POST , RequestMethod.GET})
	public String upAccount(Account account , HttpServletRequest request){
		accountService.up(account);
		request.getSession().setAttribute("account", accountService.queryById(account.getAccountid()));
		return "showTest";
	}
	
}
