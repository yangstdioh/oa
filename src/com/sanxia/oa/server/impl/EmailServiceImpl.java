package com.sanxia.oa.server.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sanxia.oa.bean.Email;
import com.sanxia.oa.bean.Message;
import com.sanxia.oa.bean.Page;
import com.sanxia.oa.bean.User;
import com.sanxia.oa.dao.EmailDao;
import com.sanxia.oa.server.EmailService;

/**
 *作者：杨 赢
 *时间：2018年3月15日
 *作用: 邮件发送实现类
 */
@Service
public class EmailServiceImpl implements EmailService {
    @Autowired
	private EmailDao emailDao;
	@Override
	public void addEmail(Email email) {
		// 发送新邮件
		emailDao.addEmail(email);
	}
	@Override
	public int selectEmailCount(int userId) {
		// 查询已发送邮件记录数
		return emailDao.selectEmailCount(userId);
	}
	@Override
	public List<Email> selectEmail(Page page) {
		// 查询已发送邮件记录
		return emailDao.selectEmail(page);
	}
	@Override
	public void delEmaiById(int emailId) {
		// 根据ID删除已发送邮件
		emailDao.delEmaiById(emailId);
	}
	@Override
	public List<User> selectUsers() {
		// 查询用户列表
		return emailDao.selectUsers();
	}
	@Override
	public void sendMessage(Message message) {
		// 发送新信息
		emailDao.sendMessage(message);
	}
	@Override
	public int selectMesCount(int userId) {
		// 查询是否有未读信息
		return emailDao.selectMesCount(userId);
	}
	@Override
	public List<Message> selectUnreadMes(Page page) {
		// 查询未读信息
		return emailDao.selectUnreadMes(page);
	}
	@Override
	public void messageReaded(int mesId) {
		// 将消息设为已读
		emailDao.messageReaded(mesId);
	}
	@Override
	public Message selectMessageById(int mesId) {
		// 根据ID查找信息
		return emailDao.selectMessageById(mesId);
	}

}
