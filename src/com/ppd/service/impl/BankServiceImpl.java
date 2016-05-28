package com.ppd.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ppd.dao.BankDao;
import com.ppd.entity.Bank;
import com.ppd.service.BankService;

@Service("bankService")
public class BankServiceImpl implements BankService {

	private BankDao bankDao;
	
	
	@Resource(name="bankDao")
	public void setBankDao(BankDao bankDao) {
		this.bankDao = bankDao;
	}

	public List<Bank> findBankListByID(int id) {
		// TODO Auto-generated method stub
		return bankDao.findBankListByID(id);
	}

	public boolean add(Bank entity) {
		// TODO Auto-generated method stub
		return bankDao.add(entity);
	}

	public boolean del(Bank entity) {
		// TODO Auto-generated method stub
		return false;
	}

	public List<Bank> queryAll() {
		// TODO Auto-generated method stub
		return null;
	}

	public Bank queryById(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Bank> queryByParam(Bank entity) {
		// TODO Auto-generated method stub
		return bankDao.queryByParam(entity);
	}

	public boolean up(Bank entity) {
		// TODO Auto-generated method stub
		return bankDao.up(entity);
	}

}
