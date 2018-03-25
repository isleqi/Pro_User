package com.team.model;

public class Demand {
	private int id;
	private String author;
	private String title;
	private String content;
	private String date;
	private Users user;
	
	public int getId(){
		return id;
	}
	public void setId(int id) {
		this.id=id;
	}
	
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author=author;
	}
	
	public String getTitle () {
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
	
	
	public String date() {
		return date;
	}
	public void getDate(String date) {
		this.date=date;
	}
	
	public Users getUsers() {
		return user;
	}
	public void setUsers(Users user) {
		this.user=user;
	}

}









