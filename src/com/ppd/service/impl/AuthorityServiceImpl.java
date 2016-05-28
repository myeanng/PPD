package com.ppd.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ppd.dao.AuthorityDao;
import com.ppd.entity.Authority;
import com.ppd.service.AuthorityService;
@Service("authorityService")
public class AuthorityServiceImpl implements AuthorityService {
	private AuthorityDao authorityDao;
	@Resource(name="authorityDao")
	public void setAuthorityDao(AuthorityDao authorityDao) {
		this.authorityDao = authorityDao;
	}

	public boolean add(Authority entity) {
		// TODO Auto-generated method stub
		return false;
	}

	public boolean del(Authority entity) {
		// TODO Auto-generated method stub
		return false;
	}

	public List<Authority> queryAll() {
		return authorityDao.queryAll();
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
