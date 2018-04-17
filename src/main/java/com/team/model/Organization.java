package com.team.model;

public class Organization {
	private String account;
	private String address;
	private String  introduction;
	private Users user;
	
	public Organization () {
		
	}
	
	public  Organization(String account) {
		this.account=account;
	}
	
	public Organization(String account,String  address,String introduction) {
		this.account=account;
		this.address=address;
		this.introduction=introduction;
	}
	
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account=account;
	}
	
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address=address;
	}
	
	public String getIntroduction() {
		return introduction;
	}
	public void setIntroduction(String introduction) {
		this.introduction=introduction;
	}
	
	public Users getUser() {
		return user;
	}
	public void setUser(Users user) {
		this.user=user;
	}
	

}
