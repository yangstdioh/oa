<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<h2 style="color: #454545;">在线请假审批</h2><br><hr><br><br>

<table width="80%" border="1" cellspacing="0" height="250px">
	<tr>
		<th height="15">编号</th>
		<th>姓名</th>
		<th>请假开始时间</th>
		<th>请假结束时间</th>
		<th>请假原因</th>
		<th>同意</th>
		<th>不同意</th>
	</tr>
	
	<c:forEach items="${requestScope.leaves}" var="Leave">
	  <c:if test="${Leave.userId!=sessionScope.user.id }">
	  <tr>
			<td align="center" height="15">${Leave.leaveId }</td>
			<td align="center">${Leave.realName }</td>
			<td align="center">${Leave.startTime }</td>
			<td align="center">${Leave.endTime }</td>
			<td align="center">${Leave.leaveReason }</td>
			<td align="center"><a href="opproveLeaveByLeaveId?leaveId=${Leave.leaveId }&statement=1&deptId=${Leave.deptId }&pageNow=${page.pageNow }">同意</a></td>
			<td align="center"><a href="opproveLeaveByLeaveId?leaveId=${Leave.leaveId }&statement=2&deptId=${Leave.deptId }&pageNow=${page.pageNow }">不同意</a></td>
		</tr>
	  </c:if>
	</c:forEach>
</table>
<table width="80%" bgcolor="1" cellspacing="1" cellpadding="1" background="images/5.jpg">
           <tr>
             <td align="center"><p style="color: blue;">当前第<span id="pageNow">${page.pageNow }</span>页</p></td> 
             <td align="left"><p style="color: blue;">共有<span id="pageCount">${page.pageCount }</span>页</p></td> 
             <td align="center"><p><a href="jumpLeaveBydeptId?deptId=${sessionScope.user.deptId}&pageNow=1" onclick="return checkupbacklog();">首页</a></p></td>
             <td align="center"><a href="jumpLeaveBydeptId?deptId=${sessionScope.user.deptId}&pageNow=${page.pageNow-1}" onclick="return checkupbacklog();">上一页</a></td> 
             <td align="center"><p><a href="jumpLeaveBydeptId?deptId=${sessionScope.user.deptId}&pageNow=${page.pageNow+1}" onclick="return checklastbacklog();">下一页</a></p></td>
             <td align="center"><p><a href="jumpLeaveBydeptId?deptId=${sessionScope.user.deptId}&pageNow=${page.pageCount }" onclick="return checklastbacklog();">尾页</a></p></td> 
             </tr>
</table>

