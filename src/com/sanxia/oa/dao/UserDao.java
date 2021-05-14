package com.sanxia.oa.dao;

import java.util.List;
import com.sanxia.oa.bean.Leave;
import com.sanxia.oa.bean.MohuPage;
import com.sanxia.oa.bean.Page;
import com.sanxia.oa.bean.User;

public interface UserDao {
	/**
	 * 查找用户
	 */
	public User selectUser(User user);
	/**
	 * 添加用户
	 */
	public void addUser(User user);
	/**
	 * 查询所有用户
	 */
	public List<User> selectAllUser(Page page);
	/**
	 * 模糊查找用户
	 */
	public List<User> selectUserVague(MohuPage mohuPage);
	/**
	 * 模糊查找用户数据条数
	 */
	public int selectUserVagueCount(User user);
	/**
	 * 查找用户记录总条数
	 */
	public int selectUserCount();
	/**
	 * 根据ID删除用户
	 */
	public void delUserById(int id);
	/**
	 * 根据ID查找用户
	 */
	public User selectUserById(int id);
	/**
	 * 修改用户信息
	 */
	public void updateUser(User user);
	/**
	 * 根据用户名查找用户
	 */
	public User selectUserByName(String username);
	/**
	 * 重置用户密码
	 */
	public void resetUserPwd(User user);
	/**
	 * 添加在线请假
	 */
	public void addLeave(Leave leave);
	/**
	 * 查询用户请假条数
	 */
	public int selectLeaveCount(int userId);
	/**
	 * 查询请假信息
	 */
	public List<Leave> selectLeave(Page page);
	/**
	 * 根据ID查找请假记录
	 */
	public Leave selectLeaveByLeaveId(int leaveId);
	/**
	 * 根据ID删除请假记录
	 */
	public void delLeaveByLeaveId(int leaveId);
	/**
	 * 修改请假信息
	 */
	public void updateLeave(Leave leave);
	/**
	 * 查询待审批请假记录数
	 */
	public int selectLeaveCounts(int deptId);
	/**
	 * 查询待审批请假记录
	 */
	public List<Leave> selectLeaveBydeptId(Page page);
	/**
	 * 审批请假记录
	 */
	public void opproveLeaveByLeaveId(Leave leave);
}
