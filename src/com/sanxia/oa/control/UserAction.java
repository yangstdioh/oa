package com.sanxia.oa.control;

import java.io.IOException;
import java.sql.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.sanxia.oa.bean.Announce;
import com.sanxia.oa.bean.Dept;
import com.sanxia.oa.bean.Leave;
import com.sanxia.oa.bean.Page;
import com.sanxia.oa.bean.User;
import com.sanxia.oa.server.DeptService;
import com.sanxia.oa.server.PublishServer;
import com.sanxia.oa.server.UserService;
import com.sanxia.oa.unit.MD5;

/**
 *作者：杨 赢
 *时间：2018年2月22日
 *作用:用户控制层
 */
@Controller
public class UserAction {
	@Autowired
	private PublishServer publishServer;
	@Autowired
	private UserService userService;
	@Autowired
	private DeptService deptService;
	//查看个人信息
	@RequestMapping("/selectPersonInfor.do")
	public ModelAndView selectPersonInfor(@RequestParam("id")int id,
			@RequestParam("deptId")int deptId){
		// 实例化页面实例
	    Page page = new Page();
	    page.setPageSize(1000);
	    // 调用服务层接口查询部门信息
	 	List<Dept> depts = deptService.selectAllDept(page);
		//根据ID查找用户
		User user = userService.selectUserById(id);
		//根据ID查找部门
		Dept dept = deptService.selectDeptById(deptId);
		ModelAndView modelAndView = new ModelAndView("personInforPage");
		//将实例对象添加到视图解析器中
		modelAndView.addObject("user",user);
		modelAndView.addObject("dept",dept);
		modelAndView.addObject("depts",depts);
		System.out.println("查看个人信息");
		return modelAndView;
	}
	//重置个人登录密码
	@RequestMapping("/resetPersonPwd.do")
	public ModelAndView resetPersonPwd(@RequestParam("oldpassword")String oldpassword,
			@RequestParam("newpassword")String newpassword,
			@RequestParam("username")String username,
			HttpServletRequest req){
		User user = userService.selectUserByName(username);
		System.out.println(user);
		//获取公告内容
		Announce announce = publishServer.selectAnnounce();
		//将公告信息放到Session作用域中
		req.getSession().setAttribute("announce", announce);
		ModelAndView modelAndView = new ModelAndView();
		if(!user.getPassword().equals(new MD5().encrypt(oldpassword))){
			modelAndView.addObject("oldpwdmes","密码输入错误");
			modelAndView.setViewName("resetPersonPwdPage");
			return modelAndView;
		}else{
			System.out.println("重置个人密码");
			//将用户对象放到session作用域中
			req.getSession().setAttribute("user", user);
			user.setPassword(new MD5().encrypt(newpassword));
			userService.resetUserPwd(user);
			System.out.println(user);
			modelAndView.setViewName("personSuccess");
			return modelAndView;
		}
	}
	//修改个人信息
	@RequestMapping("/updatePersonInfor.do")
	public String updatePersonInfor(
			//用户名
			@RequestParam("username")String username,
			//真实姓名
			@RequestParam("realname")String realname,
			//年龄
			@RequestParam("age") Integer age,
			//性别
			@RequestParam("sex") char sex,
			//部门Id
			@RequestParam("deptId")int deptId,
			//生日
			@RequestParam("birthday")Date birthday,
			//电话号码
			@RequestParam("phonenumber")String phonenumber,
			//籍贯
			@RequestParam("address")String address,
			//邮箱
			@RequestParam("email")String email,
			//婚姻状况
			@RequestParam("ismarriage")String ismarriage,
			//角色id
			@RequestParam("role")int roleId){
		String pwd = "";
		//将表单信息保存到用户实力中
		User user = new User(username, pwd, realname, age, sex, deptId, birthday, phonenumber, address, email, ismarriage,roleId);
		System.out.println(user);
		System.out.println("修改个人信息");
		//调用服务层保存用户信息
		userService.updateUser(user);
		return "personSuccess";
	}
	//添加在线请假
	@RequestMapping("/addLeave.do")
	public String addLeave(@RequestParam("userId")int userId,
			@RequestParam("deptId")int deptId,
			@RequestParam("realName")String realName,
			@RequestParam("startTime")String startTime,
			@RequestParam("endTime")String endTime,
			@RequestParam("leaveReason")String leaveReason){
		Leave leave = new Leave(userId, deptId, realName, startTime, endTime, leaveReason);
		System.out.println("在线请假");
		userService.addLeave(leave);
		return "personSuccess";
	}
	//查看请假信息
	@RequestMapping("/selectLeave")
	public ModelAndView selectLeave(@RequestParam("pageNow")int pageNow,
			@RequestParam("userid")int userid	){
		Page page = new Page();
		//设置当前页数
		page.setPageNow(pageNow);
		//设置开始数字
		page.setStartNum((pageNow-1)*page.getPageSize());
		//保存用户Id到page对象中
		page.setTotalCount(userid);
		int counts = userService.selectLeaveCount(userid);
		if (counts % page.getPageSize() == 0) {
			// 当数据总数与没有数据条数相除的余数为零
			page.setPageCount(counts / page.getPageSize());
		} else {
			page.setPageCount(counts / page.getPageSize() + 1);
		}
		//查询待办事项
		List<Leave> Leaves = userService.selectLeave(page);
		//实例化视图解析器
		ModelAndView modelAndView = new ModelAndView("leaveInforPage");
		modelAndView.addObject("Leaves",Leaves);
		modelAndView.addObject("page",page);
		return modelAndView;
	}
	//删除请假信息
	@RequestMapping("/deleteLeaveByLeaveId")
	public ModelAndView deleteLeaveByLeaveId(@RequestParam("LeaveId")int leaveId,
			@RequestParam("userId")int userid	){
		userService.delLeaveByLeaveId(leaveId);
		return selectLeave(1,userid);
	}
	//跳转页面
	@RequestMapping("/jumpLeavePage")
	public ModelAndView jumpLeavePage(@RequestParam("pageNow")int pageNow,
			@RequestParam("userid")int userid	){
		return selectLeave(pageNow,userid);
	}
	//根据ID查找请假信息
	@RequestMapping("/selecteaveByLeaveId")
	public ModelAndView selecteaveByLeaveId(@RequestParam("leaveId")int leaveId){
		Leave leave = userService.selectLeaveByLeaveId(leaveId);
		//实例化视图解析器
		ModelAndView modelAndView = new ModelAndView("updateLeavePage");
		modelAndView.addObject("leave",leave);
		return modelAndView;
	}
	   //修改在线请假
		@RequestMapping("/updateLeave.do")
		public String updateLeave(@RequestParam("userId")int userId,
				@RequestParam("realName")String realName,
				@RequestParam("startTime")String startTime,
				@RequestParam("endTime")String endTime,
				@RequestParam("leaveReason")String leaveReason){
			Leave leave = new Leave(userId, 1, realName, startTime, endTime, leaveReason);
			userService.updateLeave(leave);
			return "personSuccess";
		}
		//查询请假记录数
		public void selectLeaveCounts(@RequestParam("deptId")int deptId,
				HttpServletResponse response,
				HttpServletRequest request) throws IOException{
			request.setCharacterEncoding("UTF-8");
			response.setCharacterEncoding("UTF-8");
			response.setHeader("Content-Type","text/html;charset=utf-8");
		}
		//查询待审批请假信息
		@RequestMapping("/selectLeaveBydeptId")
		public ModelAndView selectLeaveBydeptId(@RequestParam("deptId")int deptId,
				@RequestParam("pageNow")int pageNow){
			Page page = new Page();
			//将部门编号保存到页面对象中
			page.setTotalCount(deptId);
			page.setStartNum((pageNow-1)*page.getPageSize());
			page.setPageNow(pageNow);
			int count = userService.selectLeaveCounts(deptId);
			if (count % page.getPageSize() == 0) {
				// 当数据总数与没有数据条数相除的余数为零
				page.setPageCount(count / page.getPageSize());
			} else {
				page.setPageCount(count / page.getPageSize() + 1);
			}
			List<Leave> leaves = userService.selectLeaveBydeptId(page);
			//实例化视图解析器
			ModelAndView modelAndView = new ModelAndView("examineLeavePage");
			modelAndView.addObject("leaves",leaves);
			// 将页面实例绑定到视图解析器上
			modelAndView.addObject("page", page);
			return modelAndView;
		}
		//审批请假信息
		@RequestMapping("/opproveLeaveByLeaveId")
		public ModelAndView opproveLeaveByLeaveId(@RequestParam("leaveId")int leaveId,
				@RequestParam("statement")int statement,
				@RequestParam("deptId")int deptId,
				@RequestParam("pageNow")int pageNow){
			//实例化对象,并将信息保存到MAP中
			Leave leave = new Leave();
			leave.setLeaveId(leaveId);
			leave.setStatement(statement);
			userService.opproveLeaveByLeaveId(leave);
			System.out.println("审批在线请假");
			return selectLeaveBydeptId(deptId,pageNow);
		}
		//跳转待审批请假页面
		@RequestMapping("/jumpLeaveBydeptId")
		public ModelAndView jumpLeaveBydeptId(@RequestParam("deptId")int deptId,
				@RequestParam("pageNow")int pageNow){
			return selectLeaveBydeptId(deptId,pageNow);
		}
}
