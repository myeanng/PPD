package com.ppd.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ppd.dao.DueinDao;
import com.ppd.entity.Duein;
import com.ppd.service.DueinService;

@Service("dueinService")
public class DueinServiceImpl implements DueinService {

	private DueinDao dueinDao;
	@Resource(name="dueinDao")
	public void setDueinDao(DueinDao dueinDao) {
		this.dueinDao = dueinDao;
	}

	public boolean add(Duein entity) {
		return dueinDao.add(entity);
	}

	public boolean del(Duein entity) {
		return false;
	}

	public List<Duein> queryAll() {
		return null;
	}

	public Duein queryById(Integer id) {
		return null;
	}

	public List<Duein> queryByParam(Duein entity) {
		return dueinDao.queryByParam(entity);
	}

	public boolean up(Duein entity) {
		return false;
	}

}
