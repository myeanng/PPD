package com.ppd.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ppd.entity.Bill;
import com.ppd.entity.Users;
import com.ppd.service.BillService;

@Controller("billController")
public class BillController {
	
	private BillService billService;
	
	@Resource(name="billService")
	public void setBillService(BillService billService) {
		this.billService = billService;
	}
	
	@RequestMapping(value="findBill" , method={RequestMethod.POST , RequestMethod.GET})
	public String findBill(int id ,HttpServletRequest request){
		Bill entity=new Bill();
		Users u=new Users();
		u.setUserid(id);
		entity.setUsers(u);
		request.getSession().setAttribute("bills", billService.queryByParam(entity));
		return "showTest";
	}
}
