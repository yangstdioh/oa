package com.sanxia.oa.bean;

import java.sql.Date;

/**
 *作者：杨 赢
 *时间：2018年2月18日
 *作用: 部门实体类
 */
public class Dept {
	//部门ID
	private int deptId;
	//部门名称
	private String deptName;
	//操作人
	private String operator;
	//添加时间
	private Date addTime;
	//修改时间
	private Date upTime;
	
	public int getDeptId() {
		return deptId;
	}

	public void setDeptId(int deptId) {
		this.deptId = deptId;
	}

	public String getDeptName() {
		return deptName;
	}

	public void setDeptName(String deptName) {
		this.deptName = deptName;
	}

	public String getOperator() {
		return operator;
	}

	public void setOperator(String operator) {
		this.operator = operator;
	}

	public Date getAddTime() {
		return addTime;
	}

	public void setAddTime(Date addTime) {
		this.addTime = addTime;
	}

	public Date getUpTime() {
		return upTime;
	}

	public void setUpTime(Date upTime) {
		this.upTime = upTime;
	}

	public Dept(int deptId, String deptName, String operator, Date addTime,
			Date upTime) {
		super();
		this.deptId = deptId;
		this.deptName = deptName;
		this.operator = operator;
		this.addTime = addTime;
		this.upTime = upTime;
	}
    
	public Dept(String deptName, String operator) {
		super();
		this.deptName = deptName;
		this.operator = operator;
	}

	public Dept() {
		super();
	}

	@Override
	public String toString() {
		return "Dept [deptId=" + deptId + ", deptName=" + deptName
				+ ", operator=" + operator + ", addTime=" + addTime
				+ ", upTime=" + upTime + "]";
	}
	
}
