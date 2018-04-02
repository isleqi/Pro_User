package com.team.model;

public class Reply {
	private int id;
	private int comment_id;
	private int post_id;
	private String from_account;
	private String to_account;
	private String content;
	private String type;
	private String date;
	private Users from_user;
	private Users to_user;
	
	public Reply(){
		
	}
	public Reply(String from_account,String to_account,String content,int post_id,int comment_id) {
		this.from_account=from_account;
		this.to_account=to_account;
		this.content=content;
		this.post_id=post_id;
		this.comment_id=comment_id;
	}
	
	public Users getFrom_user() {
		return from_user;
	}
	public void setFrom_user(Users from_user) {
		this.from_user=from_user;
	}
	public Users getTo_user() {
		return to_user;
	}
	public void setTo_user(Users to_user) {
		this.to_user=to_user;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id=id;
	}
	
	public int getComment_id() {
		return comment_id;
	}
	public void setComment_id(int comment_id) {
		this.comment_id=comment_id;
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
	
	public String getTo_account() {
		return to_account;
	}
	public void setTo_account(String to_account) {
		this.to_account=to_account;
	}
	
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type=type;
	}
	
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date=date;
	}
	
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content=content;
	}
	

}
