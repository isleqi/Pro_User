package com.team.model;

public class News {
	private String title;
	private String date;
	private String dec;
	private String img_url;
	private String news_url;
	public News(String title,String date,String dec,String img_url,String news_url) {
		this.title=title;
		this.date=date;
		this.dec=dec;
		this.img_url=img_url;
		this.news_url=news_url;
	}
	
	public void setTitle(String title) {
		this.title=title;
	}
	
	public String getTitle() {
		return title;
	}
	public void setDate(String date) {
		this.date=date;
	}
	
	public String getDate() {
		return date;
	}
	public void setDec(String dec) {
		this.dec=dec;
	}
	
	public String getDec() {
		return dec;
	}
	public void setImg_url(String img_url) {
		this.img_url=img_url;
	}
	
	public String getImg_url() {
		return img_url;
	}
	public void setNews_url(String news_url) {
		this.news_url=news_url;
	}
	public String getNews_url() {
		return news_url;
	}

}
