package com.ppd.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ppd.entity.Investloantime;
import com.ppd.entity.Investrecord;
import com.ppd.entity.Loan;
import com.ppd.service.InvestrecordService;

@Controller
@RequestMapping(value="invest")
public class InvestrecordController {

	private InvestrecordService irs;
	private List<Investrecord> investrecordList;
	
	/**
	 * 查看网站所有投资信息
	 * @param model
	 * @return
	 */
	@RequestMapping(value="findAll" , method = {RequestMethod.POST,RequestMethod.GET})
	public String findAll(Model model){
		System.out.println("findAll方法...");
		investrecordList=irs.queryAll();
		model.addAttribute("investrecordList", investrecordList);
		System.out.println(investrecordList.size());
		for (Investrecord ir : investrecordList) {
			System.out.println(ir.getUsers());
		}
		return "investrecordList";
	}
	/**
	 * 查看单个用户的所有投资信息
	 * @param model
	 * @return
	 */
	@RequestMapping(value="investrecord" , method = {RequestMethod.POST,RequestMethod.GET})
	public String findByUserId(Model model){
		investrecordList=irs.findByUserId(1);
		model.addAttribute("investrecordList", investrecordList);
		System.out.println(investrecordList.size());
		for (Investrecord ir : investrecordList) {
			System.out.println(ir.getLoan().getLoanid()+","+ir.getLoan().getTitle());
		}
		return "investrecordList";
	}
	/**
	 * 查看个人总投资排行
	 * @param model
	 * @return
	 */
	@RequestMapping(value="findPersonAllInvest" , method = {RequestMethod.POST,RequestMethod.GET})
	public String findPersonAllInvest(Model model){
		investrecordList=irs.findPersonAllInvest();
		model.addAttribute("investrecordList", investrecordList);
		System.out.println(investrecordList.size());
		for (Investrecord ir : investrecordList) {
			System.out.println(ir.getLoan().getLoanid()+","+ir.getLoan().getTitle());
		}
		return "investrecordList";
	}
	/**
	 * 查看个人 单笔投资排行
	 * @param model
	 * @return
	 */
	@RequestMapping(value="findPersonOneInvest" , method = {RequestMethod.POST,RequestMethod.GET})
	public String findPersonOneInvest(Model model){
		investrecordList=irs.findPersonOneInvest();
		model.addAttribute("investrecordList", investrecordList);
		System.out.println(investrecordList.size());
		for (Investrecord ir : investrecordList) {
			System.out.println(ir.getLoan().getLoanid()+","+ir.getLoan().getTitle());
		}
		return "investrecordList";
	}
	/**
	 * 按利率统计投资金额
	 * @param model
	 * @return
	 * @throws IOException 
	 */
	@RequestMapping(value="findInvestByRate" , method = {RequestMethod.POST,RequestMethod.GET})
	public String findInvestByRate(Model model) throws IOException{
		
		List<Investrecord> investlist = new ArrayList<Investrecord>();
		Investloantime ilt = new Investloantime();
		investlist = irs.findInvestByRate();
		model.addAttribute("investlist", investlist);
		int gd=0;
		for (Investrecord i : investlist) {
			if(i.getMoney()>gd){
				model.addAttribute("maxRate", i.getRate());
				model.addAttribute("maxMoney", i.getMoney());
				gd = (int) Math.round(i.getMoney());
			}
			if(i.getRate()==0.12){
				ilt.setR12(i.getMoney());
			}else if(i.getRate()==0.13){
				ilt.setR13(i.getMoney());
			}else if(i.getRate()==0.14){
				ilt.setR14(i.getMoney());
			}else if(i.getRate()==0.15){
				ilt.setR15(i.getMoney());
			}else if(i.getRate()==0.16){
				ilt.setR16(i.getMoney());
			}else if(i.getRate()==0.17){
				ilt.setR17(i.getMoney());
			}else if(i.getRate()==0.18){
				ilt.setR18(i.getMoney());
			}else if(i.getRate()==0.19){
				ilt.setR19(i.getMoney());
			}else if(i.getRate()==0.20){
				ilt.setR20(i.getMoney());
			}else if(i.getRate()==0.21){
				ilt.setR21(i.getMoney());
			}else if(i.getRate()==0.22){
				ilt.setR22(i.getMoney());
			}else if(i.getRate()==0.23){
				ilt.setR23(i.getMoney());
			}else if(i.getRate()==0.24){
				ilt.setR24(i.getMoney());
			}
		}
		model.addAttribute("ilt", ilt);
		model.addAttribute("gd", gd);
		return "admin/invest";
		
	}
	/**
	 * 按借款期数统计投资金额
	 * @param model
	 * @return
	 */
	@RequestMapping(value="findInvestByLoantime" , method = {RequestMethod.POST,RequestMethod.GET})
	public String findInvestByLoantime(Model model){
		List<Loan> loanlist = new ArrayList<Loan>();
		loanlist = irs.findInvestByLoantime();
		Investloantime ilt = new Investloantime();
		int gd=0;
		for (Loan loan : loanlist) {
			if(loan.getLoanmoney()>gd){
				model.addAttribute("maxloantime", loan.getLoantime());
				model.addAttribute("maxloanmoney", loan.getLoanmoney());
				gd = (int) Math.round(loan.getLoanmoney());
			}
			if(loan.getLoantime()==6){
				ilt.setM6(loan.getLoanmoney());
			}else if(loan.getLoantime()==7){
				ilt.setM7(loan.getLoanmoney());
			}else if(loan.getLoantime()==8){
				ilt.setM8(loan.getLoanmoney());
			}else if(loan.getLoantime()==9){
				ilt.setM9(loan.getLoanmoney());
			}else if(loan.getLoantime()==10){
				ilt.setM10(loan.getLoanmoney());
			}else if(loan.getLoantime()==11){
				ilt.setM11(loan.getLoanmoney());
			}else if(loan.getLoantime()==12){
				ilt.setM12(loan.getLoanmoney());
			}
		}
		model.addAttribute("ilt", ilt);
		model.addAttribute("loanlist", loanlist);
		model.addAttribute("gd", gd);
		return "admin/investloantime";
	}
	
	@Resource(name="investrecordService")
	public void setIrs(InvestrecordService irs) {
		this.irs = irs;
	}
}
