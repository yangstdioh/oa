package com.sanxia.oa.dao;

import java.util.List;

import com.sanxia.oa.bean.Page;
import com.sanxia.oa.bean.Sign;
import com.sanxia.oa.bean.SignInfor;

/**
 *作者：杨 赢
 *时间：2018年2月26日
 *作用:在线签到持久层
 */
public interface SignDao {
	/**
	 * 添加用户MAC地址
	 */
	public void addSign(Sign sign);
	/**
	 * 根据名称查找记录
	 */
	public Sign selectSignByName(String username);
	/**
	 * 修改用户MAC地址
	 */
	public void updateSign(Sign sign);
	/**
	 * 添加签到记录
	 */
	public void addSignInfor(SignInfor signInfor);
	/**
	 * 判断当前日期是否已经签到
	 */
	public SignInfor selectSignInforByName(SignInfor signInfor);
	/**
	 * 查询签到记录条数
	 */
	public int selectSignInforByUserid(int userid);
	/**
	 * 根据用户ID查询签到记录
	 */
	public List<SignInfor> selectAllSignInfor(Page page);
}
