<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<h2 style="color: #454545;">在线请假信息</h2><br><hr><br><br>

<table width="80%" border="1" cellspacing="0" height="250px">
	<tr>
		<th height="15">编号</th>
		<th>姓名</th>
		<th>请假开始时间</th>
		<th>请假结束时间</th>
		<th>请假原因</th>
		<th>当前状态</th>
		<th>修改</th>
		<th>删除</th>
	</tr>
	
	<c:forEach items="${requestScope.Leaves}" var="Leave">
		<tr>
			<td align="center" height="15">${Leave.leaveId }</td>
			<td align="center">${Leave.realName }</td>
			<td align="center">${Leave.startTime }</td>
			<td align="center">${Leave.endTime }</td>
			<td align="center">${Leave.leaveReason }</td>
			<td align="center">
			
			<c:if test="${Leave.statement==0 }">待审批</c:if>
			<c:if test="${Leave.statement==1 }">已通过</c:if>
			<c:if test="${Leave.statement==2 }">未通过</c:if>
			</td>
			<td align="center"><a href="selecteaveByLeaveId?leaveId=${Leave.leaveId }" >修改</a></td>
			<td align="center"><a href="deleteLeaveByLeaveId?LeaveId=${Leave.leaveId }&userId=${Leave.userId }" onclick="return checkUserConfirm();">删除</a></td>
		</tr>
	</c:forEach>
</table>
<table width="80%" bgcolor="1" cellspacing="1" cellpadding="1" background="images/5.jpg">
           <tr>
             <td align="center"><p style="color: blue;">当前第<span id="pageNow">${page.pageNow }</span>页</p></td> 
             <td align="left"><p style="color: blue;">共有<span id="pageCount">${page.pageCount }</span>页</p></td> 
             <td align="center"><p><a href="jumpLeavePage?userid=${sessionScope.user.id}&pageNow=1" onclick="return checkupbacklog();">首页</a></p></td>
             <td align="center"><a href="jumpLeavePage?userid=${sessionScope.user.id}&pageNow=${page.pageNow-1}" onclick="return checkupbacklog();">上一页</a></td> 
             <td align="center"><p><a href="jumpLeavePage?userid=${sessionScope.user.id}&pageNow=${page.pageNow+1}" onclick="return checklastbacklog();">下一页</a></p></td>
             <td align="center"><p><a href="jumpLeavePage?userid=${sessionScope.user.id}&pageNow=${page.pageCount }" onclick="return checklastbacklog();">尾页</a></p></td> 
             </tr>
</table>

