package com.team.model;

public class Users {
	private String account;
	private String password;
	private String name;
	private String phone;
	private String tx_src;
	private String industry;
	private int type;
	
	public Users() {
		
	}
	
	public Users(String account,String password,String name,String phone,String tx_src,String industry,int type) {
		this.account=account;
		this.password=password;
		this.name=name;
		this.phone=phone;
		this.tx_src=tx_src;
		this.type=type;
	}
	
	public String getAccount() {
		return account;
	}
	
	public void setAccount(String account) {
		this.account=account;
	}
	
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password=password;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name=name;
	}
	
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone=phone;
	}
	
	public String getTx_src() {
		return tx_src;
	}
	public void setTx_src(String tx_src) {
		this.tx_src=tx_src;
	}
	
	public String getIndustry() {
		return industry;
	}
	public void setIndustry(String industry) {
		this.industry=industry;
	}
	
	
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type=type;
	}
}





















