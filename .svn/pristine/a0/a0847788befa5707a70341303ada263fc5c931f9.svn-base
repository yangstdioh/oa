<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<table width="100%" border="0" cellspacing="2" cellpadding="2"
	background="/imgages/6.jpg">
	
	<tr>
		<td height="50" align="center"><h2>${sessionScope.announce.title}</h2>
		</td>
		<td height="50" align="right">
		<p align="center" style="font-size: 18px;">公告</p>
		<c:forEach items="${sessionScope.announces}" var="announce">
		<p align="center"><a href="selectDeptAnnounceById?id=${announce.id }">${announce.title}</a></p>
		</c:forEach>
		</td>
	</tr>
	<tr>
		<td height="100" align="center"><p>时间:${sessionScope.announce.date}</p></td>
	</tr>
	<tr>
		<td height="150">
		    
			<div style="width: 1200px;left:800px; border: 0px" class="text">
				<p style="font-size: 19px;">&nbsp;&nbsp;${sessionScope.announce.content}</p>
				<p align="right" style="font-size: 20px;">发布人:${sessionScope.announce.publish}</p>
			</div>
		</td>
</table>
<style>
.text {
	white-space: normal;
	word-break: break-all;
	word-wrap: break-word;
}
</style>