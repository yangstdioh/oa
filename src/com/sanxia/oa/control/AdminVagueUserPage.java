package com.sanxia.oa.control;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.sanxia.oa.bean.MohuPage;
import com.sanxia.oa.bean.User;
import com.sanxia.oa.server.UserService;
/**
 *作者：杨 赢
 *时间：2018年2月11日
 *作用: 模糊查询用户分页查询
 */
@Controller
public class AdminVagueUserPage {
	@Autowired
	private UserService userService;
	//跳转到模糊查询页面的首页
	@RequestMapping("/jumpFirstUserVaguePage")
	public ModelAndView jumpFirstUserVaguePage(@RequestParam("pageNow")String pNow,
			HttpServletRequest request) throws UnsupportedEncodingException{
		String searchname=request.getParameter("name");
		//进行字符编码的格式转换
		searchname= new String(searchname.getBytes("ISO-8859-1"),"utf-8");
		request.setAttribute("searchname", searchname);
		int pageNow = Integer.parseInt(pNow);
		// 拼接用户名
	    String	userName = "%"+searchname+"%";
			//将入参绑定到实例中
			User user = new User(userName);
			//实例化页面
			MohuPage  mohuPage = new MohuPage(userName);
			//将当前页数绑定到实例中
			mohuPage.setPageNow(pageNow);
			//设置查询开始数字
			mohuPage.setStartNum((pageNow-1)*mohuPage.getPageSize());
			// 查询用户数据总条数
			int userCounts=userService.selectUserVagueCount(user);
			if(userCounts==0){
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
			mv.addObject("searchname",searchname);
			//将页面实体绑定到视图解析器
			mv.addObject("mohuPage",mohuPage);
		    return mv;
	}
}	

