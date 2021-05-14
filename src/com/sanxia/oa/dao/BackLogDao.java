package com.sanxia.oa.dao;

import java.util.List;

import com.sanxia.oa.bean.BackLog;
import com.sanxia.oa.bean.Page;

/**
 *作者：杨 赢
 *时间：2018年3月5日
 *作用: 待办事项持久层
 */
public interface BackLogDao {
	/**
	 * 新增待办事项
	 */
	public void addbacklog(BackLog backLog);
	/**
	 * 查询待办事项总条数
	 */
	public int selectBackLogCount(int id);
	/**
	 * 查看待办事项
	 */
	public List<BackLog> selectBackLog(Page page);
	/**
	 * 根据ID查询待办事项
	 */
	public BackLog selectbacklogById(int backLogId);
	/**
	 * 修改待办事项
	 */
	public void updateBackLog(BackLog backLog);
	/**
	 * 删除待办事项
	 */
	public void deletebacklogById(int backLogId);
}
