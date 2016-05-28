package com.ppd.service;

import com.ppd.entity.Repaymentdetail;
import com.ppd.entity.Users;

public interface RepaymentdetailService extends BaseService<Repaymentdetail> {
	public String findSumPrinAndInter(Users user);
}
