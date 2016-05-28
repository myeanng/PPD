package com.ppd.entity;

import java.util.Date;
import java.util.ArrayList;
import java.util.List;

/**
 * Employee entity. @author MyEclipse Persistence Tools
 */

public class Employee implements java.io.Serializable {

	// Fields

	private Integer empid;
	private Integer roleid;
	private String empname;
	private String tel;
	private String address;
	private String loginpassword;
	private Date createtime;
	private Date lastlogintime;
	private String lastloginip;
	private Integer status;
	private String ic;
	private List operations = new ArrayList(0);

	// Constructors

	/** default constructor */
	public Employee() {
	}

	public Integer getEmpid() {
		return empid;
	}

	public void setEmpid(Integer empid) {
		this.empid = empid;
	}

	public Integer getRoleid() {
		return roleid;
	}

	public void setRoleid(Integer roleid) {
		this.roleid = roleid;
	}

	public String getEmpname() {
		return empname;
	}

	public void setEmpname(String empname) {
		this.empname = empname;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getLoginpassword() {
		return loginpassword;
	}

	public void setLoginpassword(String loginpassword) {
		this.loginpassword = loginpassword;
	}

	public Date getCreatetime() {
		return createtime;
	}

	public void setCreatetime(Date createtime) {
		this.createtime = createtime;
	}

	public Date getLastlogintime() {
		return lastlogintime;
	}

	public void setLastlogintime(Date lastlogintime) {
		this.lastlogintime = lastlogintime;
	}

	public String getLastloginip() {
		return lastloginip;
	}

	public void setLastloginip(String lastloginip) {
		this.lastloginip = lastloginip;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public String getIc() {
		return ic;
	}

	public void setIc(String ic) {
		this.ic = ic;
	}

	public List getOperations() {
		return operations;
	}

	public void setOperations(List operations) {
		this.operations = operations;
	}

	public Employee(Integer empid, Integer roleid, String empname, String tel,
			String address, String loginpassword, Date createtime,
			Date lastlogintime, String lastloginip, Integer status, String ic,
			List operations) {
		super();
		this.empid = empid;
		this.roleid = roleid;
		this.empname = empname;
		this.tel = tel;
		this.address = address;
		this.loginpassword = loginpassword;
		this.createtime = createtime;
		this.lastlogintime = lastlogintime;
		this.lastloginip = lastloginip;
		this.status = status;
		this.ic = ic;
		this.operations = operations;
	}
	
}
	