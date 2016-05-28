package com.ppd.service;

import java.util.List;

import com.ppd.entity.Loan;
import com.ppd.util.PageHelper;

public interface LoanService extends BaseService<Loan> {

	public int countInvest();
	public PageHelper.Page<Loan> findStatusByPage(int pageNumber,int pageSize,Loan loan);
	public PageHelper.Page<Loan> findAllByPage(int pageNumber,int pageSize);
	public List<Loan> findLoanByUserId(Loan loan);
}
