package com.ppd.service;

import org.springframework.ui.Model;

import com.ppd.entity.Userinfo;
import com.ppd.entity.Users;

public interface UserinfoService extends BaseService<Userinfo> {

	public Userinfo queryUserinfo(Users user);
	
	//用户借款时判断进入哪个页面
	public String jiekuantiaozhuan(Users users,Model model);
}
