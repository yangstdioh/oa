package com.sanxia.oa.server.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sanxia.oa.bean.BackLog;
import com.sanxia.oa.bean.Page;
import com.sanxia.oa.dao.BackLogDao;
import com.sanxia.oa.server.BackLogService;

/**
 *作者：杨 赢
 *时间：2018年3月5日
 *作用: 待办事项服务层实现类
 */
@Service
public class BackLogServiceImpl implements BackLogService {
	@Autowired
    private BackLogDao backLogDao;
	@Override
	public void addbacklog(BackLog backLog) {
		// 新增待办事项
		backLogDao.addbacklog(backLog);
	}
	@Override
	public int selectBackLogCount(int id) {
		// 查询待办事项总条数
		return backLogDao.selectBackLogCount(id);
	}
	@Override
	public List<BackLog> selectBackLog(Page page) {
		// 查看待办事项
		return backLogDao.selectBackLog(page);
	}
	@Override
	public BackLog selectbacklogById(int backLogId) {
		// 根据ID查询待办事项
		return backLogDao.selectbacklogById(backLogId);
	}
	@Override
	public void updateBackLog(BackLog backLog) {
		// 修改待办事项
		backLogDao.updateBackLog(backLog);
	}
	@Override
	public void deletebacklogById(int backLogId) {
		// 删除待办事项
		backLogDao.deletebacklogById(backLogId);
	}
	
}
