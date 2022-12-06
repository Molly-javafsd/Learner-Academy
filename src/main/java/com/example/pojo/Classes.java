package com.example.pojo;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;


@Entity
public class Classes {

@Id
private int Class_ID;
private String Class_Name;

@OneToOne(cascade=CascadeType.ALL)
@JoinColumn(name="Subject_Name")
private Subject subject;
@OneToOne(cascade=CascadeType.ALL)
@JoinColumn(name="T_FirstName")
private Teacher teacher;



public Subject getSubject() {
	return subject;
}

public void setSubject(Subject subject) {
	this.subject = subject;
}

public Teacher getTeacher() {
	return teacher;
}

public void setTeacher(Teacher teacher) {
	this.teacher = teacher;
}

public int getClass_ID() {
	return Class_ID;
}

public void setClass_ID(int class_ID) {
	Class_ID = class_ID;
}

public String getClass_Name() {
	return Class_Name;
}

public void setClass_Name(String class_Name) {
	Class_Name = class_Name;
}
}
