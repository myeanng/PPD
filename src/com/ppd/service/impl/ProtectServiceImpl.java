package com.ppd.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ppd.dao.ProtectDao;
import com.ppd.entity.Protect;
import com.ppd.service.ProtectService;

@Service("protectService")
public class ProtectServiceImpl implements ProtectService {

	private ProtectDao protectDao;
	
	@Resource(name="protectDao")
	public void setProtectDao(ProtectDao protectDao) {
		this.protectDao = protectDao;
	}

	public boolean add(Protect entity) {
		// TODO Auto-generated method stub
		return protectDao.add(entity);
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
		// TODO Auto-generated method stub
		return null;
	}

	public List<Protect> queryByParam(Protect entity) {
		// TODO Auto-generated method stub
		return null;
	}

	public boolean up(Protect entity) {
		// TODO Auto-generated method stub
		return false;
	}

}
