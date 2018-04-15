<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>散标投资管理</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/css4/css.css" />
<script type="text/javascript" src="${pageContext.request.contextPath }/js/js4/jquery.min.js"></script>
<!-- <script type="text/javascript" src="js/page.js" ></script> -->
</head>

<body>
	<div id="pageAll">
		<div class="pageTop">
			<div class="page">
				<img src="${pageContext.request.contextPath }/static/img4/coin02.png" /><span><a href="#">首页</a>&nbsp;-&nbsp;<a
					href="#">投资管理</a>&nbsp;-</span>&nbsp;散标投资管理
			</div>
		</div>

		<div class="page">
			<!-- banner页面样式 -->
			<div class="connoisseur">
				<div class="conform">
					<form>
								<div class="cfD">
							<span style="text-align: center; font-size: 18px;">
								标的类型：
								<select name="pname" style="width: 100px; text-align: center; font-size: 16px;">
									<option value="1">小微企业</option>
									<option value="2">微团贷</option>
									<option value="3">分期宝</option>
									<option value="4">供应链</option>
									<option value="5">资产标</option>
								</select>
							</span>
							<span style="margin-left: 20px; text-align: center; font-size: 16px;">
								周转期限：
								<select name="pname" style="width: 100px; text-align: center; font-size: 16px;">
									<option value="1">7-15天</option>
									<option value="2">15-1个月</option>
									<option value="3">1-3个月</option>
									<option value="4">6-12个月</option>
									<option value="5">12个月以上</option>
								</select>
							</span>
							<span style="margin-left: 20px; text-align: center; font-size: 16px;">
								年化利率：
								<select name="pname" style="width: 100px; text-align: center; font-size: 16px;">
									<option value="1">5%以上</option>
									<option value="2">9%以上</option>
									<option value="3">11%以上</option>
									<option value="4">13%以上</option>
								</select>
							</span>
							<span style="margin-left: 10px; text-align: center; font-size: 16px;">
								结清方式：
								<select name="pname" style="width: 100px; text-align: center; font-size: 16px;">
									<option value="1">每月付息</option>
									<option value="2">到期本息</option>
									<option value="3">等额本息</option>
								</select>
							</span>
						</div>
						<div class="cfD">
							是否结清：<label><input type="radio" checked="checked" name="styleshoice1" />&nbsp;未结清</label> 
									<label><input type="radio" name="styleshoice1" />&nbsp;已结清</label> 
							<input class="addUser" type="text" placeholder="投资人姓名/投资金额" />
							<button class="button" style="margin-left: 20px;">搜索</button>
						</div>
					</form>
				</div>
				<!-- banner 表格 显示 -->
				<div class="conShow">
					<table border="1" cellspacing="0" cellpadding="0">
						<tr>
							<td width="80px" class="tdColor tdC">序号</td>
							<td width="150px" class="tdColor">项目名</td>
							<td width="130px" class="tdColor">周转金额</td>
							<td width="130px" class="tdColor">周转期限</td>
							<td width="80px" class="tdColor">年化利率</td>
							<td width="80px" class="tdColor">单位/价格</td>
							<td width="130px" class="tdColor">剩余份数</td>
							<td width="130px" class="tdColor">投资份数</td>
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
							<td><a href="${pageContext.request.contextPath }/houtai/banneradd.html"><img class="operation"
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
							<td>到期本息</td>
							<td>投标中</td>
							<td><a href="${pageContext.request.contextPath }/houtai/banneradd.html"><img class="operation"
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
				<a href="#" class="ok yes">确定</a><a class="ok no">取消</a>
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