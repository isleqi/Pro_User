package com.team.model;

public class Article {
	private String a_account;
	private int id;
	private String title;
	private String content;
	private String industry;
	private String date;
	private Users user;
	
	public Article() {
		
	}
	
	public Article(String a_account,String title,String content,String industry) {
		this.a_account=a_account;
		this.title=title;
		this.content=content;
		this.industry=industry;
	}
	
	public String getA_account() {
		return a_account;
	}
	public void setA_account(String a_account) {
		this.a_account=a_account;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id=id;
	}
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title=title;
	}
	
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content=content;
	}
	
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date=date;
	}
	
	public String getIndustry() {
		return industry;
	}
	public void setIndustry(String industry) {
		this.industry=industry;
	}
	
	public Users getUser() {
		return user;
	}
	public void setUser(Users user) {
		this.user=user;
	}
}









