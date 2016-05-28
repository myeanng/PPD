package com.ppd.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
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

import com.ppd.entity.Account;
import com.ppd.entity.Bill;
import com.ppd.entity.Duein;
import com.ppd.entity.Investrecord;
import com.ppd.entity.Loan;
import com.ppd.entity.Userinfo;
import com.ppd.entity.Users;
import com.ppd.service.AccountService;
import com.ppd.service.DueinService;
import com.ppd.service.InvestrecordService;
import com.ppd.service.LoanService;
import com.ppd.service.RepaymentdetailService;
import com.ppd.service.UserinfoService;

@Controller
@RequestMapping(value="loan")
public class LoanController {
	private LoanService ls;
	private UserinfoService uis;
	private InvestrecordService is;
	private RepaymentdetailService rds;
	private DueinService ds;
	private AccountService as;

	private List<Loan> loanList = new ArrayList<Loan>();
	
	/**
	 * 
	 * 查看所有借款项目
	 * @param model
	 * @return
	 */
	@RequestMapping(value="findAll" , method = {RequestMethod.POST,RequestMethod.GET})
	public String findAll(Model model,HttpSession session){
		loanList=ls.queryAll();
		session.setAttribute("loanList", loanList);
		return "default";
	}
	/**
	 * 
	 * 修改借款项目当前状态
	 * 用于后台 对借款项目管理
	 * @param model
	 * @return
	 */
	@RequestMapping(value="updateLoanStatus" , method = {RequestMethod.POST,RequestMethod.GET})
	public String updateLoanStatus(Model model,Loan loan){
		boolean b = ls.up(loan);
		if(b){
			System.out.println("修改成功");
		}else{
			System.out.println("修改失败");
		}
		return "forward:loanstatus";
	}
	/**
	 * 查看 单个 借款项目 详情
	 * @param model
	 * @return
	 */
	@RequestMapping(value="findLoanById" , method = {RequestMethod.POST,RequestMethod.GET})
	public String findLoanById(Model model,int loanid,HttpSession session){
		List<Loan> loanlist = new ArrayList<Loan>();
		List<Duein> dueinlist = new ArrayList<Duein>();
		List<Investrecord> investlist = new ArrayList<Investrecord>();
		int suc = 0;
		int los = 0;
		double loanmoney = 0.0;
		double daihuanmoney = 0.0;
		double daishoumoney = 0.0;
		double yihuanmoney = 0.0;
		Loan loan = new Loan();
		Users user = new Users();
		Duein duein = new Duein();
		loan = ls.queryById(loanid);
		user = loan.getUsers();
		duein.setUsers(user);
		duein.setStatus(0);
		loanlist = ls.findLoanByUserId(loan);
		String yh = rds.findSumPrinAndInter(user);
		if(yh==null){
			yh = "0";
		}
		yihuanmoney = Double.parseDouble(yh);
		for (Loan l : loanlist) {
			if(l.getStatus()==3||l.getStatus()==4||l.getStatus()==6||l.getStatus()==7||l.getStatus()==8||l.getStatus()==9){
				suc++;
			}
			if(l.getStatus()==2||l.getStatus()==5){
				los++;
			}
			if(l.getStatus()==6||l.getStatus()==7||l.getStatus()==8||l.getStatus()==9){
				daihuanmoney += l.getLoanmoney()+l.getLoanmoney()*l.getRate()*l.getLoantime()/12;
				loanmoney += l.getLoanmoney();
			}
		}
		daihuanmoney = daihuanmoney - yihuanmoney;
		Userinfo ui = uis.queryUserinfo(loan.getUsers());
		dueinlist = ds.queryByParam(duein);
		for (Duein duein2 : dueinlist) {
			daishoumoney += duein2.getPrincipal()+duein2.getInterest();
		}
		investlist = is.findInvestByLoanId(loan);
		
		Account account =new Account();
		Users loginuser = (Users) session.getAttribute("users");
		if(loginuser!=null){
			account = as.queryById(loginuser.getUserid());
			System.out.println(account.getInmoney());
		}
		
		model.addAttribute("account",account);
		session.setAttribute("account",account);
		model.addAttribute("suc", suc);
		model.addAttribute("los", los);
		model.addAttribute("loanmoney", loanmoney);
		model.addAttribute("daihuanmoney", daihuanmoney);
		model.addAttribute("daishoumoney", daishoumoney);
		model.addAttribute("ui", ui);
		model.addAttribute("lo",loan);
		session.setAttribute("loan",loan);
		model.addAttribute("investlist", investlist);
		model.addAttribute("loanlist", loanlist);
		return "loaninfo";
	}
	
	/**
	 * 投资查询 账户余额
	 * @param model
	 * @return
	 * @throws IOException 
	 */
	@RequestMapping(value="queryaccount" , method = {RequestMethod.POST,RequestMethod.GET})
	public void queryaccount(Model model,HttpServletResponse response,HttpSession session,double money) throws IOException{
		Account account = (Account) session.getAttribute("account");
		PrintWriter out=response.getWriter();
		if(money>account.getInmoney()){
			out.print(false);
		}else{
			out.print(true);
		}
	}
	/**
	 * 投资
	 * @param model
	 * @return
	 */
	@RequestMapping(value="invest" , method = {RequestMethod.POST,RequestMethod.GET})
	public String invest(Model model,HttpSession session,String pwd,double money){
		
		Account account =(Account) session.getAttribute("account");
		Duein duein = new Duein();
		Users user = (Users) session.getAttribute("users");
		Loan loan = (Loan) session.getAttribute("loan");
		loan.setRaise(loan.getRaise()+money);
		account.setUsers(user);
		account.setAccountpassword(pwd);
		double  a= account.getAllinvest()+money;
        double  b= account.getInmoney()-money;
        double  c= account.getOutmoney()+money;
        account.setAllinvest(a);
        account.setInmoney(b);
        account.setOutmoney(c);
        
		
		
		
		duein.setUsers(user);
		duein.setLoan(loan);
		duein.setFine(0);
		//li xi
		duein.setInterest(money/6*loan.getRate());
		//ben jin
		duein.setPrincipal(money/6);
		duein.setRate(loan.getRate());
		duein.setShouldtime(new Date());
		duein.setStatus(0);
		for(int i = 1;i < 7;i++){
			duein.setPeriod(i);
			ds.add(duein);
		}
		
		Investrecord investrecord = new Investrecord();
		investrecord.setInvesttime(new Date());
		investrecord.setLoan(loan);
		investrecord.setMoney(money);
		investrecord.setRate(loan.getRate());
		investrecord.setUsers(user);
		
		Bill bill = new Bill();
		bill.setUsers(user);
		bill.setClass_(1);
		bill.setCreatetime(new Date());
		bill.setMoney(money);
		bill.setState("投资");
		
		if(is.invest(investrecord, bill, account,loan)){
			return "chenggong";
		}else{
			return "shibai";
		}
	}
	
	
	/**
	 * 个人中心，用户 根据 借款项目 状态 查看 借款项目
	 * @param model
	 * @return
	 */
	@RequestMapping(value="queryByParam" , method = {RequestMethod.POST,RequestMethod.GET})
	public String queryByParam(Model model){
		Loan loan = new Loan();
		Users user = new Users();
		user.setUserid(1);
		loan.setUsers(user);
		loan.setStatus(0);
		loanList= ls.queryByParam(loan);
		model.addAttribute("loanList", loanList);
		return "loanList";
	}
	/**
	 * 
	 * 后台根据项目状态分页查看借款项目
	 * @param model
	 * @return
	 */
	@RequestMapping(value="loanstatus" , method = {RequestMethod.POST,RequestMethod.GET})
	public String loanstatus(Model model ,Integer pageNumber,Loan loan){
		model.addAttribute("loanpage",ls.findStatusByPage(pageNumber == null ? 1:pageNumber , 10,loan));
		return "admin/loanList";
	}
	
	/**
	 * 
	 * 查看所有借款项目
	 *  投资的分页显示
	 * @param model
	 * @return
	 */
	@RequestMapping(value="loanfindall" , method = {RequestMethod.POST,RequestMethod.GET})
	public String loanfindall(Model model ,Integer pageNumber){
	  model.addAttribute("loanpage",ls.findAllByPage(pageNumber == null ? 1:pageNumber , 10));
	  return "loanlist";
	}
	
	@RequestMapping(value="addLoan",method={RequestMethod.POST})
	public String addLoan(HttpServletRequest request,Loan loan,Model model){
		Users users=(Users) request.getSession().getAttribute("users");
		loan.setUsers(users);
		if(null==loan.getRate()){
			loan.setRate(0.12d);
			loan.setService(1);
		}else{
			loan.setRate(loan.getRate()*0.01);
			loan.setService(2);
		}
		
		loan.setRaise(0d);
		loan.setCreatetime(new Date());
		loan.setStatus(1);
		ls.add(loan);
		model.addAttribute("materialSize", 0);
		return "zizhishenhe";
	}
	@Resource(name="loanService")
	public void setLs(LoanService ls) {
		this.ls = ls;
	}
	@Resource(name="userinfoService")
	public void setUis(UserinfoService uis) {
		this.uis = uis;
	}
	@Resource(name="investrecordService")
	public void setIs(InvestrecordService is) {
		this.is = is;
	}
	@Resource(name="repaymentdetailService")
	public void setRds(RepaymentdetailService rds) {
		this.rds = rds;
	}
	@Resource(name="dueinService")
	public void setDs(DueinService ds) {
		this.ds = ds;
	}
	@Resource(name="accountService")
	public void setAs(AccountService as) {
		this.as = as;
	}
	
}
