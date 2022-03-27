package com.bean;

public class customer {
private int id;
String name,emailid,phoneno,password,conform;

public int getId() {
	return id;
}

public void setId(int id) {
	this.id = id;
}

public String getName() {
	return name;
}

public void setName(String name) {
	this.name = name;
}

public String getEmailid() {
	return emailid;
}

public void setEmailid(String emailid) {
	this.emailid = emailid;
}

public String getPhoneno() {
	return phoneno;
}

public void setPhoneno(String phoneno) {
	this.phoneno = phoneno;
}

public String getPassword() {
	return password;
}

public void setPassword(String password) {
	this.password = password;
}

public String getConform() {
	return conform;
}

public void setConform(String conform) {
	this.conform = conform;
}

@Override
public String toString() {
	return "customer [id=" + id + ", name=" + name + ", emailid=" + emailid + ", phoneno=" + phoneno + ", password="
			+ password + ", conform=" + conform + "]";
}

}
