<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="s" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>信用借贷</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/static/css4/css.css" />
<!-- <script type="text/javascript" src="${pageContext.request.contextPath }/static/js4/jquery.min.js"></script> -->
<!-- <script type="text/javascript" src="${pageContext.request.contextPath }/static/js4/page.js" ></script>  -->

 <!-- <script type="text/javascript" src="${pageContext.request.contextPath }/js/connoisseur.js"></script> -->
 <script type="text/javascript" src="${pageContext.request.contextPath }/js/houtai/jquery-1.8.3.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/houtai/connoisseurupdata.js"></script>
</head>

<body>
	<div id="pageAll">
		<div class="pageTop">
			<div class="page">
				<img src="${pageContext.request.contextPath }/static/img4/coin02.png" /><span><a href="#">首页</a>&nbsp;-&nbsp;<a
					href="#">借贷管理</a>&nbsp;-</span>&nbsp;信用借贷&nbsp;-审核
			</div>
		</div>

		<div class="page">
			<!-- banner页面样式 -->
			<div class="connoisseur">
		
				<!-- banner 表格 显示 -->
				<div class="conShow">
				<input type="text" value="${ Loadrecord.id}" style="display: none" id="id"/>
					<table border="1" cellspacing="0" cellpadding="0" id="table">
						<tr>
							<td width="66px" class="tdColor tdC" id="xuhao">序号</td>
							<td width="100px" class="tdColor" id="name">用户名</td>
							<td width="100px" class="tdColor" id="name2">姓名</td>
							<td width="145px" class="tdColor" id="tel">手机号码</td>
							<td width="145px" class="tdColor" id="adds">身份证号码</td>
							<td width="140px" class="tdColor" id="cs">所在城市</td>
							<td width="140px" class="tdColor" id="dw">工作单位</td>
							<td width="140px" class="tdColor" id="jk">借款单号</td>
							<td width="145px" class="tdColor" id="je">借款金额</td>
							<td width="150px" class="tdColor" id="zq">周转期限</td>
							<td width="140px" class="tdColor" id="fs">结清方式</td>
							<td width="140px" class="tdColor" id="zx">征信审核</td>
							<td width="150px" class="tdColor" id="sh">审核状态</td>
							<td width="130px" class="tdColor" id="cz">操作</td>
						
						<tr>
							<td>1</td>
							<td>${ Loadrecord.userName}</td>
							<td>${Loadrecord.realName}</td>
							<td>${Loadrecord.telNo}</td>
							<td>${Loadrecord.IDNumber}</td>
							<td>${Loadrecord.address}</td>
							<td>${Loadrecord.organization}</td>
							<td>${Loadrecord.orderId}</td>
							<td>${Loadrecord.loadMoney}</td>
							<td>${Loadrecord.loadPeriod}个月</td>
							
							<td>${Loadrecord.rName}</td>
							<td>
							
							
							<select id="status">
							<s:if test="${Loadrecord.status==0}">
							<option value="0" selected="selected">未审核</option>
							<option value="1" >已审核</option>
							</s:if>
							<s:if test="${Loadrecord.status==1}">
							<option value="0" >未审核</option>
							<option value="1" selected="selected">已审核</option>						
							</s:if>
							</select>
							</td>
							
							
							
							<td>
							<select id="loadStatus">
							<s:if test="${Loadrecord.loadStatus==0}">
							<option value="0" selected="selected">未审核</option>
							<option value="1" >已审核</option>
							<option value="2" >未通过</option>
							</s:if>
							<s:if test="${Loadrecord.loadStatus==1}">
							<option value="0" >未审核</option>
							<option value="1" selected="selected">已审核</option>
							<option value="2" >未通过</option>
							</s:if>
							<s:if test="${Loadrecord.loadStatus==2}">
							<option value="0" >未审核</option>
							<option value="1" >已审核</option>
							<option value="2" selected="selected">未通过</option>
							</s:if>
							</select>
							</td>
							
							
							
							
						
							<td><a href="javascript:void(0)" onclick="update()">提交</a></td>
						</tr> 
					</table>
					<div class="paging">此处是分页</div>
				</div>
				<!-- banner 表格 显示 end-->
			</div>
			<!-- banner页面样式end -->
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
				<a href="#" class="ok yes">确定</a><a class="ok no">取消</a>
			</p>
		</div>
	</div>
	<!-- 删除弹出框  end-->
</body>

<%--  <script type="text/javascript">
// 广告弹出框
$(".delban").click(function(){
  $(".banDel").show();
});
$(".close").click(function(){
  $(".banDel").hide();
});
$(".no").click(function(){
  $(".banDel").hide();
});
// 广告弹出框 end
</script> --%>
</html>