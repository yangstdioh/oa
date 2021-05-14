package com.sanxia.oa.control;

import java.io.IOException;
import java.net.URLEncoder;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sanxia.oa.bean.Admin;
import com.sanxia.oa.bean.Announce;
import com.sanxia.oa.bean.User;
import com.sanxia.oa.server.AdminService;
import com.sanxia.oa.server.DeptService;
import com.sanxia.oa.server.PublishServer;
import com.sanxia.oa.server.UserService;
import com.sanxia.oa.unit.MD5;

@Controller()
public class LoginAction {
	/**
	 * 账户登录校验
	 */
	// 自动注入服务层实例
	@Autowired
	private PublishServer publishServer;
	@Autowired
	private UserService userService;
	@Autowired
	private AdminService adminService;
	@Autowired
	private DeptService deptService;
	@RequestMapping("/login.do")
	public void login(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		// 获取表单数据
		String username = req.getParameter("username");
		String pwd = req.getParameter("password");
		// 获取保存用户单选按钮的值
		String saveUser = req.getParameter("saveuser");
		String savePwd = req.getParameter("savepwd");
		String root = req.getParameter("admin");
		System.out.println(username);
		System.out.println(pwd);
		//获取公告内容
		Announce announce = publishServer.selectAnnounce();
		List<Announce> announces = publishServer.selectCompanyAnnounce(); 
		//将公告信息放到Session作用域中
		req.getSession().setAttribute("announce", announce);
		req.getSession().setAttribute("announces", announces);
		//设置有效时长
		req.getSession().setMaxInactiveInterval(60*60*24);
		if (saveUser != null) {
			// 将用户名保存到cookie中
			Cookie name = new Cookie("name", URLEncoder.encode(username,"UTF-8"));
			// 设置最大时效
			name.setMaxAge(60*60 );
			// 添加用户名到浏览器
			resp.addCookie(name);
			System.out.println(saveUser);
		} else {
			System.out.println("不保存用户");
		}
		if (savePwd != null) {
			// 将密码保存到cookie中
			Cookie password = new Cookie("pwd", pwd);
			// 设置最大时效
			password.setMaxAge(60*60);
			// 添加密码到浏览器
			resp.addCookie(password);
			System.out.println(savePwd);
		} else {
			System.out.println("不保存密码");
		}
		if (root == null) {
			// 将表单数据保存到实例对象中
			User user = new User(username,new MD5().encrypt(pwd));
			// 判断用户名和密码是否正确
			User use = userService.selectUser(user);
			if (use == null) {
				// 用户不存在，将信息保存在作用域中，转发到登录页面
				req.setAttribute("warm", "用户名或密码错误");
				req.getRequestDispatcher("/login.jsp").forward(req, resp);
			}else{
				//将用户对象放到session作用域中
				req.getSession().setAttribute("user", use);
				//跳转到用户首页
				req.getRequestDispatcher("/WEB-INF/pages/index.jsp").forward(req, resp);
			}
		} else {
			// 将表单数据保存到实例对象中
			Admin admin = new Admin(username, new MD5().encrypt(pwd));
			Admin admin2 = adminService.selectAdmin(admin);
			System.out.println(admin2);
			if (admin2 == null) {
				// 管理员账户不存在，将信息保存在作用域中，转发到登录页面
				req.setAttribute("warm", "用户名或密码错误");
				req.getRequestDispatcher("/login.jsp").forward(req, resp);
			}else{
				//将用户名保存到session中
				req.getSession().setAttribute("admin", admin2.getName());
				req.getSession().setMaxInactiveInterval(60*60*24);
				req.getRequestDispatcher("/WEB-INF/pages/admin.jsp").forward(req, resp);
			}
		}
	}
}
