package com.sanxia.oa.bean;

import java.sql.Date;

/**
 *作者：杨 赢
 *时间：2018年2月26日
 *作用:在线签到记录实体类
 */
public class SignInfor {
	//ID
	private int id;
	//用户ID
	private int userid;
	//用户名
	private String username;
	//用户MAC地址
	private String macAddr;
	//签到时间
	private String date;
	//签到日期
	private Date time;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getMacAddr() {
		return macAddr;
	}
	public void setMacAddr(String macAddr) {
		this.macAddr = macAddr;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}
	public SignInfor(int userid, String username, String macAddr, String date,
			Date time) {
		super();
		this.userid = userid;
		this.username = username;
		this.macAddr = macAddr;
		this.date = date;
		this.time = time;
	}
	public SignInfor() {
		super();
	}
	@Override
	public String toString() {
		return "SignInfor [id=" + id + ", userid=" + userid + ", username="
				+ username + ", macAddr=" + macAddr + ", date=" + date
				+ ", time=" + time + "]";
	}
	
}
