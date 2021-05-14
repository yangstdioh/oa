package com.sanxia.oa.server.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sanxia.oa.bean.Page;
import com.sanxia.oa.bean.UploadFile;
import com.sanxia.oa.dao.FileDao;
import com.sanxia.oa.server.FileService;

/**
 *作者：杨 赢
 *时间：2018年3月29日
 *作用: 文件服务层实现类
 */
@Service
public class FileServiceImpl implements FileService{
	@Autowired
    private FileDao fileDao;
	
	@Override
	public void addDocument(UploadFile uploadFile) {
		// 上传文件
		fileDao.addDocument(uploadFile);
	}

	@Override
	public UploadFile selectUploadFileByName(String fileName) {
		// 根据名称查询文件
		return fileDao.selectUploadFileByName(fileName);
	}

	@Override
	public List<UploadFile> selectDocument(Page page) {
		// 根据部门查询待审批公文
		return fileDao.selectDocument(page);
	}

	@Override
	public int selectDocumentCount(int deptId) {
		// 查询待审批公文条数
		return fileDao.selectDocumentCount(deptId);
	}

	@Override
	public void updateDocument(int fileId, int statement) {
		// 审批在线公文
		fileDao.updateDocument(fileId, statement);
	}

	@Override
	public int selectUploadDocumentCounts(int userId) {
		// 查询上传公文记录条数
		return fileDao.selectUploadDocumentCounts(userId);
	}

	@Override
	public List<UploadFile> selectUploadDocument(Page page) {
		// 查询已经上传公文
		return fileDao.selectUploadDocument(page);
	}

	
	
}
