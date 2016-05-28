package com.ppd.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ppd.dao.SafetyDao;
import com.ppd.entity.Safety;
import com.ppd.service.SafetyService;


@Service("safetyService")
public class SafetyServiceImpl implements SafetyService {

	private SafetyDao safetyDao;
	
	
	@Resource(name="safetyDao")
	public void setSafetyDao(SafetyDao safetyDao) {
		this.safetyDao = safetyDao;
	}

	public boolean add(Safety entity) {
		// TODO Auto-generated method stub
		return false;
	}

	public boolean del(Safety entity) {
		// TODO Auto-generated method stub
		return false;
	}

	public List<Safety> queryAll() {
		// TODO Auto-generated method stub
		return null;
	}

	public Safety queryById(Integer id) {
		// TODO Auto-generated method stub
		return safetyDao.queryById(id);
	}

	public List<Safety> queryByParam(Safety entity) {
		// TODO Auto-generated method stub
		return null;
	}

	public boolean up(Safety entity) {
		// TODO Auto-generated method stub
		return false;
	}

}
