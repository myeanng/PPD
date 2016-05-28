package com.ppd.dao;

import java.util.List;

import com.ppd.entity.Loan;

public interface LoanDao extends BaseDao<Loan> {

	public int countLoan();
	public List<Loan> findStatusByPage(Loan loan);
	public List<Loan> findAllByPage(Loan loan);
	public List<Loan> findLoanByUserId(Loan loan);
	public boolean updateraise(Loan loan);
	
	double findLoanmoney(int id);
	
	//2015年4月23日14:58:07 孟岩
	Loan findLoanbyID(int id);
}
