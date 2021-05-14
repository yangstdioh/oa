<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<h2 style="color: #454545;">已发送邮件信息</h2><br><hr><br><br>

<table width="80%" border="1" cellspacing="0" height="250px">
	<tr>
		<th height="15">编号</th>
		<th>收件人</th>
		<th>邮箱地址</th>
		<th>日期</th>
		<th>邮件主题</th>
		<th>邮件内容</th>
		<th>删除</th>
	</tr>
	<c:forEach items="${requestScope.emails}" var="email">
		<tr>
			<td align="center" height="15">${email.emailId }</td>
			<td align="center">${email.receive }</td>
			<td align="center">${email.emaiAddr }</td>
			<td align="center">${email.date }</td>
			<td align="center">${email.subject }</td>
			<td align="center">${email.emailContent }</td>
			<td align="center"><a href="deleteemailById?emailId=${email.emailId }&userid=${email.userId }&pageNow=${page.pageNow }" onclick="return checkUserConfirm();">删除</a></td>
		</tr>
	</c:forEach>
</table>
<table width="80%" bgcolor="1" cellspacing="1" cellpadding="1" background="images/5.jpg">
           <tr>
             <td align="center"><p style="color: blue;">当前第<span id="pageNow">${page.pageNow }</span>页</p></td> 
             <td align="left"><p style="color: blue;">共有<span id="pageCount">${page.pageCount }</span>页</p></td> 
             <td align="center"><p><a href="selectEmail?pageNow=1&userid=${sessionScope.user.id}" onclick="return checkupbacklog();">首页</a></p></td>
             <td align="center"><a href="selectEmail?pageNow=${page.pageNow-1 }&userid=${sessionScope.user.id}" onclick="return checkupbacklog();">上一页</a></td> 
             <td align="center"><p><a href="selectEmail?pageNow=${page.pageNow+1 }&userid=${sessionScope.user.id}" onclick="return checklastbacklog();">下一页</a></p></td>
             <td align="center"><p><a href="selectEmail?pageNow=${page.pageCount }&userid=${sessionScope.user.id}" onclick="return checklastbacklog();">尾页</a></p></td> 
             </tr>
</table>
