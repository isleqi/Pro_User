package com.team.mapping;

import org.springframework.stereotype.Repository;

import com.team.model.Users;


//用户表操作接口
@Repository
public interface UsersMap {
	
	public Users get_account(String account);
	
	public void insert_account(Users user);
	
	public void delete_account(Users user);
	
	public void update_account(Users user);

}
