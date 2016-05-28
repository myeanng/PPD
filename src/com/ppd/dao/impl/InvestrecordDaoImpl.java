package com.ppd.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.ppd.dao.InvestrecordDao;
import com.ppd.entity.Investrecord;
import com.ppd.entity.Loan;
import com.ppd.util.SqlSessionDaoSupportTool;

@Repository("investrecordDao")
public class InvestrecordDaoImpl extends SqlSessionDaoSupportTool implements InvestrecordDao {
	
	public boolean add(Investrecord entity) {
		if(getSqlSession().insert("com.ppd.dao.InvestrecordDao.addinvestrecord", entity)>0){
			return true;
		}else{
			return false;
		}
	}

	public boolean del(Investrecord entity) {
		// TODO Auto-generated method stub
		return false;
	}

	public List<Investrecord> queryAll() {
		
		return getSqlSession().selectList("com.ppd.dao.InvestrecordDao.findAll");
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
		return getSqlSession().selectList("com.ppd.dao.InvestrecordDao.findByUserId",userid);
	}

	public List<Investrecord> findPersonAllInvest() {
		return getSqlSession().selectList("com.ppd.dao.InvestrecordDao.findPersonAllInvest");
	}

	public List<Investrecord> findPersonOneInvest() {
		return getSqlSession().selectList("com.ppd.dao.InvestrecordDao.findPersonOneInvest");
	}

	public int countInvest() {
		return getSqlSession().selectOne("com.ppd.dao.InvestrecordDao.countInvest");
	}

	public List<Investrecord> findInvestByLoanId(Loan loan) {
		return getSqlSession().selectList("com.ppd.dao.InvestrecordDao.findInvestByLoanId",loan);
	}

	public List<Investrecord> findInvestByRate() {
		return getSqlSession().selectList("com.ppd.dao.InvestrecordDao.findInvestByRate");
	}

	public List<Loan> findInvestByLoantime() {
		return getSqlSession().selectList("com.ppd.dao.InvestrecordDao.findInvestByLoantime");
	}

}
