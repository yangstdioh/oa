package com.sanxia.oa.dao;

import com.sanxia.oa.bean.Admin;

/**
 *作者：杨 赢
 *时间：2018年2月4日
 *作用:管理员持久层
 */
public interface AdminDao {
	/**
	 * 查找管理员
	 * @param admin
	 * @return
	 */
	public Admin selectAdmin(Admin admin);
}
