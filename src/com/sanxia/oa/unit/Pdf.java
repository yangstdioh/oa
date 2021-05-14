package com.sanxia.oa.unit;

import java.io.File;
import java.io.FileInputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *作者：杨 赢
 *时间：2018年4月1日
 *作用: pdf预览实现工具类
 */
@Controller
public class Pdf {
	 @RequestMapping("/showPdf")  
	    public void pdfStreamHandeler(HttpServletRequest request, HttpServletResponse response,@RequestParam("fileName")String fileName) {  
	        String filePath = "D:/fileupload/" + fileName;  
	        File file = new File(filePath);  
	        byte[] data = null;  
	        try {  
	            FileInputStream input = new FileInputStream(file);  
	            data = new byte[input.available()];  
	            input.read(data);  
	            response.getOutputStream().write(data);  
	            input.close();  
	        } catch (Exception e) {  
	            System.out.print("pdf文件处理异常：" + e.getMessage());  
	        }  
	  
	    }  
}
