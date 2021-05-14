package com.sanxia.oa.control;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
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
import com.sanxia.oa.server.DeptService;

/**
 * 作者：杨 赢 
 * 时间：2018年2月18日 
 * 作用: 部门管理控制层
 */
@Controller
public class AdminDeptAction {
	@Autowired
	private DeptService deptService;

	// 查询所有部门信息
	@RequestMapping("/selectAllDept")
	public ModelAndView selectAllDept(@RequestParam("pageNow")int pageNow) {
		// 实例化页面实例
		Page page = new Page();
		page.setPageSize(3);
		// 设置当前页面
		page.setPageNow(pageNow);
		// 设置开始数目
		page.setStartNum((pageNow - 1) * page.getPageSize());
		// 获取部门数据数量
		int DeptCount = deptService.selectDeptCounts();
		if (DeptCount == 0) {
			// 当数据数为零时
			page.setPageCount(1);
		} else {
			if (DeptCount % page.getPageSize() == 0) {
				// 当数据总数与没有数据条数相除的余数为零
				page.setPageCount(DeptCount / page.getPageSize());
			} else {
				page.setPageCount(DeptCount / page.getPageSize() + 1);
			}
		}
		System.out.println("查询所有部门信息");
		// 调用服务层接口查询部门信息
		List<Dept> depts = deptService.selectAllDept(page);
		System.out.println(depts);
		ModelAndView mv = new ModelAndView("deptInforPage");
		mv.addObject("depts", depts);
		// 将页面实例绑定到视图解析器上
		mv.addObject("page", page);
		return mv;
	}

	// 模糊查询部门
	@RequestMapping("/selectDeptVague.do")
	public ModelAndView selectDeptVague(HttpServletRequest request,
			@RequestParam("pageNow")int pageNow)  {
		String searchname = request.getParameter("searchname");
		System.out.println(searchname);
		if (searchname.equals("")) {
			// 当输入信息为空时
			return selectAllDept(1);
		} else {
			String deptName = "%" + searchname + "%";
			//实例化页面
			MohuPage  mohuPage = new MohuPage(deptName);
			mohuPage.setPageSize(1);
			//将当前页数绑定到实例中
			mohuPage.setPageNow(pageNow);
			//设置查询开始数字
			mohuPage.setStartNum((pageNow-1)*mohuPage.getPageSize());
			// 查询用户数据总条数
			int deptCounts=deptService.selectDeptCount(mohuPage);
			if(deptCounts==0){
			mohuPage.setPageCount(1);
			}else{
			if (deptCounts % mohuPage.getPageSize() == 0) {
			// 当数据总数与没有数据条数相除的余数为零
			mohuPage.setPageCount(deptCounts / mohuPage.getPageSize());
			} else {
			mohuPage.setPageCount(deptCounts / mohuPage.getPageSize() + 1);
					}
			}
			List<Dept> depts = deptService.selectDeptVagueByName(mohuPage);
			System.out.println(depts);
			ModelAndView mv = new ModelAndView("searchDeptPage");
			mv.addObject("depts", depts);
			mv.addObject("mohuPage", mohuPage);
			mv.addObject("searchname", searchname);
			return mv;
		}
	}
    //查询结果页面跳转
	@RequestMapping("/jumpDeptPage")
	public ModelAndView jumpDeptPage(HttpServletRequest request,
			@RequestParam("pageNow")int pageNow) throws UnsupportedEncodingException{
		String searchname=request.getParameter("searchname");
		searchname= new String(searchname.getBytes("ISO-8859-1"),"utf-8");
		System.out.println(searchname);
		String deptName = "%" + searchname + "%";
		//实例化页面
		MohuPage  mohuPage = new MohuPage(deptName);
		mohuPage.setPageSize(1);
		//将当前页数绑定到实例中
		mohuPage.setPageNow(pageNow);
		//设置查询开始数字
		mohuPage.setStartNum((pageNow-1)*mohuPage.getPageSize());
		// 查询用户数据总条数
		int deptCounts=deptService.selectDeptCount(mohuPage);
		if(deptCounts==0){
		mohuPage.setPageCount(1);
		}else{
		if (deptCounts % mohuPage.getPageSize() == 0) {
		// 当数据总数与没有数据条数相除的余数为零
		mohuPage.setPageCount(deptCounts / mohuPage.getPageSize());
		} else {
		mohuPage.setPageCount(deptCounts / mohuPage.getPageSize() + 1);
				}
		}
		List<Dept> depts = deptService.selectDeptVagueByName(mohuPage);
		System.out.println(depts);
		ModelAndView mv = new ModelAndView("searchDeptPage");
		mv.addObject("depts", depts);
		mv.addObject("mohuPage", mohuPage);
		mv.addObject("searchname", searchname);
		return mv;
	}
	// 根据ID删除部门
	@RequestMapping("/delDeptById")
	public ModelAndView delDeptById(@RequestParam("deptId") int deptId) {
		deptService.delDeptById(deptId);
		return selectAllDept(1);
	}

	// 跳转到最后一页
	@RequestMapping("/jumpLastDeptPage")
	public ModelAndView jumpLastDeptPage(@RequestParam("pageNow") int pageNow) {
		// 实例化页面实例
		Page page = new Page();
		page.setPageNow(pageNow);
		// 获取部门数据数量
		int DeptCount = deptService.selectDeptCounts();
		if (DeptCount == 0) {
			// 当数据数为零时
			page.setPageCount(1);
		} else {
			if (DeptCount % page.getPageSize() == 0) {
				// 当数据总数与没有数据条数相除的余数为零
				page.setPageCount(DeptCount / page.getPageSize());
			} else {
				page.setPageCount(DeptCount / page.getPageSize() + 1);
			}
		}
		page.setStartNum((pageNow - 1) * page.getPageSize());
		// 调用服务层接口查询部门信息
		List<Dept> depts = deptService.selectAllDept(page);
		System.out.println(depts);
		ModelAndView mv = new ModelAndView("deptInforPage");
		mv.addObject("depts", depts);
		// 将页面实例绑定到视图解析器上
		mv.addObject("page", page);
		return mv;
	}

	// 页面跳转
	@RequestMapping("/jumpDeptPage.do")
	public ModelAndView jumpDeptPage(@RequestParam("pageNow") int pageNow,
			HttpServletRequest request) {
		System.out.println("跳转页面");
		// 实例化页面实例
		Page page = new Page();
		page.setPageNow(pageNow);
		// 获取部门数据数量
		int DeptCount = deptService.selectDeptCounts();
		if (DeptCount == 0) {
			// 当数据数为零时
			page.setPageCount(1);
		} else {
			if (DeptCount % page.getPageSize() == 0) {
				// 当数据总数与没有数据条数相除的余数为零
				page.setPageCount(DeptCount / page.getPageSize());
			} else {
				page.setPageCount(DeptCount / page.getPageSize() + 1);
			}
		}
		if (pageNow < 1 || pageNow > page.getPageCount()) {
			request.setAttribute("jumpPagemes", "页数输入不合法");
			ModelAndView mv = new ModelAndView("deptInforPage");
			return mv;
		} else {
			request.setAttribute("pageNum", pageNow);
			return jumpLastDeptPage(pageNow);
		}
	}

	// 跳转到上一页
	@RequestMapping("/jumpUpDeptPage")
	public ModelAndView jumpUpDeptPage(@RequestParam("pageNow") int pageNow) {
		if (pageNow > 1) {
			pageNow = pageNow - 1;
			return jumpLastDeptPage(pageNow);
		} else {
			return selectAllDept(1);
		}
	}
    
	@RequestMapping("/selectDeptByName")
	public boolean selectDeptByName(@RequestParam("deptName")String deptName) throws IOException{
		System.out.println("判断当前部门是否存在");
		List<Dept> depts = deptService.selectDeptByName(deptName);
		if (!depts.isEmpty()) {
		return false;
		}else{
			return true;
		}
	}
	
	// 跳转到下一页
	@RequestMapping("/jumpDownDeptPage")
	public ModelAndView jumpDownDeptPage(@RequestParam("pageNow") int pageNow) {
		Integer pageCount=null;
		// 实例化页面实例
		Page page = new Page();
		// 获取部门数据数量
		int DeptCount = deptService.selectDeptCounts();
		if (DeptCount == 0){
		// 当数据数为零时
		   pageCount =1;
		}else{
			if (DeptCount % page.getPageSize() == 0) {
			// 当数据总数与没有数据条数相除的余数为零
			pageCount=DeptCount / page.getPageSize();
			} else {
			pageCount= DeptCount / page.getPageSize() + 1;
			}
		}
		if(pageNow<pageCount){
			pageNow= pageNow+1;
			return jumpLastDeptPage(pageNow);
		}else{
		    return jumpLastDeptPage(pageNow);
		}
	}
	//添加新部门
	@RequestMapping("/addDept.do")
	public String addDept(@RequestParam("addname")String operator,
			@RequestParam("deptName")String deptName,
			HttpServletRequest request) throws IOException{
		boolean b = selectDeptByName(deptName);
		if(!b){
		    request.setAttribute("deptNamemes", "该部门已存在");
		    return "addDeptPage";
		}else{
			Dept dept = new Dept(deptName, operator);
			java.util.Date d = new java.util.Date(); 
			Date date = new Date(d.getTime());
			dept.setAddTime(date);
			dept.setUpTime(date);
			deptService.addDept(dept);
			return "success";
		}	
	}
	//根据ID查找部门
	@RequestMapping("/upDateDeptById")
	public ModelAndView upDateDeptById(@RequestParam("deptId")int deptId){
	Dept dept = deptService.selectDeptById(deptId);
	System.out.println("跳转到修改部门页面");
	ModelAndView modelAndView = new ModelAndView("updateDeptPage");
	//将部门信息绑定到视图解析器中
	modelAndView.addObject("dept",dept);
	return modelAndView;
	}
	//修改部门信息
	@RequestMapping("/updateDept.do")
	public String updateDept(@RequestParam("deptId")int deptId,
			@RequestParam("addname")String operator,
			@RequestParam("deptName")String deptName,
			HttpServletRequest request) throws IOException{
		boolean b = selectDeptByName(deptName);
		if(!b){
			Dept dept = deptService.selectDeptById(deptId);
		    request.setAttribute("deptNamemes", "该部门已存在");
		    request.setAttribute("dept", dept);
		    return "updateDeptPage";
		}else{
			Dept dept = new Dept(deptName, operator);
			java.util.Date d = new java.util.Date(); 
			Date date = new Date(d.getTime());
			dept.setDeptId(deptId);
		    dept.setUpTime(date);
		    System.out.println("修改部门信息");
		    deptService.updateDept(dept);
		    return "success";
	  }
   }
}	
