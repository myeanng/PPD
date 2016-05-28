package com.ppd.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.ppd.dao.LoanDao;
import com.ppd.entity.Loan;
import com.ppd.util.SqlSessionDaoSupportTool;

@Repository("loanDao")
public class LoanDaoImpl extends SqlSessionDaoSupportTool implements LoanDao {

	public boolean add(Loan entity) {
		return getSqlSession().getMapper(LoanDao.class).add(entity);
	}

	public boolean del(Loan entity) {
		return false;
	}


	public Loan queryById(Integer loanid) {
		return getSqlSession().selectOne("com.ppd.dao.LoanDao.findLoanById",loanid);
	}

	public List<Loan> queryByParam(Loan loan) {
		return getSqlSession().getMapper(LoanDao.class).queryByParam(loan);
	}

	public boolean up(Loan entity) {
		if(getSqlSession().update("com.ppd.dao.LoanDao.updateLoanStatus", entity)>0){
			return true;
		}else {
			return false;
		}
	}

	public List<Loan> queryByStatus(int status) {
		return getSqlSession().selectList("com.ppd.dao.LoanDao.findloan",status);
	}

	public int countLoan() {
		return getSqlSession().selectOne("com.ppd.dao.LoanDao.countLoan");
	}

	public List<Loan> findStatusByPage(Loan loan) {
		return getSqlSession().selectList("com.ppd.dao.LoanDao.findLoanByStatus",loan);
	}
	public List<Loan> findAllByPage(Loan loan)  {
		return getSqlSession().selectList("com.ppd.dao.LoanDao.findAll");
	}

	public List<Loan> queryAll() {
		return getSqlSession().selectList("com.ppd.dao.LoanDao.findTop");
	}

	public List<Loan> findLoanByUserId(Loan loan) {
		return getSqlSession().selectList("com.ppd.dao.LoanDao.findLoanByUserId",loan);
	}

	public boolean updateraise(Loan loan) {
		if(getSqlSession().update("com.ppd.dao.LoanDao.updateraise", loan)>0){
			return true;
		}else{
			return false;
		}
	}

	public double findLoanmoney(int id) {
		return getSqlSession().getMapper(LoanDao.class).findLoanmoney(id);
	}

	public Loan findLoanbyID(int id) {
		// TODO Auto-generated method stub
		return getSqlSession().getMapper(LoanDao.class).findLoanbyID(id);
	}

}
