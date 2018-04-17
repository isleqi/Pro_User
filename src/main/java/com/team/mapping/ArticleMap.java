package com.team.mapping;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import com.team.model.Article;

@Repository
public interface ArticleMap {
	
	public ArrayList<Article> get_articles();
	
	public Article get_article(int article_id);
	
	public ArrayList<Article> get_article_account(String a_account);
	
	public void insert_article(Article article);
	
	public void delete_article(int article_id);

}
