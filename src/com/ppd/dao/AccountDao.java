package com.ppd.dao;

import com.ppd.entity.Account;

public interface AccountDao extends BaseDao<Account> {
	//查看用户账户
	public Account finduserid(Account account);
	//更改 账户余额
	public boolean updatemoney(Account account);
}
