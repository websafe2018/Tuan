<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>首页引用-有点</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/css4/css.css" />
</head>

<body>
	<div id="pageAll">
		<div class="page">
			<!-- main页面样式 -->
			<div class="indexL">
				<img class="indexBn" src="${pageContext.request.contextPath }/static/img4/indexBanner.png" /><br>
			</div>
			<!-- main页面样式end -->
		</div>
	</div>
</body>
</html>