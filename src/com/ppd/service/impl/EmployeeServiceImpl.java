package com.ppd.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ppd.dao.EmployeeDao;
import com.ppd.entity.Employee;
import com.ppd.service.EmployeeService;

@Service("employeeService")
public class EmployeeServiceImpl implements EmployeeService {

	private EmployeeDao employeeDao;
	@Resource(name="employeeDao")
	public void setEmployeeDao(EmployeeDao employeeDao) {
		this.employeeDao = employeeDao;
	}
	public boolean add(Employee entity) {
		return employeeDao.add(entity);
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
	public Employee adminlogin(Employee emp) {
		return employeeDao.adminlogin(emp);
	}
	
	
}
