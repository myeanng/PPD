package com.ppd.dao;

import com.ppd.entity.Repaymentdetail;
import com.ppd.entity.Users;

public interface RepaymentdetailDao extends BaseDao<Repaymentdetail> {

	public String findSumPrinAndInter(Users user);
	
}
