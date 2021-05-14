<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<h2 style="color: #454545;">已上传公文列表</h2><br><hr><br><br>

<table width="80%" border="1" cellspacing="0" height="250px">
	
	<tr>
		<th height="15">编号</th>
		<th>文件名称</th>
		<th>上传时间</th>
		<th>查看</th>
		<th>审批部门</th>
		<th>当前状态</th>
	</tr>
	<c:forEach items="${requestScope.uploadFiles}" var="uploadFile">
	  
	  <tr>
			<td align="center" height="15">${uploadFile.fileId }</td>
			<td align="center">${uploadFile.fileName }</td>
			<td align="center">${uploadFile.time }</td>
			<td align="center"><a href="showPdf?fileName=${uploadFile.file }.pdf" target="_blank">查看</a></td>
			
			<td align="center">${Map[uploadFile.fileId] }</td>
			<td align="center">
			<c:if test="${uploadFile.statement==0 }">待审批</c:if>
			<c:if test="${uploadFile.statement==1 }">已通过</c:if>
			<c:if test="${uploadFile.statement==2 }">未通过</c:if>
			</td>
		</tr>
	</c:forEach>
</table>
<table width="80%" bgcolor="1" cellspacing="1" cellpadding="1" background="images/5.jpg">
           <tr>
             <td align="center"><p style="color: blue;">当前第<span id="pageNow">${page.pageNow }</span>页</p></td> 
             <td align="left"><p style="color: blue;">共有<span id="pageCount">${page.pageCount }</span>页</p></td> 
             <td align="center"><p><a href="selectDocument?deptId=${sessionScope.user.deptId}&pageNow=1" onclick="return checkupbacklog();">首页</a></p></td>
             <td align="center"><a href="selectDocument?deptId=${sessionScope.user.deptId}&pageNow=${page.pageNow-1}" onclick="return checkupbacklog();">上一页</a></td> 
             <td align="center"><p><a href="selectDocument?deptId=${sessionScope.user.deptId}&pageNow=${page.pageNow+1}" onclick="return checklastbacklog();">下一页</a></p></td>
             <td align="center"><p><a href="selectDocument?deptId=${sessionScope.user.deptId}&pageNow=${page.pageCount }" onclick="return checklastbacklog();">尾页</a></p></td> 
             </tr>
</table>
