package com.ppd.service;

import java.util.List;

public interface BaseService<T> {
	
	public boolean add(T entity);
		
	public boolean del(T entity);
		
	public boolean up(T entity);
		
	public List<T> queryAll();
		
	public T queryById(Integer id);
		
	public List<T> queryByParam(T entity);

}
