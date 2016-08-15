package org.ankang.tianmao.entity;

import java.io.Serializable;

public class UserInfo implements Serializable{
	private Integer user_id;
	private String user_name;
	private String password;
	private String mail;
	private String right;
	
	//用于接收提交验证码信息
	private String code;
	public String getCode() {
		return code;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public Integer getUser_id() {
		return user_id;
	}
	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getRight() {
		return right;
	}
	public void setRight(String right) {
		this.right = right;
	}

}
