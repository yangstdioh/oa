package com.sanxia.oa.bean;

import java.sql.Date;

public class User {
	//用户ID
	private int id;
	//用户名
	private String username;
	//密码
	private String password;
    //真实姓名
	private String realname;
	//年龄
	private Integer age;
	//性别
	private char   sex;
	//部门Id
	private int deptId;
	//生日
	private Date birthday;
	//电话号码
	private String phonenumber;
	//籍贯
	private String address;
	//邮箱地址
	private String email;
	//婚姻状况
	private String ismarriage;
	//角色
	private int roleId;
	
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	public String getPhonenumber() {
		return phonenumber;
	}
	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getIsmarriage() {
		return ismarriage;
	}
	public void setIsmarriage(String ismarriage) {
		this.ismarriage = ismarriage;
	}
	public int getDeptId() {
		return deptId;
	}
	public void setDeptId(int deptId) {
		this.deptId = deptId;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getRealname() {
		return realname;
	}
	public void setRealname(String realname) {
		this.realname = realname;
	}
	public Integer getAge() {
		return age;
	}
	public void setAge(Integer age) {
		this.age = age;
	}
	public char getSex() {
		return sex;
	}
	public void setSex(char sex) {
		this.sex = sex;
	}
	
	public int getRoleId() {
		return roleId;
	}
	public void setRoleId(int roleId) {
		this.roleId = roleId;
	}
	
	public User(String username, String password, String realname, Integer age,
			char sex, int deptId, Date birthday, String phonenumber,
			String address, String email, String ismarriage) {
		super();
		this.username = username;
		this.password = password;
		this.realname = realname;
		this.age = age;
		this.sex = sex;
		this.deptId = deptId;
		this.birthday = birthday;
		this.phonenumber = phonenumber;
		this.address = address;
		this.email = email;
		this.ismarriage = ismarriage;
	}
	public User(String realname, Integer age, char sex, int deptId,
			Date birthday, String phonenumber, String address, String email,
			String ismarriage) {
		super();
		this.realname = realname;
		this.age = age;
		this.sex = sex;
		this.deptId = deptId;
		this.birthday = birthday;
		this.phonenumber = phonenumber;
		this.address = address;
		this.email = email;
		this.ismarriage = ismarriage;
	}
	public User(String username, String password, String realname, Integer age,
			char sex, int deptId, Date birthday, String phonenumber,
			String address, String email, String ismarriage, int roleId) {
		super();
		this.username = username;
		this.password = password;
		this.realname = realname;
		this.age = age;
		this.sex = sex;
		this.deptId = deptId;
		this.birthday = birthday;
		this.phonenumber = phonenumber;
		this.address = address;
		this.email = email;
		this.ismarriage = ismarriage;
		this.roleId = roleId;
	}
	public User(String username, String password) {
		super();
		this.username = username;
		this.password = password;
	}
	
	public User(String username) {
		super();
		this.username = username;
	}
	public User() {
		super();
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", username=" + username + ", password="
				+ password + ", realname=" + realname + ", age=" + age
				+ ", sex=" + sex + ", deptId=" + deptId + ", birthday="
				+ birthday + ", phonenumber=" + phonenumber + ", address="
				+ address + ", email=" + email + ", ismarriage=" + ismarriage
				+ ", roleId=" + roleId + "]";
	}
	
}
