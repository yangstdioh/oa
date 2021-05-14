package com.sanxia.oa.control;

import java.io.File;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.sanxia.oa.bean.Page;
import com.sanxia.oa.bean.UploadFile;
import com.sanxia.oa.bean.User;
import com.sanxia.oa.server.DeptService;
import com.sanxia.oa.server.FileService;
import com.sanxia.oa.server.UserService;


/**
 *作者：杨 赢
 *时间：2018年3月28日
 *作用: 公文管理控制类
 */
@Controller
public class FileAction {
	@Autowired
	private FileService fileService;
	@Autowired
	private UserService userService;
	@Autowired
	private DeptService deptService;
	//上传公文文件
	@RequestMapping("/addDocument.do")
	public String addDocument(HttpServletRequest request){
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		//创建FileItem的工厂
    	DiskFileItemFactory factory = new DiskFileItemFactory();

    	//设置文件上传的内存大小
    	factory.setSizeThreshold(1024*1024);//1M
    	//当上传文件超出内存最大值，则存放到临时目录
    	factory.setRepository(new File("D:\\filetemp\\"));

    	//利用工厂创建文件上传的对象
    	ServletFileUpload upload = new ServletFileUpload(factory);
            
    	//设置单个上传文件大小
    	upload.setSizeMax(1024*1024*20);//20M
    	
    	//获取当前时间
    	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
    	String time = sdf.format(new Date());
    	UploadFile uploadFile = new UploadFile(time,0);
    	Map< String, Object> map = new HashMap<String, Object>();
    	try {
    		//处理表单提交的请求，得到FileItem
			List<FileItem> items = upload.parseRequest(request);
			Iterator iter = items.iterator();
			//遍历fileitem
			while (iter.hasNext()) {
			    FileItem item = (FileItem) iter.next();
			    //普通文本域
			    if (item.isFormField()) {
			    	//表单属性name的值
			    	String fieldName = item.getFieldName();
			    	//表单属性的值
			    	String username = item.getString();
			    	map.put(fieldName, username);
			    } else {//文件域
			    	//文本框的属性名
			    	String fieldName = item.getFieldName();
			    	//上传文件名称
			    	String name = item.getName();
			    	map.put(fieldName, name);
			    	//随机生成文件名
			    	long file = new Date().getTime();
			    	map.put("file",file);
			    	String filename="D://fileupload//"+file+".pdf";
			    	item.write(new File(filename));
			    }
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
    	//保存用户ID
    	uploadFile.setUserId(Integer.parseInt((String)map.get("id")));
    	User user = userService.selectUserById(Integer.parseInt((String)map.get("id")));
    	//保存用户名
    	uploadFile.setUserName(user.getUsername());
    	//保存文件名
    	uploadFile.setFileName((String)map.get("FILE"));
    	//保存部门ID
    	uploadFile.setDeptId(Integer.parseInt((String)map.get("deptId")));
    	//保存文件唯一Id
    	uploadFile.setFile((long)map.get("file"));
    	//调用服务层保存文档
    	System.out.println(uploadFile);
    	fileService.addDocument(uploadFile);
    	return "personSuccess";
	}
	//查询待审批公文
	@RequestMapping("/selectDocument")
	public ModelAndView selectDocument(@RequestParam("deptId")int deptId,
			@RequestParam("pageNow")int pageNow){
		Page page = new Page();
		//设置当前页数
		page.setPageNow(pageNow);
		page.setStartNum((pageNow-1)*page.getPageSize());
		//查询记录条数
		int counts = fileService.selectDocumentCount(deptId);
		//保存部门ID到页面实体类中
		page.setTotalCount(deptId);
		//计算总页数
		if (counts % page.getPageSize() == 0) {
			// 当数据总数与没有数据条数相除的余数为零
			page.setPageCount(counts / page.getPageSize());
		} else {
			page.setPageCount(counts / page.getPageSize() + 1);
		}
		 List<UploadFile> uploadFiles = fileService.selectDocument(page);
		 
		 ModelAndView mv = new ModelAndView("approveDocumentsPage");
		// 将记录绑定到视图解析器上
		mv.addObject("uploadFiles", uploadFiles);
		// 将页面实例绑定到视图解析器上
		mv.addObject("page", page);
		return mv;
	}
	//审批公文意见
	@RequestMapping("/approveDocument")
	public ModelAndView approveDocument(@RequestParam("id")int fileId,
			@RequestParam("statement")int statement,
			@RequestParam("deptId")int deptId,
			@RequestParam("pageNow")int pageNow){
		fileService.updateDocument(fileId, statement);
		return selectDocument(deptId,pageNow);
	}
	//查询已上传公文
	@RequestMapping("/selectUploadDocument")
	public ModelAndView selectUploadDocument(@RequestParam("userId")int userId,
			@RequestParam("pageNow")int pageNow){
		Page page = new Page();
		//设置当前页数
		page.setPageNow(pageNow);
		page.setStartNum((pageNow-1)*page.getPageSize());
		//查询记录条数
		int counts  = fileService.selectUploadDocumentCounts(userId);
		//保存部门ID到页面实体类中
		page.setTotalCount(userId);
		//计算总页数
		if (counts % page.getPageSize() == 0) {
		// 当数据总数与没有数据条数相除的余数为零
			page.setPageCount(counts / page.getPageSize());
		} else {
			page.setPageCount(counts / page.getPageSize() + 1);
	    }
		Map<Integer, String> Map = new HashMap<Integer, String>();
		List<UploadFile>  uploadFiles = fileService.selectUploadDocument(page);
		ModelAndView mv = new ModelAndView("uploadDocumentsPage");
		for (UploadFile uploadFile : uploadFiles) {
			//将部门名称保存到MAP中
			Map.put(uploadFile.getFileId(), deptService.selectDeptById(uploadFile.getDeptId()).getDeptName());
		}
		// 将记录绑定到视图解析器上
		mv.addObject("uploadFiles", uploadFiles);
		// 将页面实例绑定到视图解析器上
		mv.addObject("page", page);
		mv.addObject("Map", Map);
		return mv;
	}
	
}
