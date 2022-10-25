package com.sparks.bean;

public class UserBean {

	@Override
	public String toString() {
		return "UserBean [fullNameString=" + fullNameString + ", accno=" + accno + ", balance=" + balance + ", gender="
				+ gender + "]";
	}

	private String fullNameString;
	private String accno;
	private int balance;
	private String gender;

	public String getFullNameString() {
		return fullNameString;
	}

	public void setFullNameString(String fullNameString) {
		this.fullNameString = fullNameString;
	}

	public String getAccno() {
		return accno;
	}

	public void setAccno(String accno) {
		this.accno = accno;
	}

	public int getBalance() {
		return balance;
	}

	public void setBalance(int balance) {
		this.balance = balance;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

}
