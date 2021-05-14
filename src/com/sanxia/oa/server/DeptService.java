package com.sanxia.oa.server;

import java.util.List;

import com.sanxia.oa.bean.Dept;
import com.sanxia.oa.bean.MohuPage;
import com.sanxia.oa.bean.Page;

/**
 *作者：杨 赢
 *时间：2018年2月18日
 *作用: 部门管理服务层
 */
public interface DeptService {
	/**
	 * 查询所有部门信息
	 * @return
	 */
	public List<Dept> selectAllDept(Page page);
	/**
	 * 根据名称查找部门
	 */
	public List<Dept> selectDeptByName(String deptName);
	/**
	 * 根据名称模糊查找部门
	 */
	public List<Dept> selectDeptVagueByName(MohuPage mohuPage);
	/**
	 * 模糊查询部门条数
	 */
	public int selectDeptCount(MohuPage mohuPage);
	/**
	 * 根据ID删除部门
	 */
	public void delDeptById(int deptId);
	/**
	 * 查询部门总数
	 */
	public int selectDeptCounts();
	/**
	 * 添加部门信息
	 */
	public void addDept(Dept dept);
	/**
	 * 根据ID查找部门
	 */
	public Dept selectDeptById(int deptId);
	/**
	 * 修改部门信息
	 */
	public void updateDept(Dept dept);
}
