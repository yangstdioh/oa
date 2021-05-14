<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<h2 style="color: #454545;">用户信息</h2><br><hr>
<div align="center">
<form action="selectUserVague.do" method="post">
<h3 style="color: #454545;">查找用户</h3>
<input type="text" name="searchname" style="height: 20px;">
<input type="submit" value="查找" style="height: 25px;">
</form><br>
</div>
<table width="80%" border="1" cellspacing="0" height="250px">
	<tr>
		<th height="15">编号</th>
		<th>用户名</th>
		<th>真实姓名</th>
		<th>生日</th>
		<th>籍贯</th>
		<th>电话</th>
		<th>邮箱</th>
		<th>年龄</th>
		<th>性别</th>
		<th>修改</th>
		<th>删除</th>
	</tr>
	<c:forEach items="${requestScope.users}" var="user">
		<tr>
			<td align="center" height="15">${user.id }</td>
			<td align="center">${user.username}</td>
			<td align="center">${user.realname }</td>
			<td align="center">${user.birthday }</td>
			<td align="center">${user.address }</td>
			<td align="center">${user.phonenumber }</td>
			<td align="center">${user.email }</td>
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
             <td align="center"><p style="color: blue;">当前第<span id="pageNow">${page.pageNow }</span>页</p></td> 
             <td align="left"><p style="color: blue;">共有${page.pageCount }页</p></td> 
             <td align="center"><p><a href="selectAllUser">首页</a></p></td>
             <td align="center"><span id="upPage"><a href="jumpUpUserPage?pageNow=${page.pageNow }">上一页</a></span></td> 
             <c:if test="true"><td align="center"><p><a href="jumpDownUserPage?pageNow=${page.pageNow }">下一页</a></p></td></c:if>
             <td align="center"><p><a href="jumpLastUserPage?pageNow=${page.pageCount }">尾页</a></p></td> 
             <td align="center">
             <form action="jumpUserPage.do" method="post" onsubmit="return checkPageNow();">
             <span style="color: blue;"> 页数</span>
             <input  type="text" name="pageNow" id="jumpPage" value="${requestScope.jumpPage }" onblur="checkPageNow();" style="width: 80px;">
             <input type="submit" value="跳转">
             <span style="color: red;" id="jumpPagemes">${requestScope.jumpPagemes }</span>
             </form>
             </td>
</table>
