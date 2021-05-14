<%@ page import="java.text.SimpleDateFormat" import="java.util.Date"  import="com.sanxia.oa.bean.User" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.sanxia.oa.unit.MAC"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
   String macaddr = new MAC().getMAC();
   request.setAttribute("macaddr", macaddr);
   //获取当前日期
   Date day=new Date();  
   SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
   String date = df.format(day);
   request.setAttribute("date", date); 
%>
<center>
<h2>在线签到</h2><br><br><br>
<form action="addSignInfor.do"  method="post">
<table width="50%" border="0" cellspacing="5" cellpadding="2">
  <tr>
    <td width="35%" height="30" align="right">用户id:</td>
    <td width="68%" align="left">
    <input type="text" readonly="readonly" name="userid" value="${sessionScope.user.id}">
    </td>
  </tr>
  <tr>
    <td width="35%" height="30" align="right">用户账号:</td>
    <td width="68%" align="left">
    <input type="text" readonly="readonly"  name="username" value="${sessionScope.user.username}">
    <span style="color: red;">${usernamemes}</span>
    </td>
  </tr>
  <tr>
    <td width="35%" height="30" align="right">日期:</td>
    <td width="68%" align="left">
    <input type="text" readonly="readonly"  name="date" value="${date}">
    </td>
  </tr>
  <tr>
  <td width="35%" height="35" align="right">MAC地址:</td>
  <td><input type="text" readonly="readonly" name="macaddress" value="${macaddr}">
 </td>
   <tr>
    <td height="35"></td>
    <td ><input type="submit" value="签到" style="height: 40px; width: 60px;">&nbsp;&nbsp;
    <a href="index"><input style="height: 40px; width: 60px;" type="button" value="返回" style="height: 30px;" ></a></td>
  </tr>
 </table>
</form>
</center>