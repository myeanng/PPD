package com.ppd.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ppd.dao.RepaymentdetailDao;
import com.ppd.entity.Repaymentdetail;
import com.ppd.entity.Users;
import com.ppd.service.RepaymentdetailService;

@Service("repaymentdetailService")
public class RepaymentdetailServiceImpl implements RepaymentdetailService {

	private RepaymentdetailDao repaymentdetailDao;
	@Resource(name="repaymentdetailDao")
	public void setRepaymentdetailDao(RepaymentdetailDao repaymentdetailDao) {
		this.repaymentdetailDao = repaymentdetailDao;
	}

	public String findSumPrinAndInter(Users user) {
		return repaymentdetailDao.findSumPrinAndInter(user);
	}

	public boolean add(Repaymentdetail entity) {
		// TODO Auto-generated method stub
		return false;
	}

	public boolean del(Repaymentdetail entity) {
		// TODO Auto-generated method stub
		return false;
	}

	public List<Repaymentdetail> queryAll() {
		// TODO Auto-generated method stub
		return null;
	}

	public Repaymentdetail queryById(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Repaymentdetail> queryByParam(Repaymentdetail entity) {
		// TODO Auto-generated method stub
		return null;
	}

	public boolean up(Repaymentdetail entity) {
		// TODO Auto-generated method stub
		return false;
	}

}
