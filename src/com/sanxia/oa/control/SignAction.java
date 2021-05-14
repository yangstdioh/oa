package com.sanxia.oa.control;



import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.sanxia.oa.bean.Page;
import com.sanxia.oa.bean.Sign;
import com.sanxia.oa.bean.SignInfor;
import com.sanxia.oa.server.SignService;

/**
 *作者：杨 赢
 *时间：2018年2月26日
 *作用:签到管理控制层
 */
@Controller
public class SignAction {
	@Autowired
	private SignService signService;
	//添加用户MAC地址
	@RequestMapping("/addSign.do")
	public ModelAndView addSign(@RequestParam("username")String username,
			@RequestParam("macaddress")String macaddress){
		ModelAndView modelAndView = new ModelAndView();
		//通过用户名查找记录
		Sign s = signService.selectSignByName(username);
		System.out.println(s);
		//判断当前用户是否已经存在
		if(s!=null){
			modelAndView.setViewName("addmacpage");
			modelAndView.addObject("macmes","该用户已存在");
			return modelAndView;
		}else{
			Sign sign = new Sign(username, macaddress);
			signService.addSign(sign);
			System.out.println("添加用户MAC地址");
			modelAndView.setViewName("success");
			return modelAndView;
		}
	}
	//修改用户MAC地址
	@RequestMapping("/updateSign.do")
	public ModelAndView updateSign(@RequestParam("username")String username,
			@RequestParam("macaddress")String macaddress){
		
		ModelAndView modelAndView = new ModelAndView();
		//通过用户名查找记录
		Sign s = signService.selectSignByName(username);
		System.out.println(s);
		//判断当前用户是否已经存在
		if(s==null){
			modelAndView.setViewName("updatemacpage");
			modelAndView.addObject("macmes","该用户不存在");
			return modelAndView;
		}else{
			Sign sign = new Sign(username, macaddress);
			signService.updateSign(sign);
			System.out.println("修改用户MAC地址");
			modelAndView.setViewName("success");
			return modelAndView;
		}
	}
	//在线签到
	@RequestMapping("/addSignInfor.do")
	public ModelAndView addSignInfor(@RequestParam("userid")int userid,
			//用户名
			@RequestParam("username")String username,
			//MAC地址
			@RequestParam("macaddress")String macaddress){
		   //获取当前日期
		   Date day=new Date();    
		   SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		   String date = df.format(day);
		   java.sql.Date time = new java.sql.Date(day.getTime());
		   ModelAndView modelAndView = new ModelAndView();
		    //通过用户名查找记录
		   Sign s = signService.selectSignByName(username);
		   if(s==null){
			   modelAndView.addObject("usernamemes","您未绑定MAC地址,请联系管理员");
			   modelAndView.setViewName("signonlinepage");
			   return modelAndView;
		   }else{
			   //判断当前MAC地址与数据库中是否一致
			   if(s.getMacaddress().equals(macaddress)){
				   SignInfor signInfor = new SignInfor(userid, username,macaddress, date,time);
				   SignInfor signInfor2 = signService.selectSignInforByName(signInfor);
				 
				   //判断当前是否已经签到过
				   if(signInfor2==null){
					   signService.addSignInfor(signInfor);
					   modelAndView.setViewName("personSuccess");
					   return modelAndView; 
				   }else{
					   modelAndView.addObject("usernamemes","今天已经签到过!");
					   modelAndView.setViewName("signonlinepage");
					   return modelAndView;
				   }  
			   }else{
				   modelAndView.addObject("usernamemes","当前MAC地址与绑定不符!");
				   modelAndView.setViewName("signonlinepage");
				   return modelAndView;
			   }
		   }  
	}
	//在线签到记录查询
	@RequestMapping("/selectAllSignInfor")
	public ModelAndView selectAllSignInfor(@RequestParam("userid")int userid,
			@RequestParam("pageNow")int pageNow){
	Page page = new Page();
	//设置当前页数
	page.setPageNow(pageNow);
	page.setStartNum((pageNow-1)*page.getPageSize());
	//查询记录条数
	int counts = signService.selectSignInforByUserid(userid);
	//保存用户ID到页面实体类中
	page.setTotalCount(userid);
	//计算总页数
	if (counts % page.getPageSize() == 0) {
		// 当数据总数与没有数据条数相除的余数为零
		page.setPageCount(counts / page.getPageSize());
	} else {
		page.setPageCount(counts / page.getPageSize() + 1);
	}
	 List<SignInfor> signInfors = signService.selectAllSignInfor(page);
	 ModelAndView mv = new ModelAndView("signInforPage");
	// 将记录绑定到视图解析器上
	mv.addObject("signInfors", signInfors);
	// 将页面实例绑定到视图解析器上
	mv.addObject("page", page);
	return mv;
   }
	//跳转到上一页
	@RequestMapping("/jumpUpSignInforPage")
	public ModelAndView jumpUpSignInforPage(@RequestParam("userid")int userid,
			@RequestParam("pageNow")int pageNow){
		//判断当前是否是第一页
		if(pageNow==1){
			return selectAllSignInfor(userid,pageNow);
		}else{
			pageNow=pageNow-1;
			return selectAllSignInfor(userid,pageNow);
		}
	}
	//跳转到下一页
	@RequestMapping("/jumpDownSignInforPage")
	public ModelAndView jumpDownSignInforPage(@RequestParam("userid")int userid,
			@RequestParam("pageNow")int pageNow){
		Page page = new Page();
		//查询记录条数
		int counts = signService.selectSignInforByUserid(userid);
		//保存用户ID到页面实体类中
		page.setTotalCount(userid);
		//计算总页数
		if (counts % page.getPageSize() == 0) {
			// 当数据总数与没有数据条数相除的余数为零
			page.setPageCount(counts / page.getPageSize());
		} else {
			page.setPageCount(counts / page.getPageSize() + 1);
		}
		//判断当前是否是最后一页
		if(pageNow==page.getPageCount()){
			return selectAllSignInfor(userid,pageNow);
		}else{
			pageNow=pageNow+1;
			return selectAllSignInfor(userid,pageNow);
		}
		
	}
}
