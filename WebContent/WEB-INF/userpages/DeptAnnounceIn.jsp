<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<table width="100%" border="0" cellspacing="2" cellpadding="2"
	background="/imgages/6.jpg">
	
	<tr>
		<td height="50" align="center"><h2>${announce.title}</h2></td>
	</tr>
	<tr>
		<td height="100" align="center"><p>时间:${announce.date}</p></td>
	</tr>
	<tr>
		<td height="150">
		    
			<div style="width: 1200px;left:800px; border: 0px" class="text">
				<p style="font-size: 19px;">&nbsp;&nbsp;${announce.content}</p>
				<p align="right" style="font-size: 20px;">发布人:${announce.publish}</p>
			</div>
		</td>
</table>
<center>
<p style="font-size: 20px;"><a href="index">返回首页</a></p>
</center>

<style>
.text {
	white-space: normal;
	word-break: break-all;
	word-wrap: break-word;
}
</style>