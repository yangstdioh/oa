package com.sanxia.oa.server.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sanxia.oa.bean.Leave;
import com.sanxia.oa.bean.MohuPage;
import com.sanxia.oa.bean.Page;
import com.sanxia.oa.bean.User;
import com.sanxia.oa.dao.UserDao;
import com.sanxia.oa.server.UserService;
@Service("userService")
public class UserServiceImpl implements UserService{
	//自动注入持久层
    @Autowired
	private UserDao userDao;
	@Override
	public User selectUser(User user) {
		//查找用户
		return userDao.selectUser(user);
	}
	@Override
	public void addUser(User user) {
		//新增用户
		userDao.addUser(user);
	}
	@Override
	public List<User> selectAllUser(Page page) {
		//查询所有用户
		return userDao.selectAllUser(page);
	}
	@Override
	public List<User> selectUserVague(MohuPage mohuPage) {
		// 模糊查找用户
		return userDao.selectUserVague(mohuPage);
	}
	@Override
	public int selectUserCount() {
		//查找用户记录总条数
		return userDao.selectUserCount();
	}
	@Override
	public int selectUserVagueCount(User user) {
		// 模糊查找用户数据条数
		return userDao.selectUserVagueCount(user);
	}
	@Override
	public void delUserById(int id) {
		//根据ID删除用户
		userDao.delUserById(id);
	}
	@Override
	public User selectUserById(int id) {
		// 根据ID查找用户
		return userDao.selectUserById(id);
	}
	@Override
	public void updateUser(User user) {
		// 修改用户信息
		userDao.updateUser(user);
	}
	@Override
	public User selectUserByName(String username) {
		// 根据用户名查找用户
		return userDao.selectUserByName(username);
	}
	@Override
	public void resetUserPwd(User user) {
		// 重置用户密码
		userDao.resetUserPwd(user);
	}
	@Override
	public void addLeave(Leave leave) {
		//  添加在线请假
		userDao.addLeave(leave);
	}
	@Override
	public int selectLeaveCount(int userId) {
		// 查询用户请假条数
		return userDao.selectLeaveCount(userId);
	}
	@Override
	public List<Leave> selectLeave(Page page) {
		// 查询请假信息
		return userDao.selectLeave(page);
	}
	@Override
	public Leave selectLeaveByLeaveId(int leaveId) {
		// 根据ID查找请假记录
		return userDao.selectLeaveByLeaveId(leaveId);
	}
	@Override
	public void delLeaveByLeaveId(int leaveId) {
		// 根据ID删除请假记录
		userDao.delLeaveByLeaveId(leaveId);
	}
	@Override
	public void updateLeave(Leave leave) {
		// 修改请假信息
		userDao.updateLeave(leave);
	}
	@Override
	public int selectLeaveCounts(int deptId) {
		// 查询待审批请假记录数
		return userDao.selectLeaveCounts(deptId);
	}
	@Override
	public List<Leave> selectLeaveBydeptId(Page page) {
		// 查询待审批请假记录
		return userDao.selectLeaveBydeptId(page);
	}
	@Override
	public void opproveLeaveByLeaveId(Leave leave) {
		// 审批请假记录
		userDao.opproveLeaveByLeaveId(leave);
	}
    
}
