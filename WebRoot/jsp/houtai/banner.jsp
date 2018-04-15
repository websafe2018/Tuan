<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>智能投资管理</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/css4/css.css" />
<script type="text/javascript" src="${pageContext.request.contextPath }/js/js4/jquery.min.js"></script>

<!-- <script type="text/javascript" src="${pageContext.request.contextPath }/static/js4/page.js" ></script> -->
</head>

<body>
	<div id="pageAll">
		<div class="pageTop">
			<div class="page">
				<img src="${pageContext.request.contextPath }/static/img4/coin02.png" /><span><a href="#">首页</a>&nbsp;-&nbsp;<a
					href="#">项目管理</a>&nbsp;-</span>&nbsp;智能投资管理
			</div>
		</div>
		<div class="page">
			<!-- banner页面样式 -->
			<div class="banner">
				<div class="add">
					<span style="text-align: center; font-size: 18px;">
						投资产品分类：
						<select name="pname" style="width: 100px; text-align: center; font-size: 16px;">
							<option value="1">智能投资</option>
							<option value="2">We计划</option> 
						</select>
					</span>
					<span style="margin-left: 20px; text-align: center; font-size: 16px;">
						投资产品周期：
						<select name="pname" style="width: 100px; text-align: center; font-size: 16px;">
							<option value="1">6个月</option>
							<option value="2">12个月</option>
							<option value="3">18个月</option>
							<option value="4">24个月</option>
							<option value="5">36个月</option>
						</select>
					</span>
					<span  style="margin-left: 20px; text-align: center; font-size: 16px; "	>
						<input type="button" value="查询" style="margin-left: 20px; text-align: center; font-size: 16px;  width:60px;"/>
					</span>
				</div>
				<!-- banner 表格 显示 -->
				<div class="banShow">
					<table border="1" cellspacing="0" cellpadding="0">
						<tr>
							<td width="80px" class="tdColor tdC">序号</td>
							<td width="150px" class="tdColor">项目名</td>
							<td width="130px" class="tdColor">计划金额</td>
							<td width="130px" class="tdColor">投资时限</td>
							<td width="80px" class="tdColor">年化利率</td>
							<td width="80px" class="tdColor">单位/价格</td>
							<td width="130px" class="tdColor">剩余份数</td>
							<td width="130px" class="tdColor">投资总人数</td>
							<td width="130px" class="tdColor">已达成金额</td>
							<td width="90px" class="tdColor">标达成率</td>
							<td width="180px" class="tdColor">投标时间</td>
							<td width="100px" class="tdColor">结清方式</td>
							<td width="130px" class="tdColor">状态</td>
							<td width="130px" class="tdColor">操作</td>
							
						</tr>
						<tr>
							<td>1</td>
							<td>双十一连天购</td>
							<td>50000000.00</td>
							<td>24个月</td>
							<td>8.9%</td>
							<td>100元</td>
							<td>230000</td>
							<td>270000</td>
							<td>27000000</td>
							<td>54%</td>
							<td>2017.09.17-2017.09.27</td>
							<td>等额本息</td>
							<td>投标中</td>
							<td><a href="banneradd.html"><img class="operation"
									src="${pageContext.request.contextPath }/static/img4/update.png"></a> <img class="operation delban"
								src="${pageContext.request.contextPath }/static/img4/delete.png"></td>
						</tr>
						<tr>
							<td>1</td>
							<td>双十一连天购</td>
							<td>50000000.00</td>
							<td>24个月</td>
							<td>8.9%</td>
							<td>100元</td>
							<td>230000</td>
							<td>270000</td>
							<td>27000000</td>
							<td>54%</td>
							<td>2017.09.17-2017.09.27</td>
							<td>等额本息</td>
							<td>投标中</td>
							<td><a href="banneradd.html"><img class="operation"
									src="${pageContext.request.contextPath }/static/img4/update.png"></a> <img class="operation delban"
								src="${pageContext.request.contextPath }/static/img4/delete.png"></td>
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
				<a href="#" class="ok yes" onclick="del()">确定</a><a class="ok no">取消</a>
			</p>
		</div>
	</div>
	<!-- 删除弹出框  end-->
</body>

<script type="text/javascript">
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

</script>
</html>