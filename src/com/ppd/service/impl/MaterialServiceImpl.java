package com.ppd.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ppd.dao.MaterialDao;
import com.ppd.entity.Material;
import com.ppd.service.MaterialService;

@Service("materialService")
public class MaterialServiceImpl implements MaterialService {

	private  MaterialDao  materialDao;
	@Resource(name="materialDao")
	public void setMaterialDao(MaterialDao materialDao) {
		this.materialDao = materialDao;
	}
	public List<Material> queryByUserid(int userid) {
		return materialDao.queryByUserid(userid);
	}
	public boolean add(Material entity) {
		return materialDao.add(entity);
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
}
