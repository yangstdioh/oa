<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<h2 style="color: #454545;">在线公文审批</h2><br><hr><br><br>

<table width="80%" border="1" cellspacing="0" height="250px">
	
	<tr>
		<th height="15">编号</th>
		<th>公文上传者</th>
		<th>上传时间</th>
		<th>文件名称</th>
		<th>在线预览</th>
		<th>同意</th>
		<th>不同意</th>
	</tr>
	<c:forEach items="${requestScope.uploadFiles}" var="uploadFile">
	  <c:if test="${uploadFile.userId!=sessionScope.user.id }">
	  <tr>
			<td align="center" height="15">${uploadFile.fileId }</td>
			<td align="center">${uploadFile.userName }</td>
			<td align="center">${uploadFile.time }</td>
			<td align="center">${uploadFile.fileName }</td>
			<td align="center"><a href="showPdf?fileName=${uploadFile.file }.pdf" target="_blank">在线预览</a></td>
			<td align="center"><a href="approveDocument?deptId=${sessionScope.user.deptId}&pageNow=${page.pageNow}&statement=1&id=${uploadFile.fileId }">同意</a></td>
			<td align="center"><a href="approveDocument?deptId=${sessionScope.user.deptId}&pageNow=${page.pageNow}&statement=2&id=${uploadFile.fileId }">不同意</a></td>
		</tr>
	  </c:if>
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
