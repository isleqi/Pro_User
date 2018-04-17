package com.team.mapping;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import com.team.model.Professor;


//专家表操作接口
@Repository
public interface ProfessorMap {
	public Professor getProfessor(String account);
	
	public ArrayList<Professor> getProfessors();
	
	public void insertProfessor(Professor professor);
	
	public void updateProfessor(Professor professor);
	

}
