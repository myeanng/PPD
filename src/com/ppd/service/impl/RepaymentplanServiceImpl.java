package com.ppd.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ppd.dao.RepaymentplanDao;
import com.ppd.entity.Repaymentplan;
import com.ppd.service.RepaymentplanService;

@Service("repaymentplanService")
public class RepaymentplanServiceImpl implements RepaymentplanService {

	private RepaymentplanDao repaymentplanDao;
	
	@Resource(name="repaymentplanDao")
	public void setRepaymentplanDao(RepaymentplanDao repaymentplanDao) {
		this.repaymentplanDao = repaymentplanDao;
	}

	public boolean add(Repaymentplan entity) {
		// TODO Auto-generated method stub
		return false;
	}

	public boolean del(Repaymentplan entity) {
		// TODO Auto-generated method stub
		return false;
	}

	public List<Repaymentplan> queryAll() {
		// TODO Auto-generated method stub
		return null;
	}

	public Repaymentplan queryById(Integer id) {
		// TODO Auto-generated method stub
		return repaymentplanDao.queryById(id);
	}

	public List<Repaymentplan> queryByParam(Repaymentplan entity) {
		// TODO Auto-generated method stub
		return null;
	}

	public boolean up(Repaymentplan entity) {
		// TODO Auto-generated method stub
		return false;
	}

}
