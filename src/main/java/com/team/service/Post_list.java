package com.team.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.team.mapping.PostMap;
import com.team.model.Post;

@Service
public class Post_list {
	@Autowired
	PostMap postmap;
	                                              //得到全部帖子
	public ArrayList<Post> get_posts(){
		return postmap.get_posts();
	}
	
	public Post get_post(int id) {
		return postmap.get_post(id);
		}
	
	public ArrayList<Post> get_posts(String account){
		return postmap.get_post_account(account);
	}
	
	public void delete_post(int post_id) {
		postmap.delete_post(post_id);
	}
}
