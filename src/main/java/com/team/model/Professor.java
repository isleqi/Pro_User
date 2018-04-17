package com.team.model;

public class Professor {
	private String account;
	private String  introduction;
	private Users user;
	
	public Professor() {
		
	}
	
	public Professor(String account) {
		this.account=account;
	}
	
	public Professor(String account,String  introduction) {
		this.account=account;
		this.introduction=introduction;
	}
	
	public String getAccount() {
		return account;
	}
	
	public void setAccount(String account) {
		this.account=account;
	}
	
	public String getIntroduction() {
		return  introduction;
	}
	
	public void setIntroduction(String  introduction) {
		this. introduction= introduction;
	}
	
	public Users getUser() {
		return user;
	}
	public void setUser(Users user) {
		this.user=user;
	}

}
