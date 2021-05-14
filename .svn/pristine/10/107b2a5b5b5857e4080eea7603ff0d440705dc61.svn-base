<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<center>
<h2>发布部门公告</h2><br><br><br>
<form action="AddDeptAnnounce.do" onsubmit="return checkPublishForm();" method="post">
<table width="50%" border="0" cellspacing="5" cellpadding="2">
  <tr>
    <td width="35%" height="30" align="right">发布人:</td>
    <td width="68%" align="left">
    <input type="text" name="publish" readonly="readonly" value="${sessionScope.user.username}">
    </td>
  </tr>
  <tr>
    <td width="35%" height="30" align="right">公告题目:</td>
    <td width="68%" align="left">
    <input type="text" name="title" onblur="checkTitle();" id="title">
    <span id="titlemes" style="color: red;"></span>
    </td>
  </tr>
  <tr>
  <td width="35%" height="35" align="right">公告内容:</td>
  <td><textarea name="content" id="content" rows="16" cols="44" onblur="checkContent();"></textarea>
  <span id="contentmes" style="color: red;"></span></td>
  </tr>
   <tr>
    <td width="35%" height="35" align="right"></td>
    <td width="68%" align="left">
    <input type="hidden" name="deptId" value="${sessionScope.user.deptId}">
    </td>
  </tr>
   <tr>
    <td height="35"></td>
    <td ><input type="submit" value="保存" style="height: 40px; width: 50px;">&nbsp;&nbsp;
    <a href="index"><input style="height: 40px; width: 50px;" type="button" value="返回" style="height: 30px;" ></a></td>
  </tr>
 
 </table>
</form>
</center>