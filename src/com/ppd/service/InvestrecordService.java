package com.ppd.service;

import java.util.List;

import com.ppd.entity.Account;
import com.ppd.entity.Bill;
import com.ppd.entity.Investrecord;
import com.ppd.entity.Loan;

public interface InvestrecordService extends BaseService<Investrecord> {

	public List<Investrecord> findByUserId(int userid);
	public List<Investrecord> findPersonAllInvest();
	public List<Investrecord> findPersonOneInvest();
	public int countInvest();
	public List<Investrecord> findInvestByLoanId(Loan loan);
	public boolean invest(Investrecord investrecord,Bill bill,Account account,Loan loan);
	//按利率统计投资金额
	public List<Investrecord> findInvestByRate();
	//按借款期数统计投资金额
	public List<Loan> findInvestByLoantime();
}
