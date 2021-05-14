package com.sanxia.oa.control;

import java.io.IOException;
import java.io.Writer;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.mail.MessagingException;
import javax.mail.internet.AddressException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.sanxia.oa.bean.Email;
import com.sanxia.oa.bean.Message;
import com.sanxia.oa.bean.Page;
import com.sanxia.oa.bean.User;
import com.sanxia.oa.server.EmailService;
import com.sanxia.oa.unit.Emailutil;

/**
 *作者：杨 赢
 *时间：2018年3月14日
 *作用: 邮件发送控制层
 */
@Controller
public class EailAction {
	@Autowired
	private EmailService emailService;
	//发送邮件
	@RequestMapping("/sendEmail.do")
	public String sendEmail(@RequestParam("userId")int userId,
			@RequestParam("username")String username,
			@RequestParam("receive")String receive,
			@RequestParam("emaiAddr")String emaiAddr,
			@RequestParam("subject")String subject,
			@RequestParam("emailContent")String emailContent){
		try {
			Emailutil.sendMail(emaiAddr,subject, emailContent);
		} catch (AddressException e) {
			
			e.printStackTrace();
		} catch (MessagingException e) {
			
			e.printStackTrace();
		}
		//获取当前时间
		Date d= new Date();
		java.sql.Date date = new java.sql.Date(d.getTime());
		//将表单信息保存到实例对象中
		Email email = new Email(userId, username, receive, emaiAddr, date, subject, emailContent);
		emailService.addEmail(email);
		return "personSuccess";	
	}
	//查询已发送邮件
	@RequestMapping("/selectEmail")
	public ModelAndView selectEmai(@RequestParam("userid")int userId,
			@RequestParam("pageNow")int pageNow){
		Page page = new Page();
		//设置当前页面
		page.setPageNow(pageNow);
		//设置开始数字
		page.setStartNum((pageNow-1)*page.getPageSize());
		//将用户ID保存到页面实例中
		page.setTotalCount(userId);
		int counts = emailService.selectEmailCount(userId);
		if (counts % page.getPageSize() == 0) {
			// 当数据总数与没有数据条数相除的余数为零
			page.setPageCount(counts / page.getPageSize());
		} else {
			page.setPageCount(counts / page.getPageSize() + 1);
		}
		List<Email> emails = emailService.selectEmail(page);
		//实例化视图解析器
		ModelAndView modelAndView = new ModelAndView("alreadySendEmailPage");
		modelAndView.addObject("emails",emails);
		modelAndView.addObject("page",page);
		return modelAndView;
	}
	//根据ID删除已发送邮件
	@RequestMapping("/deleteemailById")
	public ModelAndView deleteemailById(@RequestParam("userid")int userid,
			@RequestParam("emailId")int emailId,
			@RequestParam("pageNow")int pageNow){
		emailService.delEmaiById(emailId);
		return selectEmai(userid,pageNow);
	}
	  //跳转到在线聊天页面
		@RequestMapping("/jumpSendMessagePage")
		public ModelAndView jumpSendMessagePage(){
			List<User> users = emailService.selectUsers();
			//实例化视图解析器
			ModelAndView modelAndView = new ModelAndView("SendMessagePage");
			modelAndView.addObject("users",users);
			return modelAndView;
		}
		//发送信息
		@RequestMapping("/sendMessage.do")
		public String sendMessage(@RequestParam("userId")int sendId,
				@RequestParam("username")String sendName,
				@RequestParam("receiverId")int receiveId,
				@RequestParam("message")String message){
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			String time = sdf.format(new Date());
			//获取信息实例
			Message mes= new Message(sendId, sendName, time, receiveId, message,1);
			System.out.println(mes);
		    emailService.sendMessage(mes);
			return "personSuccess";
		}
		//查询是否有未读信息
		@RequestMapping("/selectMesCount")
		public void selectMesCount(HttpServletRequest request,
				HttpServletResponse response) throws IOException{
			//获取页面数据
			String a = request.getParameter("mesUid");
			int userId = Integer.parseInt(a);
			int count = emailService.selectMesCount(userId);
			Writer writer = response.getWriter();
			if(count!=0){
				writer.write("(有未读信息)");
			}else{
				writer.write("&nbsp;");
			}
			writer.flush();
			writer.close();
		}
		//查询未读信息
		@RequestMapping("/selectUnreadMes")
		public ModelAndView selectUnreadMes(@RequestParam("receiveId")int receiveId,
				@RequestParam("pageNow")int pageNow){
			Page page = new Page();
			//设置当前页面
			page.setPageNow(pageNow);
			//设置开始数字
			page.setStartNum((pageNow-1)*page.getPageSize());
			//将用户ID保存到页面实例中
			page.setTotalCount(receiveId);
			int counts = emailService.selectMesCount(receiveId);
			if (counts % page.getPageSize() == 0) {
				// 当数据总数与没有数据条数相除的余数为零
				page.setPageCount(counts / page.getPageSize());
			} else {
				page.setPageCount(counts / page.getPageSize() + 1);
			}
			List<Message> messagess = emailService.selectUnreadMes(page);
			ModelAndView modelAndView = new ModelAndView("UnreadMesPage");
			modelAndView.addObject("messagess", messagess);
			modelAndView.addObject("page",page);
			return modelAndView;
		}
		//将消息设为已读
		@RequestMapping("/messageReaded")
		public ModelAndView messageReaded(@RequestParam("mesId")int mesId,
				@RequestParam("receiveId")int receiveId,
				@RequestParam("pageNow")int pageNow){
			emailService.messageReaded(mesId);
			return selectUnreadMes(receiveId,pageNow);
		}
	  //跳转到聊天回复页面
	  @RequestMapping("/jumpReplyMessagePage")
	  public ModelAndView jumpReplyMessagePage(@RequestParam("mesId")int mesId){
		  //根据ID查找信息
		  Message message = emailService.selectMessageById(mesId);
		  ModelAndView modelAndView = new ModelAndView("replyMessagePage");
		  modelAndView.addObject("message",message);
		  return modelAndView;
	  }
}
