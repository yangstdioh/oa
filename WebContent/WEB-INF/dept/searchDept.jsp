<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<h2 style="color: #454545;">部门信息</h2><br><br><br><hr>
<div align="center">
<form action="selectDeptVague.do" method="post">
<h3 style="color: #454545;">查找部门</h3>
<input type="text" name="searchname" style="height: 20px;" value="${searchname }">
<input type="hidden" name="pageNow" value="1"> 
<input type="submit" value="查找" style="height: 25px;">
</form><br>
</div>
<table width="80%" border="1" cellspacing="0" height="250px">
	<tr>
		<th height="15">编号</th>
		<th>部门名称</th>
		<th>操作人</th>
		<th>添加时间</th>
		<th>修改时间</th>
		<th>修改</th>
		<th>删除</th>
	</tr>
	<c:forEach items="${requestScope.depts}" var="dept">
		<tr>
			<td align="center" height="10">${dept.deptId }</td>
			<td align="center">${dept.deptName}</td>
			<td align="center">${dept.operator }</td>
			<td align="center">${dept.addTime }</td>
			<td align="center">${dept.upTime }</td>
			<td align="center" style="color: blue">
			<a href="upDateDeptById?deptId=${dept.deptId }">修改</a></td>
			<td align="center" style="color: blue">
			<a href="delDeptById?deptId=${dept.deptId }"  onclick="return checkConfirm();">删除</a></td>
		</tr>
	</c:forEach>
</table>
<table width="80%" bgcolor="1" cellspacing="1" cellpadding="1" background="images/5.jpg">
           <tr>
             <td align="center"><p style="color: blue;">当前第<span id="pageNow">${mohuPage.pageNow }</span>页</p></td> 
             <td align="left"><p style="color: blue;">共有<span id="pageCount">${mohuPage.pageCount }</span>页</p></td> 
             <td align="center"><p><a href="jumpDeptPage?searchname=${searchname}&pageNow=1" onclick="return checkupbacklog();">首页</a></p></td>
             <td align="center"><a href="jumpDeptPage?searchname=${searchname}&pageNow=${mohuPage.pageNow-1}" onclick="return checkupbacklog();">上一页</a></td> 
             <td align="center"><p><a href="jumpDeptPage?searchname=${searchname}&pageNow=${mohuPage.pageNow+1}" onclick="return checklastbacklog();">下一页</a></p></td>
             <td align="center"><p><a href="jumpDeptPage?searchname=${searchname}&pageNow=${mohuPage.pageCount }" onclick="return checklastbacklog();">尾页</a></p></td> 
             </tr>
</table>