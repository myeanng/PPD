package com.ppd.entity;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Loan entity. @author MyEclipse Persistence Tools
 */

public class Loan implements java.io.Serializable {

	// Fields

	private Integer loanid;
	private Users users;
	private String loanuse;
	private String title;
	private Double loanmoney;
	private Integer loantime;
	private Integer service;
	private Double rate;
	private Integer class_;
	private String describe;
	private Double raise;
	private Date createtime;
	private Date accrualtime;
	private Integer status;
	private List linkmans = new ArrayList(0);
	private List repaymentdetails = new ArrayList(0);
	private List dueins = new ArrayList(0);
	private List materials = new ArrayList(0);
	private List investrecords = new ArrayList(0);
	private List bills = new ArrayList(0);
	private List repaymentplans = new ArrayList(0);

	// Constructors

	/** default constructor */
	public Loan() {
	}

	/** full constructor */
	public Loan(Users users, String loanuse, String title, Double loanmoney,
			Integer loantime, Integer service, Double rate, Integer class_,
			String describe, Double raise, Date createtime,
			Date accrualtime, Integer status, List linkmans,
			List repaymentdetails, List dueins, List materials, List investrecords,
			List bills, List repaymentplans) {
		this.users = users;
		this.loanuse = loanuse;
		this.title = title;
		this.loanmoney = loanmoney;
		this.loantime = loantime;
		this.service = service;
		this.rate = rate;
		this.class_ = class_;
		this.describe = describe;
		this.raise = raise;
		this.createtime = createtime;
		this.accrualtime = accrualtime;
		this.status = status;
		this.linkmans = linkmans;
		this.repaymentdetails = repaymentdetails;
		this.dueins = dueins;
		this.materials = materials;
		this.investrecords = investrecords;
		this.bills = bills;
		this.repaymentplans = repaymentplans;
	}

	// Property accessors

	public Integer getLoanid() {
		return this.loanid;
	}

	public void setLoanid(Integer loanid) {
		this.loanid = loanid;
	}

	public Users getUsers() {
		return this.users;
	}

	public void setUsers(Users users) {
		this.users = users;
	}

	public String getLoanuse() {
		return this.loanuse;
	}

	public void setLoanuse(String loanuse) {
		this.loanuse = loanuse;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Double getLoanmoney() {
		return this.loanmoney;
	}

	public void setLoanmoney(Double loanmoney) {
		this.loanmoney = loanmoney;
	}

	public Integer getLoantime() {
		return this.loantime;
	}

	public void setLoantime(Integer loantime) {
		this.loantime = loantime;
	}

	public Integer getService() {
		return this.service;
	}

	public void setService(Integer service) {
		this.service = service;
	}

	public Double getRate() {
		return this.rate;
	}

	public void setRate(Double rate) {
		this.rate = rate;
	}

	public Integer getClass_() {
		return this.class_;
	}

	public void setClass_(Integer class_) {
		this.class_ = class_;
	}

	public String getDescribe() {
		return this.describe;
	}

	public void setDescribe(String describe) {
		this.describe = describe;
	}

	public Double getRaise() {
		return this.raise;
	}

	public void setRaise(Double raise) {
		this.raise = raise;
	}

	public Date getCreatetime() {
		return this.createtime;
	}

	public void setCreatetime(Date createtime) {
		this.createtime = createtime;
	}

	public Date getAccrualtime() {
		return this.accrualtime;
	}

	public void setAccrualtime(Date accrualtime) {
		this.accrualtime = accrualtime;
	}

	public Integer getStatus() {
		return this.status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public List getLinkmans() {
		return this.linkmans;
	}

	public void setLinkmans(List linkmans) {
		this.linkmans = linkmans;
	}

	public List getRepaymentdetails() {
		return this.repaymentdetails;
	}

	public void setRepaymentdetails(List repaymentdetails) {
		this.repaymentdetails = repaymentdetails;
	}

	public List getDueins() {
		return this.dueins;
	}

	public void setDueins(List dueins) {
		this.dueins = dueins;
	}

	public List getMaterials() {
		return this.materials;
	}

	public void setMaterials(List materials) {
		this.materials = materials;
	}

	public List getInvestrecords() {
		return this.investrecords;
	}

	public void setInvestrecords(List investrecords) {
		this.investrecords = investrecords;
	}

	public List getBills() {
		return this.bills;
	}

	public void setBills(List bills) {
		this.bills = bills;
	}

	public List getRepaymentplans() {
		return this.repaymentplans;
	}

	public void setRepaymentplans(List repaymentplans) {
		this.repaymentplans = repaymentplans;
	}

}