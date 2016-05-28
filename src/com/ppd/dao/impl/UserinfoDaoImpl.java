package com.ppd.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.ppd.dao.UserinfoDao;
import com.ppd.entity.Userinfo;
import com.ppd.entity.Users;
import com.ppd.util.SqlSessionDaoSupportTool;
@Repository("userinfoDao")
public class UserinfoDaoImpl extends SqlSessionDaoSupportTool implements UserinfoDao {


	public boolean add(Userinfo entity) {
		return getSqlSession().getMapper(UserinfoDao.class).add(entity);
	}

	public boolean del(Userinfo entity) {
		return false;
	}

	public List<Userinfo> queryAll() {
		return null;
	}

	public Userinfo queryById(Integer id) {
		return getSqlSession().getMapper(UserinfoDao.class).queryById(id);
	}

	public List<Userinfo> queryByParam(Userinfo entity) {
		return null;
	}

	public boolean up(Userinfo entity) {
		return getSqlSession().getMapper(UserinfoDao.class).up(entity);
	}

	public Userinfo queryUserinfo(Users user) {
		return getSqlSession().selectOne("com.ppd.dao.UserinfoDao.queryUserinfo",user);
	}

}
