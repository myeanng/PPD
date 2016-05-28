package com.ppd.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.ppd.dao.AuthorityDao;
import com.ppd.entity.Authority;
import com.ppd.util.SqlSessionDaoSupportTool;
@Repository("authorityDao")
public class AuthorityDaoImpl extends SqlSessionDaoSupportTool implements
		AuthorityDao {

	public boolean add(Authority entity) {
		return false;
	}

	public boolean del(Authority entity) {
		return false;
	}

	public List<Authority> queryAll() {
		return getSqlSession().selectList("com.ppd.dao.AuthorityDao.queryAll");
	}

	public Authority queryById(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Authority> queryByParam(Authority entity) {
		// TODO Auto-generated method stub
		return null;
	}

	public boolean up(Authority entity) {
		// TODO Auto-generated method stub
		return false;
	}

}
