package com.Dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.Entities.Student;
import com.Entities.Teacher;


@Component
public class TeacherDao {
	
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	
	public List<Object[]> getAll() {
		List<Object[]> list = (List<Object[]>) hibernateTemplate.find("select s.student_id,s.name,s.class_name,s.roll_no from Student s "
				+ "INNER JOIN s.teachers t where t.teacher_id ='"+1+"'");
		return list;
	}
	
	public List<Object[]> getTeacherName() {
		List<Object[]> list = (List<Object[]>) hibernateTemplate.find("select t.name from Student s "
				+ "INNER JOIN s.teachers t where t.teacher_id ='"+1+"'");
		return list;
	}
	
	public Teacher getName(int id) {
		Teacher s = hibernateTemplate.get(Teacher.class, id);
		return s;
	}
	

}
