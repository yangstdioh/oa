package com.sanxia.oa.unit;
/**
 *作者：杨 赢
 *时间：2018年3月14日
 *作用:邮件发送
 */
import java.util.Properties;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMessage.RecipientType;

public class Emailutil {

	public static void sendMail(String receiveAddress,String subject, String emailMsg)
			throws AddressException, MessagingException {
		// 用于封装邮件发送的属性
		Properties props = new Properties();
		//设置发送的协议
		props.setProperty("mail.transport.protocol", "SMTP");//固定的
		//设置发送邮件的服务器
		props.setProperty("mail.host", "smtp.163.com");//第一个参数是固定的，第二个参数表示发送邮件服务器的地址
		props.setProperty("mail.smtp.auth", "true");// 指定验证为true【固定的】

		// 创建验证器
		Authenticator auth = new Authenticator() {
			public PasswordAuthentication getPasswordAuthentication() {
				//设置发送人的帐号和密码
				String account = "13436022456@163.com";//登录邮箱的账号
				String passsword = "bnmass12345";//不是登陆的密码 是pop3/smtp 这个你们设置的授权密码
				return new PasswordAuthentication(account, passsword);
			}
		};

		//创建一个session【创建javamail与Java程序的会话】 
		Session session = Session.getInstance(props, auth);

		// 创建一个Message，它相当于是邮件内容
		Message message = new MimeMessage(session);

		//设置发送者
		String sendAddress = "13436022456@163.com";
		message.setFrom(new InternetAddress(sendAddress));//发送人的信息

		//设置发送方式与接收者
		message.setRecipient(RecipientType.TO, new InternetAddress(receiveAddress));

		message.setSubject(subject);//【固定的】
		//设置邮件内容
		message.setContent(emailMsg, "text/html;charset=utf-8");

		// 3.创建 Transport用于将邮件发送
		Transport.send(message);
	}
}

