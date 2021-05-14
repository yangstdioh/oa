package com.sanxia.oa.bean;
/**
 *作者：杨 赢
 *时间：2018年2月8日
 *作用: 页面实体对象
 */
public class Page {
	//当前页面
	private Integer pageNow=1;
	//总共页数
	private Integer pageCount;
	//开始数字
    private Integer startNum=0;
	//每一页显示的信息条数
	private Integer pageSize=5;
	//信息总条数
	private Integer totalCount;
	
	public Integer getStartNum() {
		return startNum;
	}
	public void setStartNum(Integer startNum) {
		this.startNum = startNum;
	}
	public Integer getPageNow() {
		return pageNow;
	}
	public void setPageNow(Integer pageNow) {
		this.pageNow = pageNow;
	}
	public Integer getPageCount() {
		return pageCount;
	}
	public void setPageCount(Integer pageCount) {
		this.pageCount = pageCount;
	}
	public Integer getPageSize() {
		return pageSize;
	}
	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}
	public Integer getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(Integer totalCount) {
		this.totalCount = totalCount;
	}
	public Page(Integer pageCount, Integer startNum, Integer totalCount) {
		super();
		this.pageCount = pageCount;
		this.startNum = startNum;
		this.totalCount = totalCount;
	}
	public Page() {
		super();
	}
	@Override
	public String toString() {
		return "Page [pageNow=" + pageNow + ", pageCount=" + pageCount
				+ ", startNum=" + startNum + ", pageSize=" + pageSize
				+ ", totalCount=" + totalCount + "]";
	}
	
}
