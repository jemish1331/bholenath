package com.example.demo;

import java.sql.Date;
import java.text.Format;
import java.text.SimpleDateFormat;

import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

import org.hibernate.validator.constraints.UniqueElements; 

@Entity

public class victim  {
@Id
private String eid;

private String fname;

private String lname;

private String password;

private String cpassword;
private int age;


public int getAge() 
{
	
	return age;
}
public void setAge(int age) {
	this.age = age;
}
public String getEid() {
	return eid;
}
public void setEid(String eid) {
	this.eid = eid;
}
public String getFname() {
	return fname;
}
public void setFname(String fname) {
	this.fname = fname;
}
public String getLname() {
	return lname;
}
public void setLname(String lname) {
	this.lname = lname;
}


public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getCpassword() {
	return cpassword;
}
public void setCpassword(String cpassword) {
	this.cpassword = cpassword;
}
@Override
public String toString() {
	return "victim [eid=" + eid + ", fname=" + fname + ", lname=" + lname +  ", password=" + password
			+ ", cpassword=" + cpassword + ", age=" + age + "]";
}


}


