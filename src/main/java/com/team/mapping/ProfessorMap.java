package com.team.mapping;

import org.springframework.stereotype.Repository;

import com.team.model.Professor;


//专家表操作接口
@Repository
public interface ProfessorMap {
	public Professor get_professor(String account);
	
	public void insert_proferss(Professor professor);
	

}
