package com.ppd.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ppd.entity.Userinfo;
import com.ppd.entity.Users;
import com.ppd.service.UserinfoService;
import com.ppd.service.UsersService;

@Controller
@RequestMapping(value="userinfo")
public class UserinfoController {

	private UserinfoService uis;
	private UsersService us;
	/**
	 * 
	 * 根据用户ID查看用户详细信息
	 * @param model
	 * @return
	 */
	@RequestMapping(value="findByUserid" , method = {RequestMethod.POST,RequestMethod.GET})
	public String findByUserid(Model model,Users user){
		Userinfo userinfo = uis.queryUserinfo(user);
		model.addAttribute("userinfo", userinfo);
		System.out.println(userinfo.getCompany());
		return "user";
	}
	
	@RequestMapping(value="addUserinfo",method={RequestMethod.POST})
	public String addUserinfo(HttpServletRequest request,Userinfo userinfo){
		Users users=(Users) request.getSession().getAttribute("users");
		if(users.getTel()==null){
			users.setTel(userinfo.getUsers().getTel());
			us.updateTel(users);
		}
		userinfo.setUsers(users);
		if(uis.add(userinfo))
			return "putongjiekuan";
		else
			return "tianxiexinxi";
	}
	@RequestMapping(value="checkUserinfo",method={RequestMethod.POST,RequestMethod.GET})
	public String checkUserinfo(HttpServletRequest request,Model model){
		Users users=(Users) request.getSession().getAttribute("users");
		if(users==null)
			return "login";
		return uis.jiekuantiaozhuan(users,model);
	}
	
	@Resource(name="userinfoService")
	public void setUis(UserinfoService uis) {
		this.uis = uis;
	}
	@Resource(name="usersService")
	public void setUs(UsersService us) {
		this.us = us;
	}
}
