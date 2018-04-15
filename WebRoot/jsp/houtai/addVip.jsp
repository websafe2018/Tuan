<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML >
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'addVip.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script type="text/javascript" src="${pageContext.request.contextPath }/js/houtai/jquery-1.8.3.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/houtai/addVip.js"></script>
  </head>
  
  <body>
       	  <div class="conShow">
					<table  cellspacing="0" cellpadding="0" id="vipList">
						
							<tr><td width="66px" class="tdColor tdC">用户名</td><td><input id="userName" ><span id="userMsg"></span></td></tr>
							<tr><td width="188px" class="tdColor">姓名</td><td><input id="realName" ><span id="nameMsg"></span></td></tr>
							<tr><td width="235px" class="tdColor">手机号码</td><td><input id="telNo" ><span id="telMsg"></span></td></tr>
							<tr><td width="235px" class="tdColor">身份证号码</td><td><input id="idnumber" ><span id="idMsg"></span></td></tr>
							<tr><td width="235px" class="tdColor">邮箱</td><td><input id="email" ><span id="emailMsg"></span></td></tr>
							<tr><td width="235px" class="tdColor">银行卡</td><td><input id="bankNumber" ><span id="bankMsg"></span></td></tr>
							<tr><td width="220px" class="tdColor">所在城市</td><td><input id="address" ><span id="addressMsg"></span></td></tr>
							<tr><td width="235px" class="tdColor">工作单位</td><td><input id="unitAddres" ><span id="unitMsg"></span></td></tr>
							<tr><td width="290px" class="tdColor">密码</td><td><input id="password" ><span id="passMsg"></span></td></tr> 
							<!-- <tr><td width="282px" class="tdColor">注册时间</td><td><input id="registerTime" ></td></tr> -->
							<tr><td width="130px" class="tdColor">操作</td><td><button id="submit">新增</button></td></tr>
		   </table>	
		   <p style="color:red" id="msg"></p>
	</div>
  </body>
</html>
