package com.ppd.entity;

import java.util.Date;


/**
 * Duein entity. @author MyEclipse Persistence Tools
 */

public class Duein implements java.io.Serializable {

	// Fields

	private Integer dueinid;
	private Users users;
	private Loan loan;
	private Integer period;
	private Double rate;
	private double principal;
	private double interest;
	private Integer status;
	private double fine;
	private Date shouldtime;

	// Constructors

	/** default constructor */
	public Duein() {
	}

	/** full constructor */
	public Duein(Users users, Loan loan, Integer period, Double rate,
			double principal, double interest, Integer status, double fine,
			Date shouldtime) {
		this.users = users;
		this.loan = loan;
		this.period = period;
		this.rate = rate;
		this.principal = principal;
		this.interest = interest;
		this.status = status;
		this.fine = fine;
		this.shouldtime = shouldtime;
	}

	// Property accessors

	public Integer getDueinid() {
		return this.dueinid;
	}

	public void setDueinid(Integer dueinid) {
		this.dueinid = dueinid;
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

	public double getPrincipal() {
		return this.principal;
	}

	public void setPrincipal(double principal) {
		this.principal = principal;
	}

	public double getInterest() {
		return this.interest;
	}

	public void setInterest(double interest) {
		this.interest = interest;
	}

	public Integer getStatus() {
		return this.status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public double getFine() {
		return this.fine;
	}

	public void setFine(double fine) {
		this.fine = fine;
	}

	public Date getShouldtime() {
		return this.shouldtime;
	}

	public void setShouldtime(Date shouldtime) {
		this.shouldtime = shouldtime;
	}

}