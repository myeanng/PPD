package com.ppd.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.ppd.dao.ProtectDao;
import com.ppd.entity.Protect;
import com.ppd.util.SqlSessionDaoSupportTool;

@Repository("protectDao")
public class ProtectDaoImpl extends SqlSessionDaoSupportTool implements
		ProtectDao {

	public boolean add(Protect entity) {
		return getSqlSession().getMapper(ProtectDao.class).add(entity);
	}

	public boolean del(Protect entity) {
		// TODO Auto-generated method stub
		return false;
	}

	public List<Protect> queryAll() {
		// TODO Auto-generated method stub
		return null;
	}

	public Protect queryById(Integer id) {
		return getSqlSession().getMapper(ProtectDao.class).queryById(id);
	}

	public List<Protect> queryByParam(Protect entity) {
		return getSqlSession().getMapper(ProtectDao.class).queryByParam(entity);
	}

	public boolean up(Protect entity) {
		// TODO Auto-generated method stub
		return false;
	}

}
