package com.ppd.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ppd.dao.LandingrecordDao;
import com.ppd.entity.Landingrecord;
import com.ppd.service.LandingrecordService;

@Service("landingrecordService")
public class LandingrecordServiceImpl implements LandingrecordService {

	private LandingrecordDao landingrecordDao;
	
	@Resource(name="landingrecordDao")
	public void setLandingrecordDao(LandingrecordDao landingrecordDao) {
		this.landingrecordDao = landingrecordDao;
	}

	public boolean add(Landingrecord entity) {
		return landingrecordDao.add(entity);
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
		// TODO Auto-generated method stub
		return landingrecordDao.queryByParam(entity);
	}

	public boolean up(Landingrecord entity) {
		// TODO Auto-generated method stub
		return false;
	}

}
