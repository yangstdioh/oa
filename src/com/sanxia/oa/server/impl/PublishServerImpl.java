package com.sanxia.oa.server.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sanxia.oa.bean.Announce;
import com.sanxia.oa.dao.PulishDao;
import com.sanxia.oa.server.PublishServer;

/**
 *作者：杨 赢
 *时间：2018年2月21日
 *作用: 公告管理实现类
 */
@Service
public class PublishServerImpl implements PublishServer{
	@Autowired
    private PulishDao publishDao;
	@Override
	public void updatePublish(Announce announce) {
		// 发布新公告
		publishDao.updatePublish(announce);
	}
	@Override
	public Announce selectAnnounce() {
		// 查询公告信息
		return publishDao.selectAnnounce();
	}
	@Override
	public void AddDeptAnnounce(Announce announce) {
		// 发布部门公告
		publishDao.AddDeptAnnounce(announce);
	}
	@Override
	public List<Announce> selectDeptAnnounce(int deptId) {
		// 查询部门公告
		return publishDao.selectDeptAnnounce(deptId);
	}
	@Override
	public Announce selectDeptAnnounceById(int id) {
		// 根据ID查询公告
		return publishDao.selectDeptAnnounceById(id);
	}
	@Override
	public List<Announce> selectCompanyAnnounce() {
		// 查询公司公告
		return publishDao.selectCompanyAnnounce();
	}

}
