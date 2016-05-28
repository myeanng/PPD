package com.ppd.dao;

import java.util.List;

import com.ppd.entity.Material;

public interface MaterialDao extends BaseDao<Material> {

	public List<Material> queryByUserid(int userid);
	
	//借款项目ID(唯一)查询上传的资料
	public List<Material> queryMaterialByLoanid(int loanid);
}
