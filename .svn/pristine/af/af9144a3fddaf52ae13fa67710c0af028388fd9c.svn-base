package com.sanxia.oa.control;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.sanxia.oa.bean.BackLog;
import com.sanxia.oa.bean.Page;
import com.sanxia.oa.server.BackLogService;

/**
 *作者：杨 赢
 *时间：2018年3月6日
 *作用:待办事项控制层
 */
@Controller
public class BackLogAction {
	@Autowired
	private BackLogService backLogService;
	//添加待办事项
	@RequestMapping("/addBackLog.do")
	public String  addbacklog(@RequestParam("id")int id,
			//用户名
			@RequestParam("username")String username,
			//日期
			@RequestParam("date")String date,
			//待办事项
			@RequestParam("backlog")String backLog){
		//将表单数据绑定到实例对象中
		BackLog bLog = new BackLog(id, username, date, backLog);
		//调用服务层保存待办事项
		backLogService.addbacklog(bLog);
		System.out.println("新增待办事项");
		return "personSuccess";	
	}
	//查看待办事项
	@RequestMapping("/selectbacklog")
	public ModelAndView selectBackLog(@RequestParam("id")int id,
			@RequestParam("pageNow")int pageNow){
		Page page = new Page();
		//设置当前页数
		page.setPageNow(pageNow);
		//设置开始数字
		page.setStartNum((pageNow-1)*page.getPageSize());
		//保存用户Id到page对象中
		page.setTotalCount(id);
		int counts = backLogService.selectBackLogCount(id);
		if (counts % page.getPageSize() == 0) {
			// 当数据总数与没有数据条数相除的余数为零
			page.setPageCount(counts / page.getPageSize());
		} else {
			page.setPageCount(counts / page.getPageSize() + 1);
		}
		//查询待办事项
		List<BackLog> backLogs = backLogService.selectBackLog(page);
		//实例化视图解析器
		ModelAndView modelAndView = new ModelAndView("backLogInforPage");
		modelAndView.addObject("backLogs",backLogs);
		modelAndView.addObject("page",page);
		return modelAndView;
	}
	//根据id查询待办事项
	@RequestMapping("/selectbacklogById")
	public ModelAndView selectbacklogById(@RequestParam("backLogId")int backLogId){
		ModelAndView modelAndView = new ModelAndView("updatebacklogpage");
		BackLog backLog = backLogService.selectbacklogById(backLogId);
		//将信息保存到视图解析中
		modelAndView.addObject("backLog",backLog);
		return modelAndView;
	}
	//修改待办事项
	@RequestMapping("/updateBackLog.do")
	public ModelAndView updateBackLog(@RequestParam("id")int id,
			//用户名
			@RequestParam("username")String username,
			//日期
			@RequestParam("date")String date,
			//待办事项
			@RequestParam("backlog")String backLog){
		System.out.println("修改待办事项");
		//将表单数据绑定到实例对象中
		BackLog bLog = new BackLog(id, username, date, backLog);
		backLogService.updateBackLog(bLog);
		ModelAndView modelAndView = new ModelAndView("personSuccess"); 
		return modelAndView;
	}
	//删除待办事项
	@RequestMapping("/deletebacklogById")
	public ModelAndView deletebacklogById(@RequestParam("backLogId")int backLogId,
			@RequestParam("id")int id){
		backLogService.deletebacklogById(backLogId);
		return selectBackLog(id,1);
	}
	//跳转到上一页
	@RequestMapping("/jumpUpbacklogPage")
	public ModelAndView jumpUpbacklogPage(@RequestParam("id")int id,
			@RequestParam("pageNow")int pageNow){
		
		pageNow=pageNow-1;
		return selectBackLog(id,pageNow);
	}
	//跳转到下一页
		@RequestMapping("/jumpDownbacklogPage")
		public ModelAndView jumpDownbacklogPage(@RequestParam("id")int id,
				@RequestParam("pageNow")int pageNow){
			
		pageNow=pageNow+1;
		return selectBackLog(id,pageNow);
	}
	//跳转到最后一页
	@RequestMapping("/jumpLastbacklogPage")
	public ModelAndView jumpLastbacklogPage(@RequestParam("id")int id,
			@RequestParam("pageNow")int pageNow){
		return selectBackLog(id,pageNow);
	}
}
