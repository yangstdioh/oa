package com.sanxia.oa.dao;

import java.util.List;

import com.sanxia.oa.bean.Announce;

/**
 *作者：杨 赢
 *时间：2018年2月21日
 *作用: 公告管理持久层
 */
public interface PulishDao {
	/**
	 * 发布新公告
	 */
	public void updatePublish(Announce announce);
	/**
	 * 查询公告信息
	 */
	public Announce selectAnnounce();
	/**
	 * 发布部门公告
	 */
	public void AddDeptAnnounce(Announce announce);
	/**
	 * 查询部门公告
	 */
	public List<Announce> selectDeptAnnounce(int deptId);
	/**
	 * 根据ID查询公告
	 */
	public Announce selectDeptAnnounceById(int id);
	/**
	 * 查询公司公告
	 */
	public List<Announce> selectCompanyAnnounce();
}
