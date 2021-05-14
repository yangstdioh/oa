<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<center>
<h2>在线请假</h2><br><br><br>
<form action="addLeave.do" onsubmit="return checkLeaveForm();" method="post">
<table width="50%" border="0" cellspacing="5" cellpadding="2">
   <tr>
    <td width="35%" height="30" align="right"></td>
    <td width="68%" align="left">
    <input type="hidden"   name="userId"  id="userId" value="${sessionScope.user.id}">
    </td>
  </tr>
  <tr>
    <td width="35%" height="30" align="right">姓名:</td>
    <td width="68%" align="left">
    <input type="text" readonly="readonly"  name="realName"  id="realName" value="${sessionScope.user.realname}">
    <span id="realnamemes" style="color: red;"></span>
    </td>
  <tr>
    <td width="35%" height="30" align="right">请假开始时间:</td>
    <td width="68%" align="left">
    <input type="text" readonly="readonly"  name="startTime"  id="startTime" onblur="checkstartTime();">
    <span id="startTimemes" style="color: red;"></span>
    </td>
  </tr>
  <tr>
  <td width="35%" height="35" align="right">请假结束时间:</td>
  <td><input type="text" readonly="readonly" name="endTime" id="endTime" onblur="checkendTime();">
  <span id="endTimemes" style="color: red;"></span></td>
  </tr>
  <tr>
  <td width="35%" height="35" align="right">请假原因:</td>
  <td><textarea rows="3" cols="20" name="leaveReason" id="leaveReason" onblur="checkleaveReason();"></textarea>
  <span id="leaveReasonmes" style="color: red;"></span></td>
  </tr>
   <tr>
    <td width="35%" height="30" align="right"></td>
    <td width="68%" align="left">
    <input type="hidden"   name="deptId"  value="${sessionScope.user.deptId}">
    </td>
   <tr>
    <td height="35"></td>
    <td ><input type="submit" value="保存" style="height: 40px; width: 70px;">&nbsp;&nbsp;
    <a href="index"><input style="height: 40px; width: 70px;" type="button" value="返回" style="height: 30px;" ></a></td>
  </tr>
 </table>
</form>
</center>