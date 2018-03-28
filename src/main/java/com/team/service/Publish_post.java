package com.team.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.team.mapping.PostMap;
import com.team.model.Post;

@Service
public class Publish_post {
	@Autowired
	PostMap postmap;
	
	public void insert_post(Post post) {
		postmap.insert_post(post);
	}

}
