package com.ppd.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.ppd.dao.LinkmanDao;
import com.ppd.entity.Linkman;
import com.ppd.util.SqlSessionDaoSupportTool;
@Repository("linkmanDao")
public class LinkmanDaoImpl extends SqlSessionDaoSupportTool implements LinkmanDao {

	public Linkman queryByUserid(int userid) {
		return getSqlSession().selectOne("com.ppd.dao.LinkmanDao.queryByUserid",userid);
	}

	public boolean add(Linkman entity) {
		return getSqlSession().getMapper(LinkmanDao.class).add(entity);
	}

	public boolean del(Linkman entity) {
		// TODO Auto-generated method stub
		return false;
	}

	public List<Linkman> queryAll() {
		// TODO Auto-generated method stub
		return null;
	}

	public Linkman queryById(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Linkman> queryByParam(Linkman entity) {
		// TODO Auto-generated method stub
		return null;
	}

	public boolean up(Linkman entity) {
		// TODO Auto-generated method stub
		return false;
	}

	public Linkman queryLinkmanByLoanid(int loanid) {
		return getSqlSession().getMapper(LinkmanDao.class).queryLinkmanByLoanid(loanid);
	}
}
