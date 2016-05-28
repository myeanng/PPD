package com.ppd.dao;

import com.ppd.entity.Linkman;

public interface LinkmanDao extends BaseDao<Linkman> {

	public Linkman queryByUserid(int userid);
	
	//根据项目ID(唯一)查询联系人
	public Linkman queryLinkmanByLoanid(int loanid);
}
