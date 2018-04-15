<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>首页左侧导航</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/css4/public.css" />
<script type="text/javascript" src="${pageContext.request.contextPath }/js/js4/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/js4/public.js"></script>
<head></head>

<body id="bg">
	<!-- 左边节点 -->
	<div class="container">

		<div class="leftsidebar_box">
			<a href="${pageContext.request.contextPath }/jsp/houtai/main.jsp" target="main"><div class="line">
					<img src="${pageContext.request.contextPath }/static/img4/coin01.png" />&nbsp;&nbsp;首页
				</div></a>
			<!-- <dl class="system_log">
			<dt><img class="icon1" src="${pageContext.request.contextPath }/static/img4/coin01.png" /><img class="icon2"src="${pageContext.request.contextPath }/static/img4/coin02.png" />
				首页<img class="icon3" src="${pageContext.request.contextPath }/static/img4/coin19.png" /><img class="icon4" src="${pageContext.request.contextPath }/static/img4/coin20.png" /></dt>
		</dl> -->
			<dl class="system_log">
				<dt>
					<img class="icon1" src="${pageContext.request.contextPath }/static/img4/coin03.png" /><img class="icon2"
						src="${pageContext.request.contextPath }/static/img4/coin04.png" /> 网站管理<img class="icon3"
						src="${pageContext.request.contextPath }/static/img4/coin19.png" /><img class="icon4"
						src="${pageContext.request.contextPath }/static/img4/coin20.png" />
				</dt>
				<dd>
					<img class="coin11" src="${pageContext.request.contextPath }/static/img4/coin111.png" /><img class="coin22"
						src="${pageContext.request.contextPath }/static/img4/coin222.png" /><a class="cks" href="${pageContext.request.contextPath }/jsp/houtai/user.jsp"
						target="main">管理员管理</a><img class="icon5" src="${pageContext.request.contextPath }/static/img4/coin21.png" />
				</dd>
				<dd>
					<img class="coin11" src="${pageContext.request.contextPath }/static/img4/coin111.png" /><img class="coin22"
						src="${pageContext.request.contextPath }/static/img4/coin222.png" />
						<a class="cks" href="${pageContext.request.contextPath }/jsp/houtai/banner.jsp"
						target="main">广告管理</a><img class="icon5" src="${pageContext.request.contextPath }/static/img4/coin21.png" />
				</dd>
			</dl>
			<dl class="system_log">
				<dt>
					<img class="icon1" src="${pageContext.request.contextPath }/static/img4/coin07.png" /><img class="icon2"
						src="${pageContext.request.contextPath }/static/img4/coin08.png" /> 会员管理<img class="icon3"
						src="${pageContext.request.contextPath }/static/img4/coin19.png" /><img class="icon4"
						src="${pageContext.request.contextPath }/static/img4/coin20.png" />
				</dt>
				<dd>
					<img class="coin11" src="${pageContext.request.contextPath }/static/img4/coin111.png" /><img class="coin22"
						src="${pageContext.request.contextPath }/static/img4/coin222.png" /><a href="${pageContext.request.contextPath }/jsp/houtai/vip.jsp" target="main"
						class="cks">会员管理</a><img class="icon5" src="${pageContext.request.contextPath }/static/img4/coin21.png" />
				</dd>
			</dl>
			<dl class="system_log">
				<dt>
					<img class="icon1" src="${pageContext.request.contextPath }/static/img4/coin05.png" /><img class="icon2"
						src="${pageContext.request.contextPath }/static/img4/coin06.png" /> 项目管理<img class="icon3"
						src="${pageContext.request.contextPath }/static/img4/coin19.png" /><img class="icon4"
						src="${pageContext.request.contextPath }/static/img4/coin20.png" />
				</dt>
				<dd>
					<img class="coin11" src="${pageContext.request.contextPath }/static/img4/coin111.png" /><img class="coin22"
						src="${pageContext.request.contextPath }/static/img4/coin222.png" /><a class="cks" href="${pageContext.request.contextPath }/jsp/houtai/banner.jsp"
						target="main">智能投资管理</a><img class="icon5" src="${pageContext.request.contextPath }/static/img4/coin21.png" />
				</dd>
				<dd>
					<img class="coin11" src="${pageContext.request.contextPath }/static/img4/coin111.png" /><img class="coin22"
						src="${pageContext.request.contextPath }/static/img4/coin222.png" /><a class="cks" href="${pageContext.request.contextPath }/jsp/houtai/scattered.jsp"
						target="main">散标投资管理</a><img class="icon5" src="${pageContext.request.contextPath }/static/img4/coin21.png" />
				</dd>
			</dl>
			<dl class="system_log">
				<dt>
					<img class="icon1" src="${pageContext.request.contextPath }/static/img4/coinL1.png" /><img class="icon2"
						src="${pageContext.request.contextPath }/static/img4/coinL2.png" /> 借贷管理<img class="icon3"
						src="${pageContext.request.contextPath }/static/img4/coin19.png" /><img class="icon4"
						src="${pageContext.request.contextPath }/static/img4/coin20.png" />
				</dt>
				<dd>
					<img class="coin11" src="${pageContext.request.contextPath }/static/img4/coin111.png" /><img class="coin22"
						src="${pageContext.request.contextPath }/static/img4/coin222.png" /><a href="${pageContext.request.contextPath }/jsp/houtai/connoisseur.jsp"
						target="main" class="cks">信用借贷</a><img class="icon5"
						src="${pageContext.request.contextPath }/static/img4/coin21.png" />
				</dd>
				<dd>
					<img class="coin11" src="${pageContext.request.contextPath }/static/img4/coin111.png" /><img class="coin22"
						src="${pageContext.request.contextPath }/static/img4/coin222.png" /><a href="${pageContext.request.contextPath }/jsp/houtai/mortgate.jsp"
						target="main" class="cks">抵押借贷</a><img class="icon5"
						src="${pageContext.request.contextPath }/static/img4/coin21.png" />
				</dd>
			</dl>
			<dl class="system_log">
				<dt>
					<img class="icon1" src="${pageContext.request.contextPath }/static/img4/coin15.png" /><img
						class="icon2" src="${pageContext.request.contextPath }/static/img4/coin16.png" /> 投资管理<img
						class="icon3" src="${pageContext.request.contextPath }/static/img4/coin19.png" /><img
						class="icon4" src="${pageContext.request.contextPath }/static/img4/coin20.png" />
				</dt>
				<dd>
					<img class="coin11" src="${pageContext.request.contextPath }/static/img4/coin111.png" /><img
						class="coin22" src="${pageContext.request.contextPath }/static/img4/coin222.png" /><a
						class="cks" href="${pageContext.request.contextPath }/jsp/houtai/lntelligence.jsp" target="main">智能投资管理</a><img
						class="icon5" src="${pageContext.request.contextPath }/static/img4/coin21.png" />
				</dd>
				<dd>
					<img class="coin11" src="${pageContext.request.contextPath }/static/img4/coin111.png" /><img
						class="coin22" src="${pageContext.request.contextPath }/static/img4/coin222.png" /><a
						class="cks" href="${pageContext.request.contextPath }/jsp/houtai/standardpowder.jsp" target="main">散标投资管理</a><img
						class="icon5" src="${pageContext.request.contextPath }/static/img4/coin21.png" />
				</dd>
			</dl>
			<dl class="system_log">
				<dt>
					<img class="icon1" src="${pageContext.request.contextPath }/static/img4/coin11.png" /><img class="icon2"
						src="${pageContext.request.contextPath }/static/img4/coin12.png" />数据统计<img class="icon3"
						src="${pageContext.request.contextPath }/static/img4/coin19.png" /><img class="icon4"
						src="${pageContext.request.contextPath }/static/img4/coin20.png" />
				</dt>
				<%-- <dd>
					<img class="coin11" src="${pageContext.request.contextPath }/static/img4/coin111.png" /><img class="coin22"
						src="${pageContext.request.contextPath }/static/img4/coin222.png" /><a href="${pageContext.request.contextPath }/jsp/houtai/bannertj.jsp" target="main"
						class="cks">智投</a><img class="icon5" src="${pageContext.request.contextPath }/static/img4/coin21.png" />
				</dd> --%>
				<dd>
					<img class="coin11" src="${pageContext.request.contextPath }/static/img4/coin111.png" /><img class="coin22"
						src="${pageContext.request.contextPath }/static/img4/coin222.png" /><a href="${pageContext.request.contextPath }/jsp/houtai/scatteredtj.jsp" target="main"
						class="cks">散投</a><img class="icon5" src="${pageContext.request.contextPath }/static/img4/coin21.png" />
				</dd>
				<dd>
					<img class="coin11" src="${pageContext.request.contextPath }/static/img4/coin111.png" /><img class="coin22"
						src="${pageContext.request.contextPath }/static/img4/coin222.png" /><a href="${pageContext.request.contextPath }/jsp/houtai/loadrecord.jsp" target="main"
						class="cks">借贷</a><img class="icon5" src="${pageContext.request.contextPath }/static/img4/coin21.png" />
				</dd>
				<dd>
					<img class="coin11" src="${pageContext.request.contextPath }/static/img4/coin111.png" /><img class="coin22"
						src="${pageContext.request.contextPath }/static/img4/coin222.png" /><a href="${pageContext.request.contextPath }/jsp/houtai/topic.jsp" target="main"
						class="cks">平台数据统计</a><img class="icon5" src="${pageContext.request.contextPath }/static/img4/coin21.png" />
				</dd>
			</dl>
			<dl class="system_log">
				<dt>
					<img class="icon1" src="${pageContext.request.contextPath }/static/img4/coin17.png" /><img class="icon2"
						src="${pageContext.request.contextPath }/static/img4/coin18.png" /> 财务管理<img class="icon3"
						src="${pageContext.request.contextPath }/static/img4/coin19.png" /><img class="icon4"
						src="${pageContext.request.contextPath }/static/img4/coin20.png" />
				</dt>
				<dd>
					<img class="coin11" src="${pageContext.request.contextPath }/static/img4/coin111.png" /><img class="coin22"
						src="${pageContext.request.contextPath }/static/img4/coin222.png" /><a href="${pageContext.request.contextPath }/jsp/houtai/balance.jsp"
						target="main" class="cks">项目结算</a><img class="icon5"
						src="${pageContext.request.contextPath }/static/img4/coin21.png" />
				</dd>
				<dd>
					<img class="coin11" src="${pageContext.request.contextPath }/static/img4/coin111.png" /><img class="coin22"
						src="${pageContext.request.contextPath }/static/img4/coin222.png" /><a href="${pageContext.request.contextPath }/jsp/houtai/balance.jsp"
						target="main" class="cks">收益统计</a><img class="icon5"
						src="${pageContext.request.contextPath }/static/img4/coin21.png" />
				</dd>
				<dd>
					<img class="coin11" src="${pageContext.request.contextPath }/static/img4/coin111.png" /><img class="coin22"
						src="${pageContext.request.contextPath }/static/img4/coin222.png" /><a href="${pageContext.request.contextPath }/jsp/houtai/balance.jsp"
						target="main" class="cks">充值管理</a><img class="icon5"
						src="${pageContext.request.contextPath }/static/img4/coin21.png" />
				</dd>
				<dd>
					<img class="coin11" src="${pageContext.request.contextPath }/static/img4/coin111.png" /><img class="coin22"
						src="${pageContext.request.contextPath }/static/img4/coin222.png" /><a href="${pageContext.request.contextPath }/jsp/houtai/balance.jsp"
						target="main" class="cks">提现管理</a><img class="icon5"
						src="${pageContext.request.contextPath }/static/img4/coin21.png" />
				</dd>
			</dl>
			<dl class="system_log">
				<dt>
					<img class="icon1" src="${pageContext.request.contextPath }/static/img4/coin10.png" /><img class="icon2"
						src="${pageContext.request.contextPath }/static/img4/coin09.png" />个人中心<img class="icon3"
						src="${pageContext.request.contextPath }/static/img4/coin19.png" /><img class="icon4"
						src="${pageContext.request.contextPath }/static/img4/coin20.png" />
				</dt>
				<dd>
					<img class="coin11" src="${pageContext.request.contextPath }/static/img4/coin111.png" /><img class="coin22"
						src="${pageContext.request.contextPath }/static/img4/coin222.png" /><a href="${pageContext.request.contextPath }/jsp/houtai/vipapdute.jsp"
						target="main" class="cks">修改密码</a><img class="icon5"
						src="${pageContext.request.contextPath }/static/img4/coin21.png" />
				</dd>
				<dd>
					<img class="coin11" src="${pageContext.request.contextPath }/static/img4/coin111.png" /><img class="coin22"
						src="${pageContext.request.contextPath }/static/img4/coin222.png" /><a class="cks" href="${pageContext.request.contextPath }/removeSession.do" target="_parent">退出</a><img
						class="icon5" src="${pageContext.request.contextPath }/static/img4/coin21.png" />
				</dd>
			</dl>

		</div>

	</div>
</body>
</html>
