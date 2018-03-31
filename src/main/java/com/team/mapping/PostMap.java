package com.team.mapping;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import com.team.model.Post;

@Repository
public interface PostMap {
	
	public ArrayList<Post> get_posts();
	
	public Post get_post(int id);
	
	public void insert_post(Post post);

}
