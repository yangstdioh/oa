package com.sanxia.oa.bean;

import java.sql.Date;

/**
 *作者：杨 赢
 *时间：2018年3月14日
 *作用:邮件发送实体类
 */
public class Email {
	//邮件ID
	private int emailId;
	//用户ID
	private int userId;
	//发送账号
	private String username;
	//收件人
	private String receive;
	//邮箱地址
	private String emaiAddr;
	//日期
	private Date date;
	//邮件主题
	private String subject;
	//邮件内容
	private String emailContent;
	
	
	public int getEmailId() {
		return emailId;
	}
	public void setEmailId(int emailId) {
		this.emailId = emailId;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getReceive() {
		return receive;
	}
	public void setReceive(String receive) {
		this.receive = receive;
	}
	
	public String getEmaiAddr() {
		return emaiAddr;
	}
	public void setEmaiAddr(String emaiAddr) {
		this.emaiAddr = emaiAddr;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getEmailContent() {
		return emailContent;
	}
	public void setEmailContent(String emailContent) {
		this.emailContent = emailContent;
	}
	
	public Email(int userId, String username, String receive, String emaiAddr,
			Date date, String subject, String emailContent) {
		super();
		this.userId = userId;
		this.username = username;
		this.receive = receive;
		this.emaiAddr = emaiAddr;
		this.date = date;
		this.subject = subject;
		this.emailContent = emailContent;
	}
	public Email() {
		super();
	}
	@Override
	public String toString() {
		return "Email [emailId=" + emailId + ", userId=" + userId
				+ ", username=" + username + ", receive=" + receive
				+ ", emaiAddr=" + emaiAddr + ", date=" + date + ", subject="
				+ subject + ", emailContent=" + emailContent + "]";
	}
	
	
}
