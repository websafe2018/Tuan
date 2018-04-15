<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>会员管理-团贷网</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/css4/css.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/css4/manhuaDate.1.0.css">
<script src="${pageContext.request.contextPath }/js/houtai/jquery-1.8.3.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/houtai/vip.js"></script>

</head>

<body>
	<div id="pageAll">
		<div class="pageTop">
			<div class="page">
				<img src="${pageContext.request.contextPath }/static/img4/coin02.png" /><span><a href="#">首页</a>&nbsp;-&nbsp;<a
					href="#">会员管理</a>&nbsp;-</span>&nbsp;用户管理
			</div>
		</div>

		<div class="page">
			<!-- vip页面样式 -->
			<div class="vip">
				<div class="conform">
						<div class="cfD">
							时间段：<input class="vinput mh_date" type="text" readonly="true" id="start"/>&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;
							<input class="vinput mh_date" type="text" readonly="true" id="endt"/>
						</div>
						<div class="cfD">
							<input class="addUser" type="text" placeholder="输入用户名/手机号/城市" id="condition"/>
							<button class="button" id="submit">搜索</button>
							<a class="addA addA1" href="${pageContext.request.contextPath }/jsp/houtai/addVip.jsp">新增会员+</a> <!-- <a
								class="addA addA1 addA2" href="vipadd.html">密码重置</a> -->
						</div>
				</div>
				<!-- vip 表格 显示 -->
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
						<!--  <tr>
							<td>1</td>
							<td>山下就只</td>
							<td>13312345678</td>
							<td>133123456781234567</td>
							<td>133123@qq.com</td>
							<td>1331234567239577</td>
							<td>南京市</td>
							<td>阿里巴巴阿里巴巴阿里巴巴阿里巴巴</td>
							<td>200000.0</td>
							<td>2017-09-30</td>
							<td><a href="${pageContext.request.contextPath }/houtai/connoisseuradd.html"><img class="operation"
									src="${pageContext.request.contextPath }/static/img4/update.png"></a> <img class="operation delban"
								src="${pageContext.request.contextPath }/static/img4/delete.png"></td>
						</tr>-->
					</table>
					<div class="paging">此处是分页</div>
				</div>
				<!-- vip 表格 显示 end-->
			</div>
			<!-- vip页面样式end -->
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
				<a  class="ok yes" id="yes">确定</a><a class="ok no">取消</a>
			</p>
		</div>
	</div>
	<!-- 删除弹出框  end-->
</body>


</html>