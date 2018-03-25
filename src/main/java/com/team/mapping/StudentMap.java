package com.team.mapping;

import org.springframework.stereotype.Repository;

import com.team.model.Student;

//学员表操作接口
@Repository
public interface StudentMap {
	
	public Student getStudent(String account);
	
	public void insertStudent(Student student);
	

}
