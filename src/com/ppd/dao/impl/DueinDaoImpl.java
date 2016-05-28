package com.ppd.dao.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.ppd.dao.DueinDao;
import com.ppd.entity.Duein;
import com.ppd.util.SqlSessionDaoSupportTool;

@Repository("dueinDao")
public class DueinDaoImpl extends SqlSessionDaoSupportTool implements DueinDao {
	
	public boolean add(Duein entity) {
		if(getSqlSession().insert("com.ppd.dao.DueinDao.addduein", entity)>0){
			return true;
		}else{
			return false;
		}
	}

	public boolean del(Duein entity) {
		// TODO Auto-generated method stub
		return false;
	}

	public List<Duein> queryAll() {
		// TODO Auto-generated method stub
		return null;
	}

	public Duein queryById(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Duein> queryByParam(Duein entity) {
		return getSqlSession().getMapper(DueinDao.class).queryByParam(entity);
	}

	public boolean up(Duein entity) {
		// TODO Auto-generated method stub
		return false;
	}

	public Double dsmoney(int id) {
		// TODO Auto-generated method stub
		return getSqlSession().getMapper(DueinDao.class).dsmoney(id);
	}

	public Double ljmoney(int id) {
		// TODO Auto-generated method stub
		return getSqlSession().getMapper(DueinDao.class).ljmoney(id);
	}

	public Double syl(int id) {
		// TODO Auto-generated method stub
		return getSqlSession().getMapper(DueinDao.class).syl(id);
	}

	public Integer dueinNum(HashMap<String,Integer> map) {
		// TODO Auto-generated method stub
		return getSqlSession().getMapper(DueinDao.class).dueinNum(map);
	}

	public List<Duein> queryByParam2(Duein entity) {
		return getSqlSession().getMapper(DueinDao.class).queryByParam2(entity);
	}

	public Duein findMyDuein(Duein duein) {
		// TODO Auto-generated method stub
		return getSqlSession().getMapper(DueinDao.class).findMyDuein(duein);
	}

}
