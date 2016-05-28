package com.ppd.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ppd.entity.Linkman;
import com.ppd.entity.Loan;
import com.ppd.entity.Users;
import com.ppd.service.LinkmanService;
import com.ppd.service.LoanService;

@Controller
@RequestMapping(value="linkman")
public class LinkmanController {

	private LinkmanService lms;
	private LoanService ls;
	/**
	 * 
	 * 查看用户的联系人，用于项目审核
	 * @param model
	 * @return
	 */
	@RequestMapping(value="findByUserid" , method = {RequestMethod.POST,RequestMethod.GET})
	public String findByUserid(Model model){
		Linkman linkman = lms.queryByUserid(1);
		model.addAttribute("linkman", linkman);
		System.out.println(linkman.getOnelinkman());
		return "user";
	}
	@RequestMapping(value="addlinkman" , method = {RequestMethod.POST,RequestMethod.GET})
	public void addLinkman(Linkman linkman,HttpSession session,HttpServletResponse response) throws IOException{
		PrintWriter out=response.getWriter();
		Users users=(Users) session.getAttribute("users");
		Loan loan=new Loan();
		loan.setUsers(users);
		loan.setStatus(1);
		loan=ls.queryByParam(loan).get(0);
		linkman.setUsers(users);
		linkman.setLoan(loan);
		if(lms.add(linkman)){
			out.print(true);
		}
		else{
			out.print(false);
		}
		
	}
	
	
	@Resource(name="linkmanService")
	public void setLms(LinkmanService lms) {
		this.lms = lms;
	}
	@Resource(name="loanService")
	public void setLs(LoanService ls) {
		this.ls = ls;
	}
}
