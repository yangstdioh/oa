package com.sanxia.oa.server;

import java.util.List;

import com.sanxia.oa.bean.Page;
import com.sanxia.oa.bean.UploadFile;

/**
 *作者：杨 赢
 *时间：2018年3月29日
 *作用: 文件上传服务层
 */
public interface FileService {
	   /**
	    * 文件上传
	    */
		public void addDocument(UploadFile uploadFile);
		/**
		 * 根据名称查询文件
		 */
		public UploadFile selectUploadFileByName(String fileName);
		/**
		 * 根据部门查询待审批公文
		 */
		public List<UploadFile> selectDocument(Page page);
		/**
		 * 查询待审批公文条数
		 */
		public int selectDocumentCount(int deptId);
		/**
		 * 审批在线公文
		 */
		public void updateDocument(int fileId,int statement);
		/**
		 * 查询上传公文记录条数
		 */
		public int selectUploadDocumentCounts(int userId);
		/**
		 * 查询已经上传公文
		 */
		public List<UploadFile> selectUploadDocument(Page page);
}
