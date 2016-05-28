package com.ppd.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.ppd.dao.MaterialDao;
import com.ppd.entity.Material;
import com.ppd.util.SqlSessionDaoSupportTool;
@Repository("materialDao")
public class MaterialDaoImpl extends SqlSessionDaoSupportTool implements MaterialDao {

	public List<Material> queryByUserid(int userid) {
		return getSqlSession().selectList("com.ppd.dao.MaterialDao.queryByUserid", userid);
	}

	public boolean add(Material entity) {
		return getSqlSession().getMapper(MaterialDao.class).add(entity);
	}

	public boolean del(Material entity) {
		// TODO Auto-generated method stub
		return false;
	}

	public List<Material> queryAll() {
		// TODO Auto-generated method stub
		return null;
	}

	public Material queryById(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Material> queryByParam(Material entity) {
		// TODO Auto-generated method stub
		return null;
	}

	public boolean up(Material entity) {
		// TODO Auto-generated method stub
		return false;
	}

	public List<Material> queryMaterialByLoanid(int loanid) {
		return getSqlSession().getMapper(MaterialDao.class).queryMaterialByLoanid(loanid);
	}

}
