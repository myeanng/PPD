package com.ppd.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ppd.dao.BillDao;
import com.ppd.entity.Bill;
import com.ppd.service.BillService;

@Service("billService")
public class BillServiceImpl implements BillService {

	private BillDao billDao;
	@Resource(name="billDao")
	public void setBillDao(BillDao billDao) {
		this.billDao = billDao;
	}

	public boolean add(Bill entity) {
		return billDao.add(entity);
	}

	public boolean del(Bill entity) {
		// TODO Auto-generated method stub
		return false;
	}

	public List<Bill> queryAll() {
		// TODO Auto-generated method stub
		return null;
	}

	public Bill queryById(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Bill> queryByParam(Bill entity) {
		// TODO Auto-generated method stub
		return billDao.queryByParam(entity);
	}

	public boolean up(Bill entity) {
		// TODO Auto-generated method stub
		return false;
	}

}
