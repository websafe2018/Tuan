<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'userupdate.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/houtai/jquery-1.8.3.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/houtai/adminUserupdate.js"></script>
  </head>
  
  <body>
  		<h3>修改用户界面</h3>
		<!-- 用户显示资料start -->
  		<div>
  			<table id="ulist" border="1">
  				<tr><th>编号</th><th>角色名</th><th>用户名</th><th>密码</th><th>手机号码</th><th>邮箱</th><th>注册时间</th></tr>
  				<tr><td id="id">${user.id }</td>
  				<input type="hidden" id="roleId" value="${user.roleId }">
  				<td ><select id="role" >
  				<option value="1">超级管理员</option>
  				<option value="2">系统管理员</option>
  				<option value="3">业务员</option>
  				</select></td>
  				<td><input id="userName" value="${user.userName }"/></td><td><input id="password" value="${user.password }"/></td><td><input id="telNo" value="${user.telNo }"/></td><td><input id="email" value="${user.email }"/></td><td><input id="registerTime" value="${user.registerTime }"/></td></tr>
  			</table>
  			<p><button id="submit">修改</button>&nbsp;&nbsp;&nbsp;&nbsp;<button id="back">返回</button></p>
  		</div>
  		<!-- 用户显示资料end -->
  </body>
</html>
