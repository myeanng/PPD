package com.ppd.service;

import com.ppd.entity.Employee;

public interface EmployeeService extends BaseService<Employee>{
	public Employee adminlogin(Employee emp);
}
