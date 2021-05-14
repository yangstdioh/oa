package com.sanxia.oa.control;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.sanxia.oa.bean.Page;
import com.sanxia.oa.bean.User;
import com.sanxia.oa.server.UserService;

/**
 * 作者：杨 赢 
 * 时间：2018年2月10日
 * 作用: 用户信息分页查询
 */
@Controller
public class AdminUserPaging {
	// 页面实例引用变量
	private Page page = null;
	@Autowired
	private UserService userService;
	@RequestMapping("/jumpLastUserPage")
	public ModelAndView selectLastUserPage(
			@RequestParam("pageNow") Integer pageNow) {
		// 跳转到尾页
		page = new Page();
		// 查询用户数据总条数
		page.setTotalCount(userService.selectUserCount());
		if (page.getTotalCount() % page.getPageSize() == 0) {
			// 当数据总数与没有数据条数相除的余数为零
			page.setPageCount(page.getTotalCount() / page.getPageSize());
		} else {
			page.setPageCount(page.getTotalCount() / page.getPageSize() + 1);
		}
		// 设置当前页面
		page.setPageNow(pageNow);
		// 设置开始数目
		page.setStartNum((pageNow - 1) * page.getPageSize());
		System.out.println(page);
		// 调用服务层查询所有用户
		List<User> users = userService.selectAllUser(page);
		ModelAndView mv = new ModelAndView("userInforPage");
		// 将用户绑定到视图解析器上
		mv.addObject("users", users);
		// 将页面实例绑定到视图解析器上
		mv.addObject("page", page);
		return mv;
	}
	// 跳转到下一页
	@RequestMapping("/jumpDownUserPage")
	public ModelAndView selectDownUserPage(
			@RequestParam("pageNow") Integer pageNow) {
		System.out.println("跳转到下一页");
		page = new Page();
		// 查询用户数据总条数
		page.setTotalCount(userService.selectUserCount());
		if (page.getTotalCount() % page.getPageSize() == 0) {
			// 当数据总数与没有数据条数相除的余数为零
			page.setPageCount(page.getTotalCount() / page.getPageSize());
		} else {
			page.setPageCount(page.getTotalCount() / page.getPageSize() + 1);
		}
		// 判断当前是否是最后一页
		if (pageNow < page.getPageCount()) {
			System.out.println("当前不是最后一页");
			pageNow = pageNow + 1;
			return selectLastUserPage(pageNow);
		} else {
			System.out.println("最后一页");
			return selectLastUserPage(pageNow);
		}
	}
	// 跳转到下一页
		@RequestMapping("/jumpUpUserPage")
		public ModelAndView selectUpUserPage(
				@RequestParam("pageNow") Integer pageNow) {
			System.out.println("跳转到上一页");
			page = new Page();
			// 查询用户数据总条数
			page.setTotalCount(userService.selectUserCount());
			if (page.getTotalCount() % page.getPageSize() == 0) {
				// 当数据总数与没有数据条数相除的余数为零
				page.setPageCount(page.getTotalCount() / page.getPageSize());
			} else {
				page.setPageCount(page.getTotalCount() / page.getPageSize() + 1);
			}
			// 判断当前是否是第一页
			if (pageNow >1) {
				System.out.println("当前不是第一页");
				pageNow = pageNow-1;
				return selectLastUserPage(pageNow);
			} else {
				System.out.println("第一页");
				return selectLastUserPage(pageNow);
			}
		}
	//页面跳转	
	@RequestMapping("/jumpUserPage.do")	
	public ModelAndView jumpPage(
	@RequestParam("pageNow") Integer pageNow,HttpServletRequest request){
		System.out.println("页面跳转");
		page = new Page();
		// 查询用户数据总条数
		page.setTotalCount(userService.selectUserCount());
		if (page.getTotalCount() % page.getPageSize() == 0) {
			// 当数据总数与没有数据条数相除的余数为零
			page.setPageCount(page.getTotalCount() / page.getPageSize());
		} else {
			page.setPageCount(page.getTotalCount() / page.getPageSize() + 1);
		}
		//判断输入的页数是否合法
		if(pageNow>=1&&pageNow<=page.getPageCount()){
			System.out.println("跳转");
			request.setAttribute("jumpPage", pageNow);
			return selectLastUserPage(pageNow);	
		}else{
			request.setAttribute("jumpPagemes", "页数输入不正确");
			pageNow = 1;
			return selectLastUserPage(pageNow);	
		}
	}
}
