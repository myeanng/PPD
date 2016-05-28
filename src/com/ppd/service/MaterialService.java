package com.ppd.service;

import java.util.List;

import com.ppd.entity.Material;

public interface MaterialService extends BaseService<Material> {

	public List<Material> queryByUserid(int userid);
}
