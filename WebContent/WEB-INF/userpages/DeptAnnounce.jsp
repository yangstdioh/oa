<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<h2 style="color: #454545;">部门公告</h2><br><br><br><hr><br><br>

<table width="80%" border="1" cellspacing="0" height="150px">
	<tr>
		<th height="15">编号</th>
		<th>发布人</th>
		<th>公告标题</th>
		<th>发布时间</th>
		<th>查看</th>
	</tr>
	<c:forEach items="${requestScope.announces}" var="announce">
		<tr>
			<td align="center" height="15">${announce.id }</td>
			<td align="center">${announce.publish }</td>
			<td align="center">${announce.title }</td>
			<td align="center">${announce.date }</td>
			<td align="center"><a href="selectDeptAnnounceById?id=${announce.id }">查看</a></td>
		</tr>
	</c:forEach>
</table>
<center>
<p style="font-size: 20px;"><a href="index">返回首页</a></p>
</center>
