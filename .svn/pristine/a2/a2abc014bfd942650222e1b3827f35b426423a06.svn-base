<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<center>
<h2>修改待办事项</h2><br><br><br>
<form action="updateBackLog.do" onsubmit="return checkbackLogForm();" method="post">
<table width="50%" border="0" cellspacing="5" cellpadding="2">

  <tr>
    <td width="35%" height="30" align="right">用户账号:</td>
    <td width="68%" align="left">
    <input type="text" readonly="readonly"  name="username"  id="username" value="${sessionScope.user.username}">
    <span id="usernamemes" style="color: red;"></span>
    </td>
  </tr>
  <tr>
  <td width="35%" height="35" align="right">时间:</td>
  <td><input type="text" readonly="readonly" name="date" id="date" onblur="checkdate();" value="${backLog.date }">
  <span id="datemes" style="color: red;"></span></td>
  </tr>
  <tr>
  <td width="35%" height="35" align="right">待办事项:</td>
  <td><textarea rows="3" cols="20" name="backlog" id="backlog" onblur="checkbacklog();" >${backLog.backLog }</textarea>
  <span id="backlogmes" style="color: red;"></span></td>
  </tr>
  <tr>
    <td width="35%" height="30" align="right"></td>
    <td width="68%" align="left">
    <input type="hidden"   name="id"  id="id" value="${backLog.backLogId }">
    </td>
  </tr>
   <tr>
    <td height="35"></td>
    <td ><input type="submit" value="保存" style="height: 40px; width: 50px;">&nbsp;&nbsp;
    <a href="selectbacklog?id=${sessionScope.user.id}&pageNow=1"><input style="height: 40px; width: 50px;" type="button" value="返回" style="height: 30px;" ></a></td>
  </tr>
 </table>
</form>
</center>