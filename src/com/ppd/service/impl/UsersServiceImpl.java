package com.ppd.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ppd.dao.UsersDao;
import com.ppd.entity.Userinfo;
import com.ppd.entity.Users;
import com.ppd.service.UsersService;
import com.ppd.util.PageHelper;
import com.ppd.util.PageHelper.Page;

@Service("usersService")
public class UsersServiceImpl implements UsersService {

	private UsersDao usersDao;
	@Resource(name="usersDao")
	public void setUsersDao(UsersDao usersDao) {
		this.usersDao = usersDao;
	}
	
	public boolean add(Users entity) {
		return usersDao.add(entity);
	}

	public boolean del(Users entity) {
		return false;
	}

	public Users queryById(Integer id) {
		return usersDao.queryById(id);
	}

	public List<Users> queryByParam(Users entity) {
		return null;
	}

	public boolean up(Users entity) {
		return usersDao.up(entity);
	}

	public int countUsers() {
		return usersDao.countUsers();
	}

	public Users findUserLoanAccount(int id) {
		return usersDao.findUserLoanAccount(id);
	}

	public Users findUserDueinAccount(int id) {
		return usersDao.findUserDueinAccount(id);
	}

	public Users queryOne(Users users) {
		return usersDao.queryOne(users);
	}

	public Users queryUsersByTelorEmail(Users users) {
		return usersDao.queryUsersByTelorEmail(users);
	}

	public boolean updateTel(Users user) {
		return usersDao.updateTel(user);
	}

	public Page<Userinfo> findAllByPage(int pageNumber, int pageSize) {
		PageHelper.startPage(pageNumber, pageSize);
		usersDao.findAllByPage(null);
		return PageHelper.endPage();
	}

	public List<Users> queryAll() {
		// TODO Auto-generated method stub
		return null;
	}
	
	
	
}
