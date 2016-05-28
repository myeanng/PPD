package com.ppd.service;

import com.ppd.entity.Userinfo;
import com.ppd.entity.Users;
import com.ppd.util.PageHelper;

public interface UsersService extends BaseService<Users>{

	public int countUsers();
	Users findUserLoanAccount(int id);
	Users findUserDueinAccount(int id);
	public Users queryUsersByTelorEmail(Users users);
	public Users queryOne(Users users);
	public boolean updateTel(Users user);
	public PageHelper.Page<Userinfo> findAllByPage(int pageNumber,int pageSize);
}
