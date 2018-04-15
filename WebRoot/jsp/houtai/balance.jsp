<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>财务管理-充值管理</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/css4/css.css" />
<script type="text/javascript" src="${pageContext.request.contextPath }/js/houtai/jquery-1.8.3.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/houtai/balance.js"></script>
<!-- <script type="text/javascript" src="${pageContext.request.contextPath }/static/js4/page.js" ></script> -->
</head>

<body>
	<div id="pageAll">
		<div class="pageTop">
			<div class="page">
				<img src="${pageContext.request.contextPath }/static/img4/coin02.png" /><span><a href="#">首页</a>&nbsp;-&nbsp;<a
					href="#">财务管理</a>&nbsp;-</span>&nbsp;充值管理
			</div>
		</div>

		<div class="page">
			<!-- balance页面样式  -->
			<div class="connoisseur">
				<div class="conform">
					<!-- <form> -->
						<div class="cfD">
							时间段：<input class="vinput" type="text" id="minTime"/>&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;
							<input class="vinput vpr" type="text" id="maxTime"/> 
							<!--  收入类型：<select class="bselect"><option>收入</option></select> 收支来源：<select
								class="bselect"><option>充值</option></select> -->
						</div>
						<div class="cfD">
							<input class="addUser" type="text" placeholder="用户名" id="condition"/>
							<button class="button" id="submit">搜索</button>
						</div>
					<!-- </form> -->
				</div>
				<!-- bbalance 表格 显示 -->
				<div class="conShow"  >
					<table border="1" cellspacing="0" cellpadding="0" id="bList">
						<tr>
							<td width="66px" class="tdColor tdC">序号</td>
							<td width="210px" class="tdColor">用户名</td>
							<td width="235px" class="tdColor">充值金额</td>
							<td width="235px" class="tdColor">充值记录</td>
							<!--<td width="280px" class="tdColor">收支来源</td>
							<td width="380px" class="tdColor">时间</td>-->
						</tr>
						<!-- <tr>
							<td>1</td>
							<td>山下就只</td>
							<td>123.00</td>
							<td><a href="#">..详情</a></td>
						</tr><tr>
							<td>1</td>
							<td>山下就只</td>
							<td>123.00</td>
							<td><a href="#">..详情</a></td>
						</tr>
						<tr>
							<td>1</td>
							<td>山下就只</td>
							<td>123.00</td>
							<td><a href="#">..详情</a></td>
						</tr><tr>
							<td>1</td>
							<td>山下就只</td>
							<td>123.00</td>
							<td><a href="#">..详情</a></td>
						</tr> -->
					</table>
					<div class="paging">此处是分页</div>
				</div>
				<div id="showB" >
					<span style="font-size: 20px; color: #438eb9;">充值流水清单</span>
				<hr style="margin-bottom: 10px;" />
					<table border="1" cellspacing="0" cellpadding="0" id="showB_id">
						<tr>
							<td width="66px" class="tdColor tdC">序号</td>
							<td width="210px" class="tdColor">用户名</td>
							<td width="235px" class="tdColor">充值单号</td>
							<td width="180px" class="tdColor">充值金额</td>
							<td width="180px" class="tdColor">充值时间</td>
							<td width="180px" class="tdColor">状态</td>
						</tr>
						<tr><td colspan="6"><h4>请点击详情查看详细流水记录！</h4></td></tr>
						<!-- <tr>
							<td>1</td>
							<td>山下就只</td>
							<td>12312332325567</td>
							<td>123.00</td>
							<td>2017-9-10</td>
							<td>已到账</td>
						</tr>
						<tr>
							<td>1</td>
							<td>山下就只</td>
							<td>12312332325567</td>
							<td>123.00</td>
							<td>2017-9-15</td>
							<td>充值中</td>
						</tr> -->
					</table>
					<!-- <div class="paging">此处是分页</div> -->
				</div>
				<!-- balance 表格 显示 end-->
			</div>
			<!-- balance页面样式end -->
		</div>

	</div>

</body>


</html>