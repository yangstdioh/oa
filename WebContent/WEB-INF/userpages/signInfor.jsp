<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<h2 style="color: #454545;">个人打卡记录</h2><br><hr>

<table width="80%" border="1" cellspacing="0" height="250px">
	<tr>
		<th height="15">编号</th>
		<th>用户名</th>
		<th>MAC地址(物理地址)</th>
		<th>打卡日期</th>
	</tr>
	<c:forEach items="${requestScope.signInfors}" var="signInfor">
		<tr>
			<td align="center" height="15">${signInfor.id }</td>
			<td align="center">${signInfor.username }</td>
			<td align="center">${signInfor.macAddr }</td>
			<td align="center">${signInfor.date }</td>
		</tr>
	</c:forEach>
</table>
<table width="80%" bgcolor="1" cellspacing="1" cellpadding="1" background="images/5.jpg">
          <tr>
             <td align="center"><p style="color: blue;">当前第<span id="pageNow">${page.pageNow }</span>页</p></td> 
             <td align="left"><p style="color: blue;">共有${page.pageCount }页</p></td> 
             <td align="center"><p><a href="selectAllSignInfor?userid=${sessionScope.user.id}&pageNow=1">首页</a></p></td>
             <td align="center"><span id="upPage"><a href="jumpUpSignInforPage?pageNow=${page.pageNow }&userid=${sessionScope.user.id}">上一页</a></span></td> 
             <td align="center"><p><a href="jumpDownSignInforPage?pageNow=${page.pageNow }&userid=${sessionScope.user.id}">下一页</a></p></td>
             <td align="center"><p><a href="selectAllSignInfor?pageNow=${page.pageCount }&userid=${sessionScope.user.id}">尾页</a></p></td> 
            </tr>
</table>
