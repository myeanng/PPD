package com.ppd.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.ppd.dao.LandingrecordDao;
import com.ppd.entity.Landingrecord;
import com.ppd.util.SqlSessionDaoSupportTool;

@Repository("landingrecordDao")
public class LandingrecordDaoImpl extends SqlSessionDaoSupportTool implements
		LandingrecordDao {

	public boolean add(Landingrecord entity) { 
		getSqlSession().insert("com.ppd.dao.LandingrecordDao.landingrecordAdd", entity);
		return true;
	}

	public boolean del(Landingrecord entity) {
		// TODO Auto-generated method stub
		return false;
	}

	public List<Landingrecord> queryAll() {
		// TODO Auto-generated method stub
		return null;
	}

	public Landingrecord queryById(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Landingrecord> queryByParam(Landingrecord entity) {
		return getSqlSession().getMapper(LandingrecordDao.class).queryByParam(entity);
	}

	public boolean up(Landingrecord entity) {
		// TODO Auto-generated method stub
		return false;
	}

}
