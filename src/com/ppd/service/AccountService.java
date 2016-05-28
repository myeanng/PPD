package com.ppd.service;

import com.ppd.entity.Account;

public interface AccountService extends BaseService<Account> {

	public Account finduserid(Account account);
}
