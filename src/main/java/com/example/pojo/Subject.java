package com.example.pojo;


import javax.persistence.Entity;
import javax.persistence.Id;


@Entity
public class Subject {
@Id
private int Sub_ID;
private String Subject_Name;
public int getSub_ID() {
	return Sub_ID;
}
public void setSub_ID(int sub_ID) {
	Sub_ID = sub_ID;
}
public String getSubject_Name() {
	return Subject_Name;
}
public void setSubject_Name(String subject_Name) {
	Subject_Name = subject_Name;
}




}
