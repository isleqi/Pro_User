package com.team.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.team.mapping.ArticleMap;
import com.team.model.Article;

@Service
public class Article_list {
	@Autowired
	ArticleMap articlemap;
	
	public void  insert_article(Article article) {
		articlemap.insert_article(article);
	}
	
	public ArrayList<Article> get_articles(){
		return articlemap.get_articles();
	}
	
	public Article get_article(int article_id) {
		return articlemap.get_article(article_id);
	}
	
	public ArrayList<Article> get_article_account(String a_account){
		return articlemap.get_article_account(a_account);
	}

}
