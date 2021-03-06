package com.ppd.entity;

import java.sql.Date;

/**
 * Repaymentplan entity. @author MyEclipse Persistence Tools
 */

public class Repaymentplan implements java.io.Serializable {

	// Fields

	private Integer repaymentplanid;
	private Users users;
	private Loan loan;
	private Integer period;
	private Double rate;
	private Double principal;
	private Double interest;
	private Date shouldtime;

	// Constructors

	/** default constructor */
	public Repaymentplan() {
	}

	/** full constructor */
	public Repaymentplan(Users users, Loan loan, Integer period, Double rate,
			Double principal, Double interest, Date shouldtime) {
		this.users = users;
		this.loan = loan;
		this.period = period;
		this.rate = rate;
		this.principal = principal;
		this.interest = interest;
		this.shouldtime = shouldtime;
	}

	// Property accessors

	public Integer getRepaymentplanid() {
		return this.repaymentplanid;
	}

	public void setRepaymentplanid(Integer repaymentplanid) {
		this.repaymentplanid = repaymentplanid;
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

	public Date getShouldtime() {
		return this.shouldtime;
	}

	public void setShouldtime(Date shouldtime) {
		this.shouldtime = shouldtime;
	}

}