<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<h2 style="color: #454545;">待办事项</h2><br><hr><br><br>

<table width="80%" border="1" cellspacing="0" height="250px">
	<tr>
		<th height="15">编号</th>
		<th>日期</th>
		<th>待办事项</th>
		<th>修改</th>
		<th>删除</th>
	</tr>
	<c:forEach items="${requestScope.backLogs}" var="backLog">
		<tr>
			<td align="center" height="15">${backLog.backLogId }</td>
			<td align="center">${backLog.date }</td>
			<td align="center">${backLog.backLog }</td>
			<td align="center"><a href="selectbacklogById?backLogId=${backLog.backLogId }">修改</a></td>
			<td align="center"><a href="deletebacklogById?backLogId=${backLog.backLogId }&id=${backLog.id }" onclick="return checkUserConfirm();">删除</a></td>
		</tr>
	</c:forEach>
</table>
<table width="80%" bgcolor="1" cellspacing="1" cellpadding="1" background="images/5.jpg">
           <tr>
             <td align="center"><p style="color: blue;">当前第<span id="pageNow">${page.pageNow }</span>页</p></td> 
             <td align="left"><p style="color: blue;">共有<span id="pageCount">${page.pageCount }</span>页</p></td> 
             <td align="center"><p><a href="selectbacklog?id=${sessionScope.user.id}&pageNow=1" onclick="return checkupbacklog();">首页</a></p></td>
             <td align="center"><span id="upPage"><a href="jumpUpbacklogPage?pageNow=${page.pageNow }&id=${sessionScope.user.id}" onclick="return checkupbacklog();">上一页</a></span></td> 
             <td align="center"><p><a href="jumpDownbacklogPage?pageNow=${page.pageNow }&id=${sessionScope.user.id}" onclick="return checklastbacklog();">下一页</a></p></td>
             <td align="center"><p><a href="jumpLastbacklogPage?pageNow=${page.pageCount }&id=${sessionScope.user.id}" onclick="return checklastbacklog();">尾页</a></p></td> 
             </tr>
</table>
