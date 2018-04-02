package com.team.mapping;

import java.util.ArrayList;

import com.team.model.Post;
import com.team.model.Post_comment;
import com.team.model.Reply;

public interface PostMap {
	
	public ArrayList<Post> get_posts();
	
	public Post get_post(int id);
	
	public void insert_post(Post post);
	
	public ArrayList<Post_comment> get_post_comment(int post_id);
	
	public void insert_post_comment(Post_comment post_comment);
	
	public ArrayList<Reply> get_replys(int comment_id);
	
	public void insert_reply(Reply reply);

}
