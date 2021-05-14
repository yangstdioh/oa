package com.sanxia.oa.server.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sanxia.oa.bean.Dept;
import com.sanxia.oa.bean.MohuPage;
import com.sanxia.oa.bean.Page;
import com.sanxia.oa.dao.DeptDao;
import com.sanxia.oa.server.DeptService;

/**
 *作者：杨 赢
 *时间：2018年2月18日
 *作用: 部门管理服务层实现类
 */
@Service
public class DeptServiceImpl implements DeptService {
	@Autowired
    private DeptDao deptDao;
	@Override
	public List<Dept> selectAllDept(Page page) {
		//查询所有部门信息
		return deptDao.selectAllDept(page);
	}
	@Override
	public List<Dept> selectDeptByName(String deptName) {
		// 根据名称查找部门
		return deptDao.selectDeptByName(deptName);
	}
	@Override
	public void delDeptById(int deptId) {
		// 根据ID删除部门
		deptDao.delDeptById(deptId);
	}
	@Override
	public int selectDeptCounts() {
		// 查询部门总数
		return deptDao.selectDeptCounts();
	}
	@Override
	public List<Dept> selectDeptVagueByName(MohuPage mohuPage) {
		// 根据名称模糊查找部门
		return deptDao.selectDeptVagueByName(mohuPage);
	}
	@Override
	public void addDept(Dept dept) {
		// TODO 添加部门信息
		deptDao.addDept(dept);
	}
	@Override
	public Dept selectDeptById(int deptId) {
		// 根据ID查找部门
		return deptDao.selectDeptById(deptId);
	}
	@Override
	public void updateDept(Dept dept) {
		// 修改部门信息
		deptDao.updateDept(dept);
	}
	@Override
	public int selectDeptCount(MohuPage mohuPage) {
		// 模糊查询部门条数
		return deptDao.selectDeptCount(mohuPage);
	}

}
