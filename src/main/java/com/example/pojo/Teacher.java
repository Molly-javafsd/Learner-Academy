package com.example.pojo;



import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;



@Entity
public class Teacher {
@Id
private int T_ID;
private String T_FirstName;
private String T_LastName;
private String T_DOB;
private String T_Address;
private long T_Phone;
private String Designation;


@OneToOne(cascade=CascadeType.ALL)
@JoinColumn(name="Sub_ID")
private Subject subject;
public Subject getSubject() {
	return subject;
}

public void setSubject(Subject subject) {
	this.subject = subject;
}

public int getT_ID() {
	return T_ID;
}

public void setT_ID(int t_ID) {
	T_ID = t_ID;
}

public String getT_FirstName() {
	return T_FirstName;
}

public void setT_FirstName(String t_FirstName) {
	T_FirstName = t_FirstName;
}

public String getT_LastName() {
	return T_LastName;
}

public void setT_LastName(String t_LastName) {
	T_LastName = t_LastName;
}

public String getT_DOB() {
	return T_DOB;
}

public void setT_DOB(String t_DOB) {
	T_DOB = t_DOB;
}

public String getT_Address() {
	return T_Address;
}

public void setT_Address(String t_Address) {
	T_Address = t_Address;
}

public long getT_Phone() {
	return T_Phone;
}

public void setT_Phone(long t_Phone) {
	T_Phone = t_Phone;
}

public String getDesignation() {
	return Designation;
}

public void setDesignation(String designation) {
	Designation = designation;
}

}
