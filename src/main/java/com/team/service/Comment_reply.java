package com.team.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.team.mapping.PostMap;
import com.team.model.Post_comment;
import com.team.model.Reply;

@Service
public class Comment_reply {
	@Autowired
	PostMap postmap;
	
	public void insert_comment(Post_comment comment) {
		postmap.insert_post_comment(comment);
	}
	
	public ArrayList<Post_comment>  get_comments(int post_id){
		
		return postmap.get_post_comment(post_id);
		
	}
	
	public ArrayList<Reply> get_replys(int comment_id){
		return postmap.get_replys(comment_id);
	}
	
	public void insert_reply(Reply reply) {
		postmap.insert_reply(reply);
	}
 
}
