<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	<script>
		    /**
		     * 展开或关闭左部菜单
		     * 
		     */
			function openOrCloseMenu(thisz, isLast) {
				
				//获得所有子级菜单项
				var childNodes = document.getElementsByName(thisz.id);
				
				//定义记录关闭或展开菜单的状态
				var isOpen = false;
				//循环显示或隐藏子级菜单项
				for(i=0; i<childNodes.length; i++) {
					//获得当前子级菜单项
					var childNode = childNodes[i];
					//console.log(childNode.style.display);
					//判断显示或隐藏
					if(childNode.style.display=="none") { //隐藏状态
						//显示当前子级菜单项
						childNode.style.display = "block";
						//展开
						isOpen = true;
					} else { //显示状态
						//隐藏当前子级菜单项
						childNode.style.display = "none";
						//关闭
						isOpen = false;
					}
				}
				//判断是否是最后一个父级菜单选项, 以及是否关闭状态
				if(isLast&&!isOpen) {
					thisz.style.borderBottomLeftRadius = "5px";
					thisz.style.borderBottomRightRadius = "5px";
				} else {
					thisz.style.borderBottomLeftRadius = "0px";
					thisz.style.borderBottomRightRadius = "0px";
				}
			}
	</script>

<aside>
			<!-- 无序列表 制作左部导航菜单 -->
			<ul id="menu">
				<li id="001" class="menu_active menu_active_first" onclick="openOrCloseMenu(this,true)"><a href="javascript:void(0);">在线办公</a></li>
				<li name="001"><a href="jumpaddDocumentPage?userid=${sessionScope.user.id}" >新增公文</a></li>
				<c:if test="${sessionScope.user.roleId==2}">
			    <li name="001"><a href="selectDocument?deptId=${sessionScope.user.deptId}&pageNow=1" >查看待审批公文</a></li>
		        </c:if>
				<li name="001"><a href="selectUploadDocument?userId=${sessionScope.user.id}&pageNow=1" >查看已上传公文</a></li>
				<li id="002" class="menu_active menu_active_last" onclick="openOrCloseMenu(this,true)"><a href="javascript:void(0);">个人中心</a></li>
				<li name="002" class="menu_hidden"><a href="selectPersonInfor.do?id=${sessionScope.user.id}&deptId=${sessionScope.user.deptId}" >查看个人信息</a></li>
				<li name="002" class="menu_hidden"><a href="resetPersonPwdPage">账号密码重置</a></li>
				<li id="003" class="menu_active menu_active_last" onclick="openOrCloseMenu(this,true)"><a href="javascript:void(0);">待办事项</a></li>
				<li name="003" class="menu_hidden"><a href="jumpaddbacklogpage" >新增待办事项</a></li>
				<li name="003" class="menu_hidden"><a href="selectbacklog?id=${sessionScope.user.id}&pageNow=1" >查看待办事项</a></li>
				<li id="004" class="menu_active menu_active_last" onclick="openOrCloseMenu(this,true)"><a href="javascript:void(0);">在线聊天</a><span id="warmMes" style="color: red;"></span></li>
				<li name="004" class="menu_hidden"><a href="jumpSendMessagePage" >发送信息</a></li>
				<li name="004" class="menu_hidden"><a href="selectUnreadMes?receiveId=${sessionScope.user.id}&pageNow=1" onclick="return checkunreadmes();">未读消息</a></li>
				<li id="005" class="menu_active menu_active_last" onclick="openOrCloseMenu(this,true)"><a href="javascript:void(0);">在线打卡</a></li>
				<li name="005" class="menu_hidden"><a href="jumpsignonline?username=${sessionScope.user.username}" >在线打卡</a></li>
				<li name="005" class="menu_hidden"><a href="selectAllSignInfor?userid=${sessionScope.user.id}&pageNow=1" >查询打卡记录</a></li>
				<li id="006" class="menu_active menu_active_last" onclick="openOrCloseMenu(this,true)"><a href="javascript:void(0);">在线请假</a><span style="color: red;" id="counts"></span></li>
				<li name="006" class="menu_hidden"><a href="jumpAddLeavePage" >在线请假</a></li>
				<li name="006" class="menu_hidden"><a href="selectLeave?pageNow=1&userid=${sessionScope.user.id}" >查询请假记录</a></li>
				<li name="006" class="menu_hidden">
				<c:if test="${sessionScope.user.roleId==2}">
			    <a href="selectLeaveBydeptId?deptId=${sessionScope.user.deptId}&pageNow=1" >审批在线请假</a>
		        </c:if>
				</li>
				<li id="007" class="menu_active menu_active_last" onclick="openOrCloseMenu(this,true)"><a href="javascript:void(0);">邮件发送</a></li>
				<li name="007" class="menu_hidden"><a href="jumpSendEmailPage" >发送邮件</a></li>
				<li name="007" class="menu_hidden"><a href="selectEmail?pageNow=1&userid=${sessionScope.user.id}" >查看已发送邮件</a></li>
				
			    <li id="008" class="menu_active menu_active_last" onclick="openOrCloseMenu(this,true)"><a href="javascript:void(0);">部门公告</a></li>
				<li name="008" class="menu_hidden"><a href="selectDeptAnnounce?deptId=${sessionScope.user.deptId}" >查看公告</a></li>
				<c:if test="${sessionScope.user.roleId==2}">
				<li name="008" class="menu_hidden"><a href="jumpAddDeptAnnouncePage" >发布公告</a></li>
		        </c:if>
			</ul>
			<input type="hidden" id="mesUid" value="${sessionScope.user.id}">
		</aside>