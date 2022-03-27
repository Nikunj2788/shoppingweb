package com.bean;


public class admin {
private int a_id;
String a_email,a_password;
public int getA_id() {
	return a_id;
}
public void setA_id(int a_id) {
	this.a_id = a_id;
}
public String getA_email() {
	return a_email;
}
public void setA_email(String a_email) {
	this.a_email = a_email;
}
public String getA_password() {
	return a_password;
}
public void setA_password(String a_password) {
	this.a_password = a_password;
}
@Override
public String toString() {
	return "admin [a_id=" + a_id + ", a_email=" + a_email + ", a_password=" + a_password + "]";
}

}
