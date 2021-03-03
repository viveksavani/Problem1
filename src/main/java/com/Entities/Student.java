package com.Entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class Student {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int student_id;
	private String class_name;
	private int roll_no;
	private String name;
	
	@ManyToOne
	@JoinColumn(name = "teacher_id")
	private Teacher teachers;
	
	
	public Student() {
		// TODO Auto-generated constructor stub
	}


	public Student(int student_id, String name, int roll_no, String class_name) {
		super();
		this.student_id = student_id;
		this.name = name;
		this.roll_no = roll_no;
		this.class_name = class_name;
	}


	public Teacher getTeachers() {
		return teachers;
	}

	public void setTeachers(Teacher teachers) {
		this.teachers = teachers;
	}

	public int getStudent_id() {
		return student_id;
	}

	public void setStudent_id(int student_id) {
		this.student_id = student_id;
	}



	public String getName() {
		return name;
	}



	public void setName(String name) {
		this.name = name;
	}



	public int getRoll_no() {
		return roll_no;
	}



	public void setRoll_no(int roll_no) {
		this.roll_no = roll_no;
	}



	public String getClass_name() {
		return class_name;
	}



	public void setClass_name(String class_name) {
		this.class_name = class_name;
	}



	@Override
	public String toString() {
		return "Student [student_id=" + student_id + ", name=" + name + ", roll_no=" + roll_no + ", class_name="
				+ class_name + "]";
	}
	
	
	
	
	

}
