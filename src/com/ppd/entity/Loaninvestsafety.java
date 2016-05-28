package com.ppd.entity;

public class Loaninvestsafety {

	private Loan loan;
	private Safety safety;
	public Loan getLoan() {
		return loan;
	}
	public void setLoan(Loan loan) {
		this.loan = loan;
	}
	public Safety getSafety() {
		return safety;
	}
	public void setSafety(Safety safety) {
		this.safety = safety;
	}
	public Loaninvestsafety(Loan loan, Safety safety) {
		super();
		this.loan = loan;
		this.safety = safety;
	}
	public Loaninvestsafety() {
		super();
	}
	
}
