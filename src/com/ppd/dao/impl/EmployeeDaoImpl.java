package com.ppd.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.ppd.dao.EmployeeDao;
import com.ppd.entity.Employee;
import com.ppd.util.SqlSessionDaoSupportTool;

@Repository("employeeDao")
public class EmployeeDaoImpl extends SqlSessionDaoSupportTool implements EmployeeDao {

	public boolean add(Employee entity) {
		int i=getSqlSession().insert("com.ppd.dao.EmployeeDao.add", entity);
		if(i<0)
		return false;
		else
			return true;
	}
	public boolean del(Employee entity) {
		return false;
	}
	public List<Employee> queryAll() {
		return null;
	}
	public Employee queryById(Integer id) {
		return null;
	}
	public List<Employee> queryByParam(Employee entity) {
		return null;
	}
	public boolean up(Employee entity) {
		return false;
	}
	public Employee adminlogin(Employee entity) {
		return getSqlSession().selectOne("com.ppd.dao.EmployeeDao.login", entity);
	}
}
