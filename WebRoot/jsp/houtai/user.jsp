<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>管理员管理-有点</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/css4/css.css" />
<script type="text/javascript" src="${pageContext.request.contextPath }/js/js4/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/houtai/user.js"></script>
<!-- <script type="text/javascript" src="${pageContext.request.contextPath }/static/js4/page.js" ></script> -->
</head>

<body>
	<div id="pageAll">
		<div class="pageTop">
			<div class="page">
				<img src="${pageContext.request.contextPath }/static/img4/coin02.png" /><span><a href="#">首页</a>&nbsp;-&nbsp;-</span>&nbsp;管理员管理
			</div>
		</div>

		<div class="page">
			<!-- user页面样式 -->
			<div class="connoisseur">
				<div class="conform">
					<!-- <form> -->
						<div class="cfD">
							<input class="userinput" type="text" placeholder="输入用户名" id="userName"/>&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;
							<input class="userinput vpr" type="text" placeholder="输入用户密码" id="password"/>
							<button class="userbtn" id="submit">添加</button>
							&nbsp;&nbsp;&nbsp;&nbsp;<span id="msg" ></span>
						</div>
					<!-- </form> -->
				</div>
				<!-- user 表格 显示 -->
				<div class="conShow">
					<table border="1" cellspacing="0" cellpadding="0" id="ulist">
						<tr>
							<td width="66px" class="tdColor tdC">序号</td>
							<td width="435px" class="tdColor">角色名</td>
							<td width="400px" class="tdColor">用户名</td>
							<td width="630px" class="tdColor">添加时间</td>
							<td width="130px" class="tdColor">操作</td>
						</tr>
						<!--  <tr height="40px">
							<td>1</td>
							<td>运营专员</td>
							<td>山下就只</td>
							<td>2015-25-36 12:12</td>
							<td><a href="${pageContext.request.contextPath }/houtai/connoisseuradd.html"><img class="operation"
									src="${pageContext.request.contextPath }/static/img4/update.png"></a> <img class="operation delban"
								src="${pageContext.request.contextPath }/static/img4/delete.png"></td>
						</tr> -->
					</table>
					<div class="paging">此处是分页</div>
				</div>
				<!-- user 表格 显示 end-->
			</div>
			<!-- user页面样式end -->
		</div>

	</div>


	<!-- 删除弹出框 -->
	<div class="banDel">
		<div class="delete">
			<div class="close">
				<a><img src="${pageContext.request.contextPath }/static/img4/shanchu.png" /></a>
			</div>
			<p class="delP1">你确定要删除此条记录吗？</p>
			<p class="delP2">
				<a href="#" class="ok yes" id="yes">确定</a><a id="no" class="ok no">取消</a>
			</p>
		</div>
	</div>
	<!-- 删除弹出框  end-->
</body>

<script type="text/javascript">

</script>
</html>