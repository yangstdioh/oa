package com.sanxia.oa.bean;
/**
 *作者：杨 赢
 *时间：2018年2月4日
 *作用: 管理员实体类
 */
public class Admin {
	//用户名
	private String name;
	//密码
	private String password;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Admin(String name, String password) {
		super();
		this.name = name;
		this.password = password;
	}
	public Admin() {
		super();
	}
	@Override
	public String toString() {
		return "Admin [name=" + name + ", password=" + password + "]";
	}
	
}
