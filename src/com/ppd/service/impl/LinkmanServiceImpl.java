package com.ppd.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ppd.dao.LinkmanDao;
import com.ppd.entity.Linkman;
import com.ppd.service.LinkmanService;

@Service("linkmanService")
public class LinkmanServiceImpl implements LinkmanService {

	private LinkmanDao linkmanDao;
	@Resource(name="linkmanDao")
	public void setLinkmanDao(LinkmanDao linkmanDao) {
		this.linkmanDao = linkmanDao;
	}
	public Linkman queryByUserid(int userid) {
		return linkmanDao.queryByUserid(userid);
	}
	public boolean add(Linkman entity) {
		return linkmanDao.add(entity);
	}
	public boolean del(Linkman entity) {
		// TODO Auto-generated method stub
		return false;
	}
	public List<Linkman> queryAll() {
		// TODO Auto-generated method stub
		return null;
	}
	public Linkman queryById(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}
	public List<Linkman> queryByParam(Linkman entity) {
		// TODO Auto-generated method stub
		return null;
	}
	public boolean up(Linkman entity) {
		// TODO Auto-generated method stub
		return false;
	}
}
