<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>登录-有点</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/css4/page.css" />
<script src="${pageContext.request.contextPath }/js/houtai/jquery-1.8.3.js"></script>
<script src="${pageContext.request.contextPath }/js/houtai/login.js"></script>
</head>
<body>

	<!-- 登录页面头部 -->
	<div class="logHead">
		<img src="${pageContext.request.contextPath }/static/img4/logo.png" />
	</div>
	<!-- 登录页面头部结束 -->

	<!-- 登录body -->
	<div class="logDiv">
		<img class="logBanner" src="${pageContext.request.contextPath }/static/img4/logBanner.png" />
		<div class="logGet">
			<!-- 头部提示信息 -->
			<div class="logD logDtip">
				<p class="p1">登录</p>
				<p class="p2">团贷网管理人员登录</p>
			</div>
			<!-- 输入框 -->
			<div class="lgD">
				<img class="img1" src="${pageContext.request.contextPath }/static/img4/logName.png" /><input type="text"
					placeholder="输入用户名" id="userName"/>
			</div>
			<div class="lgD">
				<img class="img1" src="${pageContext.request.contextPath }/static/img4/logPwd.png" /><input type="text"
					placeholder="输入用户密码"  id="password"/>
			</div>
			<div class="lgD logD2">
				<input class="getYZM" type="text" />
				<div class="logYZM">
					<img class="yzm" src="${pageContext.request.contextPath }/static/img4/logYZM.png" />
				</div>
			</div>
			<div class="logC">
				<button id="submit">登 录</button>
			</div>
		</div>
	</div>
	<!-- 登录body  end -->

	<!-- 登录页面底部 -->
	<div class="logFoot">
		<p class="p1">版权所有：团贷金融有限公司</p>
		<p class="p2">团贷金融有限公司 登记序号：粤ICP备11003578号-2</p>
	</div>
	<!-- 登录页面底部end -->
</body>
</html>