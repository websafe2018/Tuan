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
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/houtai/userupdate.js"></script>
  </head>
  
  <body>
    	<div class="conShow">
					<table border="1" cellspacing="0" cellpadding="0" id="vipList">
						<tr>
							<td width="66px" class="tdColor tdC">序号</td>
							<td width="188px" class="tdColor">姓名</td>
							<td width="235px" class="tdColor">手机号码</td>
							<td width="235px" class="tdColor">身份证号码</td>
							<td width="235px" class="tdColor">邮箱</td>
							<td width="235px" class="tdColor">银行卡</td>
							<td width="220px" class="tdColor">所在城市</td>
							<td width="235px" class="tdColor">工作单位</td>
							<td width="290px" class="tdColor">会员余额</td>
							<td width="282px" class="tdColor">注册时间</td>
							<td width="130px" class="tdColor">操作</td>
						</tr>
						<tr>
						<td id="id">${user.id }</td>
							<td><input id="realName" value="${user.realName }"></td>
							<td><input id="telNo" value="${user.telNo }"></td>
							<td><input id="idnumber" value="${user.idnumber }"></td>
							<td><input id="email" value="${user.email }"></td>
							<td><input id="bankNumber" value="${user.bankNumber }"></td>
							<td><input id="address" value="${user.address }"></td>
							<td><input id="unitAddres" value="${user.unitAddres }"></td>
							<td><input id="acBalance" value="${user.acBalance }"></td>
							<td><input id="registerTime" value="${user.registerTime }"></td>
							<td><button id="submit">修改</button></td>
						</tr>
		</table>
	</div>
  </body>
</html>
