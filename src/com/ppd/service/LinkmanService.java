package com.ppd.service;

import com.ppd.entity.Linkman;

public interface LinkmanService extends BaseService<Linkman> {

	public Linkman queryByUserid(int userid);
}
