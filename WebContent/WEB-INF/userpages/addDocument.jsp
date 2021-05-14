<%@page import="java.util.Date" %>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.sanxia.oa.bean.User" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<center>
<%
User user = (User)request.getSession().getAttribute("user");
if(user==null){
	  request.getRequestDispatcher("/login.jsp").forward(request, response);
}

  SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
  String time = sdf.format(new Date());
%>
<h2>上传公文</h2><br><br>
<form action="addDocument.do" onsubmit="return checkFileForm();" method="post" enctype="multipart/form-data">
<table width="50%" border="0" cellspacing="5" cellpadding="2">
  <tr>
    <td width="35%" height="30" align="right">当前用户:</td>
    <td width="68%" align="left">
    <input type="text" name="username" id="username" value="${sessionScope.user.username}" readonly="readonly">
    </td>
  </tr>
  <tr>
    <td width="35%" height="30" align="right">公文上传:</td>
    <td width="68%" align="left">
    <input type="file"  name="FILE"  id="file">
    <span id="filemes" style="color: red;"></span>
    </td>
   </tr>
   <tr>
   <td height="35" align="right">审批部门:</td>
    <td align="left"><select name="deptId" id="filedept" onblur="checkFileDept()">
    <option value="--请选择--" selected="selected">--请选择--</option>
    <c:forEach items="${depts }" var="dept" >
     <c:if test="${dept.deptId!=sessionScope.user.deptId }">
     <option value="${dept.deptId }">${dept.deptName}</option>
     </c:if>
    </c:forEach>
    </select>
    <span id="filedeptmes" style="color: red;"></span>
    </td>
   </tr>
  <tr>
    <td width="35%" height="30" align="right">时间:</td>
    <td width="68%" align="left">
    <span><%= time%></span>
    </td>
  </tr>
  <tr>
    <td width="35%" height="30" align="right"></td>
    <td width="68%" align="left">
    <input type="hidden"   name="id"  id="id" value="${sessionScope.user.id}">
    </td>
  </tr>
   <tr>
    <td height="35"></td>
    <td ><input type="submit" value="上传" style="height: 40px; width: 50px;">&nbsp;&nbsp;
    <a href="index"><input style="height: 40px; width: 50px;" type="button" value="返回" style="height: 30px;" ></a></td>
  </tr>
 </table>
</form>
</center>