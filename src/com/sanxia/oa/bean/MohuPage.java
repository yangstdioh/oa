package com.sanxia.oa.bean;
/**
 *作者：杨 赢
 *时间：2018年2月12日
 *作用: 模糊查询页面实体类
 */
public class MohuPage {
	    //总共页数
		private Integer pageCount;
		//当前页数
		private Integer pageNow=1;
		//开始数字
	    private Integer startNum=0;
		//每一页显示的信息条数
		private Integer pageSize=1;
		//模糊查询输入值
		private String username;
		
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
		public Integer getStartNum() {
			return startNum;
		}
		public void setStartNum(Integer startNum) {
			this.startNum = startNum;
		}
		public Integer getPageSize() {
			return pageSize;
		}
		public void setPageSize(Integer pageSize) {
			this.pageSize = pageSize;
		}
		public String getUsername() {
			return username;
		}
		public void setUsername(String username) {
			this.username = username;
		}
		public MohuPage(String username) {
			super();
			this.username = username;
		}
		public MohuPage() {
			super();
		}
		@Override
		public String toString() {
			return "MohuPage [pageCount=" + pageCount + ", pageNow=" + pageNow
					+ ", startNum=" + startNum + ", pageSize=" + pageSize
					+ ", username=" + username + "]";
		}
		
		
}
