package com.sanxia.oa.control;

import java.sql.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.sanxia.oa.bean.Dept;
import com.sanxia.oa.bean.MohuPage;
import com.sanxia.oa.bean.Page;
import com.sanxia.oa.bean.User;
import com.sanxia.oa.server.DeptService;
import com.sanxia.oa.server.UserService;
import com.sanxia.oa.unit.MD5;

/**
 * 作者：杨 赢 
 * 时间：2018年2月5日 
 * 作用: 管理员用户管理
 */
@Controller
public class AdminUserAction {
	private Page page = null;
	@Autowired
	private UserService userService;
	@Autowired
	private DeptService deptService;
    //添加新用户
	@RequestMapping("/addUser.do")
	public String addUser(@RequestParam("username") String username,
	         // 密码
			@RequestParam("password") String password,
			// 真实姓名
			@RequestParam("realname") String realname,
			// 年龄
			@RequestParam("age") Integer age,
			// 性别
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
			//角色
			@RequestParam("roleId")int roleId,
			HttpServletRequest request) {
		// 实例化页面实例
		Page page = new Page();
		page.setPageSize(1000);	
		User user = new User(username, new MD5().encrypt(password), realname, age, sex, deptId, birthday, phonenumber, address, email, ismarriage,roleId);
		User a = userService.selectUserByName(username);
		System.out.println(a);
		if(a==null){
			System.out.println("保存用户");
			// 添加新用户
			userService.addUser(user);
			return "success";
		}else{
			// 调用服务层接口查询部门信息
			List<Dept> depts = deptService.selectAllDept(page);
			request.setAttribute("depts", depts);
			user.setPassword(password);
			request.setAttribute("user", user);
			request.setAttribute("usernamemes", "用户已经存在");
			return "errorAddUserPage";
		}	
	}
    //查询所有用户
	@RequestMapping("/selectAllUser")
	public ModelAndView selectAllUser() {
		page = new Page();
		// 查询用户数据总条数
		int UserCount = userService.selectUserCount();
		if (UserCount % page.getPageSize() == 0) {
			// 当数据总数与没有数据条数相除的余数为零
			page.setPageCount(UserCount / page.getPageSize());
		} else {
			page.setPageCount(UserCount / page.getPageSize() + 1);
		}
		// 调用服务层查询所有用户
		List<User> users = userService.selectAllUser(page);
		System.out.println("查询所有用户");
		ModelAndView mv = new ModelAndView("userInforPage");
		// 将用户绑定到视图解析器上
		mv.addObject("users", users);
		// 将页面实例绑定到视图解析器上
		mv.addObject("page", page);
		return mv;
	}

	// 模糊查询用户
	@RequestMapping("/selectUserVague.do")
	public ModelAndView selectUser(@RequestParam("searchname") String str) {
		if (str.equals("")) {
			return selectAllUser();
		} else {
			// 拼接用户名
			String username = "%" + str + "%";
			//将入参绑定到实例中
			User user = new User(username);
			//实例化页面
			MohuPage  mohuPage = new MohuPage(username);
			// 查询用户数据总条数
			int userCounts=userService.selectUserVagueCount(user);
			if(userCounts==0){
				//判断当前查询结果是否为空
				mohuPage.setPageCount(1);
			}else{
				if (userCounts % mohuPage.getPageSize() == 0) {
					// 当数据总数与没有数据条数相除的余数为零
					mohuPage.setPageCount(userCounts / mohuPage.getPageSize());
				} else {
					mohuPage.setPageCount(userCounts / mohuPage.getPageSize() + 1);
				}
			}
			// 调用服务层查询用户
			List<User> users = userService.selectUserVague(mohuPage);
			ModelAndView mv = new ModelAndView("searchUserPage");
			// 将用户绑定到视图解析器上
			mv.addObject("users", users);
			//将查询信息添加到视图解析器上
			mv.addObject("searchname",str);
			//将页面实体绑定到视图解析器
			mv.addObject("mohuPage",mohuPage);
			return mv;
		}
	}
	//根据ID删除用户
	@RequestMapping("/delUserById")
	public ModelAndView delUserById(@RequestParam("userId")int id){
		userService.delUserById(id);
		System.out.println("删除用户ID="+id);
		//查询所有用户
		return selectAllUser();
	}
	//根据ID查找用户
	@RequestMapping("/upDateUserById")
	public ModelAndView selectUserById(@RequestParam("userId")int id){
		User user = userService.selectUserById(id);
		Dept dept=deptService.selectDeptById(user.getDeptId());
		System.out.println("修改用户信息");
		// 实例化页面实例
		Page page = new Page();
		page.setPageSize(1000);
		// 调用服务层接口查询部门信息
		List<Dept> depts = deptService.selectAllDept(page);
		ModelAndView mv = new ModelAndView("upDateUserPage");
		//将用户信息保存到视图解析器中
		mv.addObject("user",user);
		mv.addObject("dept",dept);
		mv.addObject("depts",depts);
		return mv;
	}
	//修改用户信息
	@RequestMapping("/updateUser.do")
	public String updateUser(
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
			//角色
			@RequestParam("roleId")int roleId
			){
		String pwd = "";
		//将表单信息保存到用户实力中
		User user = new User(username, pwd, realname, age, sex, deptId, birthday, phonenumber, address, email, ismarriage,roleId);
		System.out.println(user);
		//调用服务层保存用户信息
		userService.updateUser(user);
		return "success";
	}
	//重置用户密码
	@RequestMapping("/resetUserPwd.do")
	public ModelAndView resetUserPwd(@RequestParam("username")String username,
			@RequestParam("password")String password){
		ModelAndView mv = new ModelAndView();
		User a = userService.selectUserByName(username);
		if(a==null){
			mv.setViewName("resetUserPwdPage");
			mv.addObject("usermes","用户名不存在");
			return mv;
		}else{
			//将信息保存到实例对象中
			User user = new User(username, new MD5().encrypt(password));
			//重置用户密码
			userService.resetUserPwd(user);
			System.out.println("重置用户密码");
			mv.setViewName("success");
			return mv;
		}
	}
}
