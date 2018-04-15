<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>会员密码重置-有点</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/css4/css.css" />
<script type="text/javascript" src="${pageContext.request.contextPath }/js/houtai/jquery-1.8.3.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/houtai/vipapdute.js"></script>
</head>
<body>
	<div id="pageAll">
		<div class="pageTop">
			<div class="page">
				<img src="${pageContext.request.contextPath }/static/img4/coin02.png" /><span><a href="#">首页</a>&nbsp;-&nbsp;<a
					href="#">公共管理</a>&nbsp;-</span>&nbsp;密码重置
			</div>
		</div>
		<div class="page ">
			<!-- 会员注册页面样式 -->
			<div class="banneradd bor">
				<div class="baTopNo">
					<span>会员注册</span>
				</div>
				<div class="baBody">
					<div class="bbD">会员UID：&nbsp;&nbsp;&nbsp;${adminUser.id}</div>
					<div class="bbD">
					<input type="hidden" id="oldPass" value="${adminUser.password}"/>
					<input type="hidden" id="id" value="${adminUser.id}"/>
						旧密码：<input type="text" class="input3" id="apass"/>&nbsp;&nbsp;<span class="bbD" style="color: red;" id="oldMsg"></span>
					</div>
					<div class="bbD">
						新密码：<input type="password" class="input3" id="newPass"/>&nbsp;&nbsp;<span class="bbD" style="color: red;" id="newMsg"></span>
					</div>
					<div class="bbD">
						<p class="bbDP">
							<button class="btn_ok btn_yes" href="#" id="submit">修改</button>
							<a class="btn_ok btn_no" href="index.jsp" target="_parent">取消</a>
						</p>
					</div>
				</div>
			</div>

			<!-- 会员注册页面样式end -->
		</div>
	</div>
</body>
</html>