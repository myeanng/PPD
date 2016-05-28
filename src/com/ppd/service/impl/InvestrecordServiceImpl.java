package com.ppd.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ppd.dao.AccountDao;
import com.ppd.dao.BillDao;
import com.ppd.dao.DueinDao;
import com.ppd.dao.InvestrecordDao;
import com.ppd.dao.LoanDao;
import com.ppd.entity.Account;
import com.ppd.entity.Bill;
import com.ppd.entity.Duein;
import com.ppd.entity.Investrecord;
import com.ppd.entity.Loan;
import com.ppd.service.InvestrecordService;

@Service("investrecordService")
public class InvestrecordServiceImpl implements InvestrecordService {

	private InvestrecordDao investrecordDao;
	private BillDao billDao;
	private AccountDao accountDao;
	private LoanDao loanDao;
	@Resource(name="loanDao")
	public void setLoanDao(LoanDao loanDao) {
		this.loanDao = loanDao;
	}
	@Resource(name="investrecordDao")
	public void setInvestrecordDao(InvestrecordDao investrecordDao) {
		this.investrecordDao = investrecordDao;
	}
	@Resource(name="billDao")
	public void setBillDao(BillDao billDao) {
		this.billDao = billDao;
	}
	@Resource(name="accountDao")
	public void setAccountDao(AccountDao accountDao) {
		this.accountDao = accountDao;
	}
	public boolean add(Investrecord entity) {
		return investrecordDao.add(entity);
	}

	public boolean del(Investrecord entity) {
		return false;
	}

	public List<Investrecord> queryAll() {
		return investrecordDao.queryAll();
	}

	public Investrecord queryById(Integer id) {
		return null;
	}

	public List<Investrecord> queryByParam(Investrecord entity) {
		return null;
	}

	public boolean up(Investrecord entity) {
		return false;
	}

	public List<Investrecord> findByUserId(int userid) {
		return investrecordDao.findByUserId(userid);
	}

	public List<Investrecord> findPersonAllInvest() {
		return null;
	}

	public List<Investrecord> findPersonOneInvest() {
		return null;
	}

	public int countInvest() {
		return investrecordDao.countInvest();
	}

	public List<Investrecord> findInvestByLoanId(Loan loan) {
		return investrecordDao.findInvestByLoanId(loan);
	}

	public boolean invest(Investrecord investrecord,Bill bill,Account account,Loan loan) {
		boolean i = investrecordDao.add(investrecord);
		boolean b = billDao.add(bill);
		boolean a = accountDao.updatemoney(account);
		boolean l = loanDao.updateraise(loan);
		return i&&b&&a&&l;
	}
	public List<Investrecord> findInvestByRate() {
		return investrecordDao.findInvestByRate();
	}
	public List<Loan> findInvestByLoantime() {
		return investrecordDao.findInvestByLoantime();
	}

}
