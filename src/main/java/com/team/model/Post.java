package com.team.model;

public class Post {
	private String id;
	private String account;
	private String title;
	private String date;
	private String content;
	private Users user;
	
	public Post() {
		
	}
	public Post(String account,String title,String content) {
		this.account=account;
		this.title=title;
		this.content=content;
	}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id=id;
	}
	
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account=account;
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
	
	public Users getUser() {
		return user;
	}
	public void setUser(Users user) {
		this.user=user;
	}

}









