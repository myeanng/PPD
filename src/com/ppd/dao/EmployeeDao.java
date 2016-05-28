package com.ppd.dao;


import com.ppd.entity.Employee;

public interface EmployeeDao extends BaseDao<Employee> {

	public Employee adminlogin(Employee entity);
}
