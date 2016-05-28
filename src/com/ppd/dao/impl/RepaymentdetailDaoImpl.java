package com.ppd.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.ppd.dao.RepaymentdetailDao;
import com.ppd.entity.Repaymentdetail;
import com.ppd.entity.Users;
import com.ppd.util.SqlSessionDaoSupportTool;
@Repository("repaymentdetailDao")
public class RepaymentdetailDaoImpl extends SqlSessionDaoSupportTool implements
		RepaymentdetailDao {

	public String findSumPrinAndInter(Users user) {
		return getSqlSession().selectOne("com.ppd.dao.RepaymentdetailDao.findSumPrinAndInter",user);
	}

	public boolean add(Repaymentdetail entity) {
		return getSqlSession().getMapper(RepaymentdetailDao.class).add(entity);
	}

	public boolean del(Repaymentdetail entity) {
		return false;
	}

	public List<Repaymentdetail> queryAll() {
		return null;
	}

	public Repaymentdetail queryById(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Repaymentdetail> queryByParam(Repaymentdetail entity) {
		// TODO Auto-generated method stub
		return getSqlSession().getMapper(RepaymentdetailDao.class).queryByParam(entity);
	}

	public boolean up(Repaymentdetail entity) {
		// TODO Auto-generated method stub
		return false;
	}

}
