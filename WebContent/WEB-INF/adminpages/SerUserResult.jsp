<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  import="java.net.URLEncoder"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%request.setCharacterEncoding("UTF-8");%>
<h2 style="color: #454545;">用户信息</h2><br><hr>
<div align="center">
<form action="selectUserVague.do" method="post">
<h3 style="color: #454545;">查找用户</h3>
<input type="text" value="${searchname}" id="searchname" name="searchname" style="height: 20px;">
<input type="submit" value="查找" style="height: 25px;">
</form><br><br>
</div>
<table width="80%" border="1" cellspacing="1" cellpadding="1"
	height="250px">
	<tr>
		<th height="20">编号</th>
		<th>账号</th>
		<th>真实姓名</th>
		<th>年龄</th>
		<th>性别</th>
		<th>修改</th>
		<th>删除</th>
	</tr>
	<c:forEach items="${requestScope.users}" var="user">
		<tr>
			<td align="center" height="20">${user.id }</td>
			<td align="center">${user.username}</td>
			<td align="center">${user.realname }</td>
			<td align="center">${user.age }</td>
			<td align="center">${user.sex }</td>
			<td align="center" style="color: blue">
			<a href="upDateUserById?userId=${user.id }">修改</a></td>
			<td align="center" style="color: blue">
			<a href="delUserById?userId=${user.id }" onclick="return checkUserConfirm();">删除</a></td>
		</tr>
	</c:forEach>
</table>
<table width="80%" bgcolor="1" cellspacing="1" cellpadding="1" background="images/5.jpg">
           <tr>
             <td align="center"><p style="color: blue;">当前第<span id="pageNow">${mohuPage.pageNow }</span>页</p></td> 
             <td align="left"><p style="color: blue;">共有<span id="pageCount">${mohuPage.pageCount }</span>页</p></td> 
             <td align="center"><p><a href="jumpFirstUserVaguePage?name=${searchname}&pageNow=1" onclick="return checkupbacklog();">首页</a></p></td>
             <td align="center"><a href="jumpFirstUserVaguePage?name=${searchname}&pageNow=${mohuPage.pageNow-1}" onclick="return checkupbacklog();">上一页</a></td> 
             <td align="center"><p><a href="jumpFirstUserVaguePage?name=${searchname}&pageNow=${mohuPage.pageNow+1}" onclick="return checklastbacklog();">下一页</a></p></td>
             <td align="center"><p><a href="jumpFirstUserVaguePage?name=${searchname}&pageNow=${mohuPage.pageCount }" onclick="return checklastbacklog();">尾页</a></p></td> 
             </tr>
</table>