package com.ppd.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ppd.dao.LoanDao;
import com.ppd.entity.Loan;
import com.ppd.service.LoanService;
import com.ppd.util.PageHelper;
import com.ppd.util.PageHelper.Page;

@Service("loanService")
public class LoanServiceImpl implements LoanService {
	
	private LoanDao loanDao;
	@Resource(name="loanDao")
	public void setLoanDao(LoanDao loanDao) {
		this.loanDao = loanDao;
	}

	public boolean add(Loan entity) {
		return loanDao.add(entity);
	}

	public boolean del(Loan entity) {
		return false;
	}

	public List<Loan> queryAll() {
		return loanDao.queryAll();
	}

	public Loan queryById(Integer id) {
		return loanDao.queryById(id);
	}

	public List<Loan> queryByParam(Loan loan) {
		return loanDao.queryByParam(loan);
	}

	public boolean up(Loan entity) {
		return loanDao.up(entity);
	}

	public int countInvest() {
		return loanDao.countLoan();
	}
	
	public PageHelper.Page<Loan> findStatusByPage(int pageNumber,int pageSize,Loan loan)  {
		PageHelper.startPage(pageNumber, pageSize);
		loanDao.findStatusByPage(loan);
		return PageHelper.endPage();
	}
	public Page<Loan> findAllByPage(int pageNumber, int pageSize) {
		PageHelper.startPage(pageNumber, pageSize);
		loanDao.findAllByPage(null);
		return PageHelper.endPage();
	}

	public List<Loan> findLoanByUserId(Loan loan) {
		return loanDao.findLoanByUserId(loan);
	}

}
