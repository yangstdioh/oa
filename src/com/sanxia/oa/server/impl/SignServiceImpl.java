package com.sanxia.oa.server.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sanxia.oa.bean.Page;
import com.sanxia.oa.bean.Sign;
import com.sanxia.oa.bean.SignInfor;
import com.sanxia.oa.dao.SignDao;
import com.sanxia.oa.server.SignService;

/**
 *作者：杨 赢
 *时间：2018年2月26日
 *作用:在线签到实现类
 */
@Service
public class SignServiceImpl implements SignService {
    @Autowired
	private SignDao signDao;
	@Override
	public void addSign(Sign sign) {
		// 添加用户MAC地址
		signDao.addSign(sign);
	}
	@Override
	public Sign selectSignByName(String username) {
		// 根据名称查找记录
		return signDao.selectSignByName(username);
	}
	@Override
	public void updateSign(Sign sign) {
		// 修改用户MAC地址
		signDao.updateSign(sign);
	}
	@Override
	public void addSignInfor(SignInfor signInfor) {
		// 添加签到记录
		signDao.addSignInfor(signInfor);
	}
	@Override
	public SignInfor selectSignInforByName(SignInfor signInfor) {
		// 判断当前日期是否已经签到
		return signDao.selectSignInforByName(signInfor);
	}
	@Override
	public int selectSignInforByUserid(int userid) {
		//  查询签到记录条数
		return signDao.selectSignInforByUserid(userid);
	}
	@Override
	public List<SignInfor> selectAllSignInfor(Page page) {
		// 根据用户ID查询签到记录
		return signDao.selectAllSignInfor(page);
	}
	
}
