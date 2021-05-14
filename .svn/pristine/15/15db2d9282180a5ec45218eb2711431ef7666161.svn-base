package com.sanxia.oa.server;

import java.util.List;

import com.sanxia.oa.bean.Email;
import com.sanxia.oa.bean.Message;
import com.sanxia.oa.bean.Page;
import com.sanxia.oa.bean.User;

/**
 *作者：杨 赢
 *时间：2018年3月15日
 *作用: 邮件发送服务层
 */
public interface EmailService {
	/**
	 * 发送新邮件
	 */
	public void addEmail(Email email);
	/**
	 * 查询已发送邮件记录数
	 */
	public int selectEmailCount(int userId);
	/**
	 * 查询已发送邮件记录
	 */
	public List<Email> selectEmail(Page page);
	/**
	 * 根据ID删除已发送邮件
	 */
	public void delEmaiById(int emailId);
	/**
	 * 查询用户列表
	 */
	public List<User> selectUsers();
	/**
	 * 发送新信息
	 */
	public void sendMessage(Message message);
	/**
	 * 查询是否有未读信息
	 */
	public int selectMesCount(int userId);
	/**
	 * 查询未读信息
	 */
	public List<Message> selectUnreadMes(Page page);
	/**
	 * 将消息设为已读
	 */
	public void messageReaded(int mesId);
	/**
	 * 根据ID查找信息
	 */
	public Message selectMessageById(int mesId);
}
