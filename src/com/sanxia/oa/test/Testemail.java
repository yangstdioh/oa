package com.sanxia.oa.test;

import javax.mail.MessagingException;
import javax.mail.internet.AddressException;

import com.sanxia.oa.unit.Emailutil;

/**
 *作者：杨 赢
 *时间：2018年3月14日
 *
 */
public class Testemail {

	public static void main(String[] args) {
		        //接收邮件的地址
				String receiveAddress = "929626126@qq.com";
				//邮件主题
				String subjectString = "个人资料";
				//邮件内容
				String emailMsg = "哇哈哈哈";
				try {
					Emailutil.sendMail(receiveAddress,subjectString, emailMsg);
				} catch (AddressException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (MessagingException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}

	}

}
