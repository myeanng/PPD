package com.ppd.dao;

import java.util.List;

import com.ppd.entity.Investrecord;
import com.ppd.entity.Loan;

public interface InvestrecordDao extends BaseDao<Investrecord> {

	public List<Investrecord> findByUserId(int userid);
	public List<Investrecord> findPersonAllInvest();
	public List<Investrecord> findPersonOneInvest();
	public int countInvest();
	//查看单个项目的投资记录
	public List<Investrecord> findInvestByLoanId(Loan loan);
	
	//按利率统计投资金额
	public List<Investrecord> findInvestByRate();
	//按借款期数统计投资金额
	public List<Loan> findInvestByLoantime();
}
