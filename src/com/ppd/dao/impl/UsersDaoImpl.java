package com.ppd.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.ppd.dao.UsersDao;
import com.ppd.entity.Loan;
import com.ppd.entity.Userinfo;
import com.ppd.entity.Users;
import com.ppd.util.SqlSessionDaoSupportTool;

@Repository("usersDao")
public class UsersDaoImpl extends SqlSessionDaoSupportTool implements UsersDao {
	
	public boolean add(Users entity) {
		return getSqlSession().getMapper(UsersDao.class).add(entity);
	}

	public boolean del(Users entity) {
		return false;
	}
	public List<Users> queryAll() {
		return getSqlSession().selectList("com.ppd.dao.UsersDao.findAll");
	}

	public Users queryById(Integer id) {
		return getSqlSession().getMapper(UsersDao.class).queryById(id);
	}

	public List<Users> queryByParam(Users entity) {
		return null;
	}

	public boolean up(Users entity) {
		return getSqlSession().getMapper(UsersDao.class).up(entity);
	}

	public int countUsers() {
		return getSqlSession().selectOne("com.ppd.dao.UsersDao.countUsers");
	}

	public Users findUserDueinAccount(int id) {
		return getSqlSession().getMapper(UsersDao.class).findUserDueinAccount(id);
	}

	public Users findUserLoanAccount(int id) {
		return getSqlSession().getMapper(UsersDao.class).findUserLoanAccount(id);
	}

	public Users findUsers(int userid) {
		// TODO Auto-generated method stub
		return null;
	}

	public Users findUsersIdentification(int userid) {
		// TODO Auto-generated method stub
		return null;
	}

	public Users queryOne(Users users) {
		return getSqlSession().selectOne("com.ppd.dao.UsersDao.login",users);
	}

	public Users queryUsersByTelorEmail(Users users) {
		return getSqlSession().getMapper(UsersDao.class).queryUsersByTelorEmail(users);
	}

	public boolean updateTel(Users user) {
		return getSqlSession().getMapper(UsersDao.class).updateTel(user);
	}

	public List<Userinfo> findAllByPage(Userinfo userinfo) {
		return getSqlSession().selectList("com.ppd.dao.UsersDao.findAll");
	}
	public Users findUserAndUserinfo(int userid) {
		return getSqlSession().getMapper(UsersDao.class).findUserAndUserinfo(userid);
	}
}
