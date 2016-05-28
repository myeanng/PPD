package com.ppd.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ppd.dao.CreditDao;
import com.ppd.entity.Credit;
import com.ppd.service.CreditService;


@Service("creditService")
public class CreditServiceImpl implements CreditService {

	private CreditDao creditDao;
	
	
	@Resource(name="creditDao")
	public void setCreditDao(CreditDao creditDao) {
		this.creditDao = creditDao;
	}

	public boolean add(Credit entity) {
		// TODO Auto-generated method stub
		return false;
	}

	public boolean del(Credit entity) {
		// TODO Auto-generated method stub
		return false;
	}

	public List<Credit> queryAll() {
		// TODO Auto-generated method stub
		return null;
	}

	public Credit queryById(Integer id) {
		// TODO Auto-generated method stub
		return creditDao.queryById(id);
	}

	public List<Credit> queryByParam(Credit entity) {
		// TODO Auto-generated method stub
		return null;
	}

	public boolean up(Credit entity) {
		// TODO Auto-generated method stub
		return false;
	}

}
