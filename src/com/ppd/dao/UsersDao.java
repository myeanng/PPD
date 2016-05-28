package com.ppd.dao;

import java.util.List;

import com.ppd.entity.Loan;
import com.ppd.entity.Userinfo;
import com.ppd.entity.Users;

public interface UsersDao extends BaseDao<Users> {

	//yzl
	public int countUsers();
	public List<Userinfo> findAllByPage(Userinfo userinfo);
	
	//my
	//根据用户ID查找用户基本资料
	Users findUsers(int userid);
	//根据用户ID查找用户的认证情况(需关联查询)
	Users findUsersIdentification(int userid);
	//联合查询
	Users findUserLoanAccount(int id);
	Users findUserDueinAccount(int id);
	
	Users findUserAndUserinfo(int userid);
	
	
	//lyj
	public Users queryUsersByTelorEmail(Users users);
	public Users queryOne(Users users);
	public boolean updateTel(Users user);
}
