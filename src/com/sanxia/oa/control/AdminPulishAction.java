package com.sanxia.oa.control;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.sanxia.oa.bean.Announce;
import com.sanxia.oa.server.PublishServer;

/**
 *作者：杨 赢
 *时间：2018年2月21日
 *作用:公告管理控制层
 */
@Controller
public class AdminPulishAction {
   @Autowired
   private PublishServer publishServer;
   //更新公告
   @RequestMapping("/updatePublish.do")
   public String updatePublish(HttpServletRequest req,
		   //发布人
		   @RequestParam("publish")String publish,
		   //公告题目
		   @RequestParam("title")String title,
		   //公告内容
		   @RequestParam("content")String content ){
	       //将公告内容保存到实例对象中
	       Announce announce = new Announce(publish, title, content,0);
	       //获取当前时间
	       Date d = new Date();
	       java.sql.Date date = new java.sql.Date(d.getTime());
	       announce.setDate(date);
	       System.out.println("发布新公告");
	       //更新公告内容
	       publishServer.updatePublish(announce);
	       //获取公告内容
			Announce an = publishServer.selectAnnounce();
			//将公告信息放到Session作用域中
			req.getSession().setAttribute("announce", an);
	       return "success"; 
   }
   //新增部门公告
   @RequestMapping("/AddDeptAnnounce.do")
   public String addDeptAnnounce(HttpServletRequest req,
		   //发布人
		   @RequestParam("publish")String publish,
		   //公告题目
		   @RequestParam("title")String title,
		   //公告内容
		   @RequestParam("content")String content,
		   //部门Id
		   @RequestParam("deptId")int deptId){
	       //将公告内容保存到实例对象中
	       Announce announce = new Announce(publish, title, content,deptId);
	       //获取当前时间
	       Date d = new Date();
	       java.sql.Date date = new java.sql.Date(d.getTime());
	       announce.setDate(date);
	       System.out.println("发布新公告");
	       //发布公告内
	       publishServer.AddDeptAnnounce(announce);
	       //获取公告内容
			Announce an = publishServer.selectAnnounce();
			//将公告信息放到Session作用域中
			req.getSession().setAttribute("announce", an);
	       return "personSuccess"; 
      }
   //查询部门公告
   @RequestMapping("/selectDeptAnnounce")
   public ModelAndView selectDeptAnnounce(@RequestParam("deptId")int deptId){
	   //查询部门公告
	   List<Announce> announces = publishServer.selectDeptAnnounce(deptId);
	   ModelAndView modelAndView = new ModelAndView("DeptAnnouncePage");
	   modelAndView.addObject("announces",announces);
	   return modelAndView;
   }
   //根据ID查询部门公告
   @RequestMapping("/selectDeptAnnounceById")
   public ModelAndView selectDeptAnnounceById(@RequestParam("id")int id){
	   //查询部门公告
	  Announce announce = publishServer.selectDeptAnnounceById(id);
	   ModelAndView modelAndView = new ModelAndView("DeptAnnounceInfor");
	   modelAndView.addObject("announce",announce);
	   return modelAndView;
   }
   //发布公司公告
   @RequestMapping("/AddCompanyAnnounce.do")
   public String AddCompanyAnnounce(HttpServletRequest req,
		   //发布人
		   @RequestParam("publish")String publish,
		   //公告题目
		   @RequestParam("title")String title,
		   //公告内容
		   @RequestParam("content")String content,
		   //部门Id
		   @RequestParam("deptId")int deptId){
	       //将公告内容保存到实例对象中
	       Announce announce = new Announce(publish, title, content,deptId);
	       //获取当前时间
	       Date d = new Date();
	       java.sql.Date date = new java.sql.Date(d.getTime());
	       announce.setDate(date);
	       System.out.println("发布新公告");
	       //发布公告内
	       publishServer.AddDeptAnnounce(announce);
	       //获取公告内容
			Announce an = publishServer.selectAnnounce();
			//将公告信息放到Session作用域中
			req.getSession().setAttribute("announce", an);
	       return "success"; 
      }
  
   
}