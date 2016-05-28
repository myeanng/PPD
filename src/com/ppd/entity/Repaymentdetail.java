package com.ppd.entity;

import java.util.Date;

/**
 * Repaymentdetail entity. @author MyEclipse Persistence Tools
 */

public class Repaymentdetail implements java.io.Serializable {

	// Fields

	private Integer repaymentdetailid;
	private Users users;
	private Loan loan;
	private Integer period;
	private Double rate;
	private Double principal;
	private Double interest;
	private Integer status;
	private Double fine;
	private Date shouldtime;
	private Date repaytime;

	// Constructors

	/** default constructor */
	public Repaymentdetail() {
	}

	/** full constructor */
	public Repaymentdetail(Users users, Loan loan, Integer period, Double rate,
			Double principal, Double interest, Integer status, Double fine,
			Date shouldtime, Date repaytime) {
		this.users = users;
		this.loan = loan;
		this.period = period;
		this.rate = rate;
		this.principal = principal;
		this.interest = interest;
		this.status = status;
		this.fine = fine;
		this.shouldtime = shouldtime;
		this.repaytime = repaytime;
	}

	// Property accessors

	public Integer getRepaymentdetailid() {
		return this.repaymentdetailid;
	}

	public void setRepaymentdetailid(Integer repaymentdetailid) {
		this.repaymentdetailid = repaymentdetailid;
	}

	public Users getUsers() {
		return this.users;
	}

	public void setUsers(Users users) {
		this.users = users;
	}

	public Loan getLoan() {
		return this.loan;
	}

	public void setLoan(Loan loan) {
		this.loan = loan;
	}

	public Integer getPeriod() {
		return this.period;
	}

	public void setPeriod(Integer period) {
		this.period = period;
	}

	public Double getRate() {
		return this.rate;
	}

	public void setRate(Double rate) {
		this.rate = rate;
	}

	public Double getPrincipal() {
		return this.principal;
	}

	public void setPrincipal(Double principal) {
		this.principal = principal;
	}

	public Double getInterest() {
		return this.interest;
	}

	public void setInterest(Double interest) {
		this.interest = interest;
	}

	public Integer getStatus() {
		return this.status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public Double getFine() {
		return this.fine;
	}

	public void setFine(Double fine) {
		this.fine = fine;
	}

	public Date getShouldtime() {
		return this.shouldtime;
	}

	public void setShouldtime(Date shouldtime) {
		this.shouldtime = shouldtime;
	}

	public Date getRepaytime() {
		return this.repaytime;
	}

	public void setRepaytime(Date repaytime) {
		this.repaytime = repaytime;
	}

}