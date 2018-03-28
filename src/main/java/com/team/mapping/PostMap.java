package com.team.mapping;

import java.util.ArrayList;

import com.team.model.Post;

public interface PostMap {
	
	public ArrayList<Post> get_posts();
	
	public Post get_post(int id);
	
	public void insert_post(Post post);

}
