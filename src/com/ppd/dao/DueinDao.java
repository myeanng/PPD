package com.ppd.dao;

import java.util.HashMap;
import java.util.List;

import com.ppd.entity.Duein;
import com.ppd.entity.Loan;

public interface DueinDao extends BaseDao<Duein> {

	Double ljmoney(int id);
	Double dsmoney(int id);
	Double syl(int id);
	Integer dueinNum(HashMap<String,Integer> map);
	public List<Duein> queryByParam2(Duein entity);
	
	//2015年4月25日14:55:29
	Duein findMyDuein(Duein duein);
}
