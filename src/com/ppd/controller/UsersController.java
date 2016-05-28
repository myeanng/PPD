package com.ppd.controller;

import java.io.PrintWriter;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ppd.entity.Credit;
import com.ppd.entity.Landingrecord;
import com.ppd.entity.Users;
import com.ppd.service.CreditService;
import com.ppd.service.InvestrecordService;
import com.ppd.service.LandingrecordService;
import com.ppd.service.LoanService;
import com.ppd.service.UsersService;
import com.ppd.util.MD5;

@Controller
@RequestMapping(value="users")
public class UsersController {

	private UsersService us;
	private InvestrecordService irs;
	private LandingrecordService lrs;
	private CreditService cs;
	private LoanService ls;
	private List<Users> usersList;
	private int countUsers;
	private int countInvest;
	private int countLoan;
	
	/**
	 * 查看用户列表
	 * @param model
	 * @return
	 */
	@RequestMapping(value="findAll" , method = {RequestMethod.POST,RequestMethod.GET})
	public String findAll(Model model ,Integer pageNumber){
		model.addAttribute("allusers", us.findAllByPage(pageNumber == null ? 1:pageNumber , 1));
		return "admin/userList";
	}
	/**
	 *   统计 网站 用户 注册用户 数量
	 * @param model
	 * @return
	 */
	@RequestMapping(value="countUsers" , method = {RequestMethod.POST,RequestMethod.GET})
	public String countUsers(Model model,HttpSession session){
		countUsers = us.countUsers();
		countInvest = irs.countInvest();
		countLoan = ls.countInvest();
		session.setAttribute("countUsers",countUsers);
		session.setAttribute("countInvest",countInvest);
		session.setAttribute("countLoan",countLoan);
		return "redirect:/loan/findAll";
	}
	
	@RequestMapping(value="findUserBaccount" , method={RequestMethod.POST , RequestMethod.GET})
	public String findUserBaccount(int id , HttpServletRequest request){
		Users user=us.findUserLoanAccount(id);
		//查找信誉额度
		Credit credit=cs.queryById(user.getCredit());
		//计算可用额度
		request.getSession().setAttribute("user", user);
		request.getSession().setAttribute("credit", credit);
		return "baccount";
	}
	
	@RequestMapping(value="findUserLaccount" , method={RequestMethod.POST , RequestMethod.GET})
	public String findUserLaccount(int id ,HttpServletRequest request){
		Users user=us.findUserDueinAccount(id);
		request.getSession().setAttribute("user", user);
		return "laccount";
	}
	
	@RequestMapping(value="upUser" , method={RequestMethod.POST , RequestMethod.GET})
	public String upUser(Users entity ,HttpServletRequest request){
		us.up(entity);
		return "showTest";
	}
	//lyj
	@RequestMapping(value="reg2",method={RequestMethod.GET,RequestMethod.POST})
	public void reg2(HttpServletResponse response,Users users) throws Exception{
		int sjs=(int)(Math.random()*1000000);
		String name="ppd_"+Integer.toString(sjs);
		users.setUsername(name);
		String pwd=MD5.encodePassword(users.getLoginpassword(), "MD5");
		users.setLoginpassword(pwd);
		users.setCreatetime(new Date());
		users.setCredit(0);
		users.setIntegral(0);
		users.setStatus(1);
		PrintWriter out=response.getWriter();
		boolean reg=us.add(users);
		if(reg){
			out.print(true);
		}else{
			out.print(false);
		}
	}
	
	@RequestMapping(value="checkTelorEmail",method={RequestMethod.GET,RequestMethod.POST})
	public void checkTel(HttpServletResponse response,Users users) throws Exception{
		System.out.println("checkTel");
		PrintWriter out=response.getWriter();
		users=us.queryUsersByTelorEmail(users);
		if(users==null){
			out.print(true);
		}else{
			out.print(false);
		}
	}
 
	@RequestMapping(value="Login" , method = {RequestMethod.POST,RequestMethod.GET})
	 public String Login( HttpServletRequest request,Model model,Users users){
		 users.setLoginpassword(MD5.encodePassword(users.getLoginpassword(), "MD5"));//Md5解密
		 Users user=us.queryOne(users);
		 if(user!=null){
			 Landingrecord landingrecord=new Landingrecord();
			 landingrecord.setUsers(user);
			 landingrecord.setLandingtime(new Date());
			 landingrecord.setLandingip(request.getRemoteAddr());
			 lrs.add(landingrecord);//添加登陆记录
			 request.getSession().setAttribute("users", user);
			 return "woyaojiekuan";
		 }
		 return "login";
	 }

	@Resource(name="usersService")
	public void setUs(UsersService us) {
		this.us = us;
	}
	@Resource(name="investrecordService")
	public void setIrs(InvestrecordService irs) {
		this.irs = irs;
	}
	@Resource(name="loanService")
	public void setLs(LoanService ls) {
		this.ls = ls;
	}
	@Resource(name="creditService")
	public void setCreditService(CreditService cs) {
		this.cs = cs;
	}
	@Resource(name="landingrecordService")
	public void setLrs(LandingrecordService lrs) {
		this.lrs = lrs;
	}
	
}
