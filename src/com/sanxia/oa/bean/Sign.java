package com.sanxia.oa.bean;
/**
 *作者：杨 赢
 *时间：2018年2月26日
 *作用:签到表实体类
 */
public class Sign {
	//ID
	private int signid;
	//用户名
	private String username;
	//MAC物理地址
	private String macaddress;
	public int getSignid() {
		return signid;
	}
	public void setSignid(int signid) {
		this.signid = signid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getMacaddress() {
		return macaddress;
	}
	public void setMacaddress(String macaddress) {
		this.macaddress = macaddress;
	}
	public Sign(String username, String macaddress) {
		super();
		this.username = username;
		this.macaddress = macaddress;
	}
	public Sign() {
		super();
	}
	@Override
	public String toString() {
		return "Sign [signid=" + signid + ", username=" + username
				+ ", macaddress=" + macaddress + "]";
	}
	
}
