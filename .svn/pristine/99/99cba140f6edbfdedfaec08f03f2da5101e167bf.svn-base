package com.sanxia.oa.server.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sanxia.oa.bean.Admin;
import com.sanxia.oa.dao.AdminDao;
import com.sanxia.oa.server.AdminService;

/**
 *作者：杨 赢
 *时间：2018年2月4日
 *作用:AdminService接口的实现类
 */
@Service
public class AdminServiceImpl  implements AdminService{
	//自动注入adminDao的实现类
	@Autowired
	private AdminDao adminDao;
	@Override
	public Admin selectAdmin(Admin admin) {
		return adminDao.selectAdmin(admin);
	}

}
