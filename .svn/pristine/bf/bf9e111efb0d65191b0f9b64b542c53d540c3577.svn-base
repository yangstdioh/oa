package com.sanxia.oa.control;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.sanxia.oa.bean.Announce;
import com.sanxia.oa.bean.Dept;
import com.sanxia.oa.bean.Page;
import com.sanxia.oa.server.DeptService;
import com.sanxia.oa.server.PublishServer;
import com.sanxia.oa.server.UserService;
/**
 *作者：杨 赢
 *时间：2018年2月5日
 *作用: 跳转页面
 */
@Controller
public class JumpPage {
	@Autowired
	private PublishServer publishServer;
	@Autowired
	private DeptService deptService;
	@Autowired
	private UserService userService;
	@RequestMapping("/admin")
	public String toAdmin(HttpServletRequest req){
		//获取公告内容
		Announce announce = publishServer.selectAnnounce();
		//将公告信息放到Session作用域中
		req.getSession().setAttribute("announce", announce);
		//跳转到管理员页面
		return "admin";
	}
	@RequestMapping("/addUserPage")
	public ModelAndView addUserPage(){
		// 实例化页面实例
		Page page = new Page();
		page.setPageSize(1000);
		// 调用服务层接口查询部门信息
		List<Dept> depts = deptService.selectAllDept(page);
		ModelAndView mView = new ModelAndView("addUserPage");
		mView.addObject("depts",depts);
		//跳转到添加用户界面
		return mView;
	}
	@RequestMapping("/login")
	public String toLogin(HttpServletRequest request){
		request.getSession().removeAttribute("user");
		//跳转到登录页面
		return "forward:/login.jsp";
	}
	@RequestMapping("/testpage")
	public String toTest(){
		//跳转到测试页面
		return "test";
	}
	@RequestMapping("/resetUserPwdPage")
	public String toresetUserPwdPage(){
		//跳转到用户密码找回页面
		return "resetUserPwdPage";
	}
	@RequestMapping("/success")
	public String toSuccess(HttpServletRequest req){
		//获取公告内容
		Announce announce = publishServer.selectAnnounce();
		
		//将公告信息放到Session作用域中
		req.getSession().setAttribute("announce", announce);
		//跳转到成功页面
		return "success";
	}
	@RequestMapping("/jumpaddDeptPage")
	public String jumpaddDeptPage(){
		//跳转到添加部门页面
		return "addDeptPage";
	}
	@RequestMapping("/jumpUpPublishPage")
	public String UpPublishPage(){
		//跳转到发布公告页面
		return "upPublishPage";
	}
	//跳转到个人首页
	@RequestMapping("/index")
	public String jumpIndex(HttpServletRequest req){
		//获取公告内容
		Announce announce = publishServer.selectAnnounce();
		List<Announce> announces = publishServer.selectCompanyAnnounce(); 
		//将公告信息放到Session作用域中
		req.getSession().setAttribute("announce", announce);
		req.getSession().setAttribute("announces", announces);
		return "index";
	}
	//跳转到个人密码重置页面
	@RequestMapping("/resetPersonPwdPage")
	public String jumpresetPersonPwdPage(){
		return "resetPersonPwdPage";
	}
	//跳转到添加MAC地址的页面
	@RequestMapping("/jumpaddmacpage")
	public String jumpaddmacpage(){
		return "addmacpage";
	}
	//跳转到修改MAC地址的页面
	@RequestMapping("/jumpupdatemacpage")
	public String jumpupdatemacpage(){
		return "updatemacpage";
	}
	//跳转到在线签到页面
	@RequestMapping("/jumpsignonline")
	public ModelAndView jumpsignonline(@RequestParam("username")String username){
		System.out.println(username);
		ModelAndView modelAndView = new ModelAndView();
		if(username==null){
			modelAndView.setViewName("forward:login.jsp");
			modelAndView.addObject("warm","登录过期,请重新登录");
			return modelAndView;
		}else{
			modelAndView.setViewName("signonlinepage");
			return modelAndView;
		}
	}
	//跳转到新增待办事项页面
	@RequestMapping("/jumpaddbacklogpage")
	public String jumpaddbacklogpage(){
		return "addbacklogpage";
	}
	//跳转到在线请假页面
	@RequestMapping("/jumpAddLeavePage")
	public String jumpAddLeavePage(){
		return "addLeavePage";
	}
	//跳转到邮件发送页面
	@RequestMapping("/jumpSendEmailPage")
	public String jumpSendEmailPage(){
		return "SendEmailPage";
	}
	//跳转到新增公文页面
	@RequestMapping("/jumpaddDocumentPage")
	public ModelAndView jumpaddDocumentPage(){
		Page page = new Page();
		page.setPageSize(1000);
		// 调用服务层接口查询部门信息
		List<Dept> depts = deptService.selectAllDept(page);
		ModelAndView mView = new ModelAndView("addDocumentPage");
		mView.addObject("depts",depts);
		//跳转到添加用户界面
		return mView;
	}
	@RequestMapping("/testPDF")
	public String testPDF(){
		return "testPDF";
	}
	//跳转到部门公告
	@RequestMapping("/jumpAddDeptAnnouncePage")
	public String jumpAddDeptAnnouncePage(){
		return "AddDeptAnnouncePage";
	}
}
