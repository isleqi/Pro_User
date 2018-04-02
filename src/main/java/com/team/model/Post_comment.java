package com.team.model;

import java.util.ArrayList;

public class Post_comment {
	private int id;
	private int post_id;
	private String from_account;
	private String content;
	private String date;
	private Users user;
	public ArrayList<Reply> replys;
	
	public Post_comment() {
		
	}
	
	public Post_comment(int post_id,String from_account,String content) {
		this.post_id=post_id;
		this.from_account=from_account;
		this.content=content;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id=id;
	}
	
	public int getPost_id() {
		return post_id;
	}
	public void setPost_id(int post_id) {
		this.post_id=post_id;
	}
	
	public String getFrom_account() {
		return from_account;
	}
	public void setFrom_account(String from_account) {
		this.from_account=from_account;
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
	
	/*public ArrayList<Reply> getReply() {
		return replys;
	}
	public void setreply(ArrayList<Reply> replys) {
		this.replys=replys;
	}*/
}













