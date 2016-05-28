package com.ppd.dao;

import com.ppd.entity.Userinfo;
import com.ppd.entity.Users;

public interface UserinfoDao extends BaseDao<Userinfo> {

	public Userinfo queryUserinfo(Users user);
}
