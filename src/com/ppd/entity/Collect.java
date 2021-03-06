package com.ppd.entity;

import java.math.BigDecimal;
import java.util.Date;

/**
 * Collect entity. @author MyEclipse Persistence Tools
 */

public class Collect implements java.io.Serializable {

	// Fields

	private Integer collectid;
	private Integer inman;
	private Integer toman;
	private Integer regman;
	private BigDecimal allinvest;
	private BigDecimal allloan;
	private Integer project;
	private Integer completeproject;
	private Date time;

	// Constructors

	/** default constructor */
	public Collect() {
	}

	/** full constructor */
	public Collect(Integer inman, Integer toman, Integer regman, BigDecimal allinvest,
			BigDecimal allloan, Integer project, Integer completeproject, Date time) {
		this.inman = inman;
		this.toman = toman;
		this.regman = regman;
		this.allinvest = allinvest;
		this.allloan = allloan;
		this.project = project;
		this.completeproject = completeproject;
		this.time = time;
	}

	// Property accessors

	public Integer getCollectid() {
		return this.collectid;
	}

	public void setCollectid(Integer collectid) {
		this.collectid = collectid;
	}

	public Integer getInman() {
		return this.inman;
	}

	public void setInman(Integer inman) {
		this.inman = inman;
	}

	public Integer getToman() {
		return this.toman;
	}

	public void setToman(Integer toman) {
		this.toman = toman;
	}

	public Integer getRegman() {
		return this.regman;
	}

	public void setRegman(Integer regman) {
		this.regman = regman;
	}

	public BigDecimal getAllinvest() {
		return this.allinvest;
	}

	public void setAllinvest(BigDecimal allinvest) {
		this.allinvest = allinvest;
	}

	public BigDecimal getAllloan() {
		return this.allloan;
	}

	public void setAllloan(BigDecimal allloan) {
		this.allloan = allloan;
	}

	public Integer getProject() {
		return this.project;
	}

	public void setProject(Integer project) {
		this.project = project;
	}

	public Integer getCompleteproject() {
		return this.completeproject;
	}

	public void setCompleteproject(Integer completeproject) {
		this.completeproject = completeproject;
	}

	public Date getTime() {
		return this.time;
	}

	public void setTime(Date time) {
		this.time = time;
	}

}