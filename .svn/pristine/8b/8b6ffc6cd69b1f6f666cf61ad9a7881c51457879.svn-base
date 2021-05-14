<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<h2 style="color: #454545;">未读信息</h2><br><hr><br><br>

<table width="80%" border="1" cellspacing="0" height="250px">
	<tr>
		<th height="15">编号</th>
		<th>发送人</th>
		<th>时间</th>
		<th>内容</th>
		<th>已读</th>
		<th>回复</th>
	</tr>
	<c:forEach items="${requestScope.messagess}" var="messages">
		<tr>
			<td align="center" height="15">${messages.mesId }</td>
			<td align="center">${messages.sendName }</td>
			<td align="center">${messages.time }</td>
			<td align="center">${messages.message }</td>
			<td align="center"><a href="messageReaded?mesId=${messages.mesId }&pageNow=${page.pageNow }&receiveId=${sessionScope.user.id}">已读</a></td>
			<td align="center"><a href="jumpReplyMessagePage?mesId=${messages.mesId }">回复</a></td>
		</tr>
	</c:forEach>
</table>
<table width="80%" bgcolor="1" cellspacing="1" cellpadding="1" background="images/5.jpg">
           <tr>
             <td align="center"><p style="color: blue;">当前第<span id="pageNow">${page.pageNow }</span>页</p></td> 
             <td align="left"><p style="color: blue;">共有<span id="pageCount">${page.pageCount }</span>页</p></td> 
             <td align="center"><p><a href="selectUnreadMes?receiveId=${sessionScope.user.id}&pageNow=1" onclick="return checkupbacklog();">首页</a></p></td>
             <td align="center"><a href="selectUnreadMes?pageNow=${page.pageNow-1 }&receiveId=${sessionScope.user.id}" onclick="return checkupbacklog();">上一页</a></td> 
             <td align="center"><p><a href="selectUnreadMes?pageNow=${page.pageNow+1 }&receiveId=${sessionScope.user.id}" onclick="return checklastbacklog();">下一页</a></p></td>
             <td align="center"><p><a href="selectUnreadMes?pageNow=${page.pageCount }&receiveId=${sessionScope.user.id}" onclick="return checklastbacklog();">尾页</a></p></td> 
             </tr>
</table>
