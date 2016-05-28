package com.ppd.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ppd.dao.AccountDao;
import com.ppd.entity.Account;
import com.ppd.service.AccountService;

@Service("accountService")
public class AccountServiceImpl implements AccountService {

	private AccountDao accountDao;
	
	
	@Resource(name="accountDao")
	public void setAccountDao(AccountDao accountDao) {
		this.accountDao = accountDao;
	}

	public boolean add(Account entity) {
		// TODO Auto-generated method stub
		return false;
	}

	public boolean del(Account entity) {
		// TODO Auto-generated method stub
		return false;
	}

	public List<Account> queryAll() {
		// TODO Auto-generated method stub
		return null;
	}

	public Account queryById(Integer id) {
		// TODO Auto-generated method stub
		return accountDao.queryById(id);
	}

	public List<Account> queryByParam(Account entity) {
		// TODO Auto-generated method stub
		return null;
	}

	public boolean up(Account entity) {
		// TODO Auto-generated method stub
		return accountDao.up(entity);
	}

	public Account finduserid(Account account) {
		return accountDao.finduserid(account);
	}

}
