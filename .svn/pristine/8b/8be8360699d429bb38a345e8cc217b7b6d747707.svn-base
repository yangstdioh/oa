package com.sanxia.oa.test;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sanxia.oa.server.UserService;
import com.sanxia.oa.unit.MD5;

/**
 *作者：杨 赢
 *时间：2018年2月8日
 *作用: 测试类
 */
@Controller
public class Test {
	@Autowired
	private UserService userService;
	@RequestMapping("/testselectUserCount")
	public void selectCount(){
		//测试查询总记录数
		int a = userService.selectUserCount();
		System.out.println("查询总记录数");
		System.out.println(a);
	}
	@RequestMapping("selectLastUserPage/{pageNow}")
	public String testLastPage(){
		return "forward:/WEB-INF/pages/userInforPage.jsp";
	}
	@org.junit.Test
	public void testMD5(){
		String string = new MD5().encrypt("安达顺");
		System.out.println(string);
	}
	
	
}
