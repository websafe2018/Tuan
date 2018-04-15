<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!-- saved from url=(0060)https://www.tuandai.com/member/account_borrowInComplete.aspx -->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>团贷网- P2P理财、P2P网贷首选网站,安全可靠的互联网金融平台！</title>
<link rel="dns-prefetch" href="https://image.tuandai.com/">
<link rel="dns-prefetch" href="https://js.tuandai.com/">
<link rel="dns-prefetch" href="https://vip.tuandai.com/">
<link rel="dns-prefetch" href="https://hd.tuandai.com/">
<link rel="dns-prefetch" href="https://bbs.tuandai.com/">
<meta property="qc:admins" content="3542563377645164116375">
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link rel="shortcut icon"
	href="https://js.tuandai.com/images/default/favicon.ico?v=20150513">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/css1/base20151225.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/css1/public20151225.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/css1/xiamen-bank.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/css1/cgt20161107.css">
<%-- <link rel="stylesheet" href="${pageContext.request.contextPath }/css/css1/new.user.public.css"> --%>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/css/css1/account-new.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/css/css1/account-public.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/css/css1/bind_bank.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/css1/xiamen-bank.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/css/css1/cgt20161107.css">
<style type="text/css">
#leftMenu {
	border: 1px solid #e6e6e6;
}

.dv_r_5, .dv_r_5_1, .dv_r_5_2 {
	padding-left: 40px;
	height: 42px;
	line-height: 40px;
	background: url(//js.tuandai.com/images/member/baktag.jpg) no-repeat;
	background-repeat: no-repeat;
	font-family: 宋体;
	font-size: 14px;
	text-align: left;
	background-position: 0 0;
	border: 1px solid #e6e6e6;
	cursor: pointer;
	position: relative;
}

.dv_r_5_1, .dv_r_5_2, .dv_r_5_3, .dv_r_5_4, .dv_r_5_5, .dv_r_5_6,
	.dv_r_5_7 {
	border-top: 0;
}

.dv_r_5_1 {
	background-position: 0 -42px;
}

.dv_r_5_2 {
	background-position: 0 -84px;
}

.dv_r_5_3 {
	background-position: 0 -126px;
}

.dv_r_5_4 {
	background-position: 0 -126px;
}

.dv_r_5_5 {
	background-position: 0 -126px;
}

.dv_r_5_6 {
	background-position: 0 -168px;
}

.dv_r_6 {
	height: 100%;
	overflow: hidden;
	line-height: 25px;
	text-align: left;
}

.dv_r_6 ul {
	margin: 0px;
	padding: 0px;
	list-style: none;
	background-color: #fff;
	padding-bottom: 0px;
	padding-top: 0px;
	border: 1px solid #e6e6e6;
	border-top: none;
}

.dv_r_6 ul li {
	height: 38px;
	line-height: 34px;
	padding-left: 35px;
	background: url(//js.tuandai.com/images/member/bakdotted.jpg);
	background-position: bottom;
	background-repeat: no-repeat;
}

.dv_r_6 ul .over {
	background: #f5f5f5;
}

.dv_r_6 ul li a {
	text-decoration: none;
}

.dv_r_6 ul li.last {
	padding-left: 35px;
	background: none;
}

.dv_r_6 ul li.last:hover {
	background: #f5f5f5;
}

.dv_r_6 ul li a {
	margin-left: 8px;
	color: #666;
	font-size: 14px;
}

.dv_r_6 ul li div {
	padding-left: 3px;
	clear: both;
	width: 180px;
	color: #000;
	line-height: 20px;
	text-indent: 17px;
}

.dv_r_6 ul li a.red {
	color: #DD8800;
}

#leftMenu .dv_r_5 strong {
	font-family: "微软雅黑", "宋体", Arial;
	color: #333;
	font-size: 16px;
	font-weight: normal;
}

#leftMenu .dv_r_5_1 strong, #leftMenu .dv_r_5_2 strong, #leftMenu .dv_r_5_3 strong,
	#leftMenu .dv_r_5_4 strong {
	color: #333;
}

.current {
	font-weight: bold;
}

.otherline .li1 strong {
	font-weight: normal;
}

#leftMenu .hidden {
	display: none;
}

#leftMenu .up {
	width: 14px;
	height: 7px;
	display: inline-block;
	cursor: pointer;
	background: url(//js.tuandai.com/images/member/gr_arrow_01.gif);
	position: absolute;
	right: 20px;
	top: 18px;
}

#leftMenu .down {
	width: 14px;
	height: 7px;
	display: inline-block;
	cursor: pointer;
	background: url(//js.tuandai.com/images/member/gr_arrow_02.gif);
	position: absolute;
	right: 20px;
	top: 18px;
}

#menu_autoTender {
	position: relative;
}

#menu_myWePlan {
	position: relative;
}

.account-left .emClass, .account-left.emClass {
	width: 18px;
	height: 18px;
	display: block;
	left: 16px;
	top: 50%;
	margin-top: -10px;
	position: absolute;
	background:
		url("//js.tuandai.com/images/investlist/invest_detail/we-financing.png")
		-191px -23px;
}

.account-left .tip-box {
	position: absolute;
	left: 110px;
	top: -4px;
	width: 357px;
	height: 126px;
	cursor: default;
}

.account-left .tip {
	width: 357px;
	position: relative;
	background: #fef8e0;
	padding: 15px;
	padding-bottom: 0;
	font-size: 14px;
	line-height: 22px;
	border: 1px solid #e4e4e4;
	z-index: 1;
}

.account-left .tip p {
	text-align: right;
}

.account-left .tip p a {
	margin-left: 10px;
	color: #CC6600;
}

.account-left .tip p a:hover {
	color: #EA7E00;
}

.account-left .tip .arrow {
	width: 9px;
	height: 14px;
	display: block;
	position: absolute;
	background: url("//js.tuandai.com/images/member/icon.png?v=20150808001")
		0 -605px;
	left: -9px;
}

.account-left .tip .close {
	width: 9px;
	height: 9px;
	display: block;
	position: absolute;
	background: url("//js.tuandai.com/images/member/icon.png?v=20150808001")
		0 -621px;
	right: 8px;
	top: 8px;
	cursor: pointer;
}

.left-new {
	position: absolute;
	width: 20px;
	height: 14px;
	background: url("//js.tuandai.com/images/member/left-new.gif") 0 0
		no-repeat;
	right: 24px;
	top: 4px;
}

.ny .tip-box {
	position: absolute;
	left: 110px;
	top: -4px;
	width: 357px;
	height: 126px;
	cursor: default;
}

.ny .tip {
	width: 446px;
	position: relative;
	background: #fef8e0;
	padding: 10px;
	font-size: 14px;
	line-height: 22px;
	border: 1px solid #e4e4e4;
	z-index: 1;
}

.ny .tip p {
	text-align: right;
}

.ny .tip .arrow {
	width: 9px;
	height: 14px;
	display: block;
	position: absolute;
	background: url("//js.tuandai.com/images/member/icon.png?v=20150808001")
		0 -605px;
	left: -9px;
}

.ny .tip .close {
	width: 9px;
	height: 9px;
	display: block;
	position: absolute;
	background: url("//js.tuandai.com/images/member/icon.png?v=20150808001")
		0 -621px;
	right: 8px;
	top: 8px;
	cursor: pointer;
}

.account-left .red-circle {
	width: 7px;
	height: 7px;
	position: absolute;
	border-radius: 50%;
	background: red;
	display: block;
	right: 35px;
	top: 9px;
}
</style>
<%-- <link href="${pageContext.request.contextPath }/css/css1/account-public(1).css" rel="stylesheet" type="text/css"> --%>
<link
	href="${pageContext.request.contextPath }/css/css1/account_invest.css"
	rel="stylesheet" type="text/css">
<style type="text/css">
.nav_top {
	border-bottom: 1px solid #e5e5e5;
	height: 46px;
	margin: 0 auto;
	overflow: hidden;
	padding: 0;
	position: relative;
	width: 800px;
}

/*选项卡*/
.nav_title {
	float: left;
	height: 44px;
	line-height: 44px;
}

.nav_title li {
	float: left;
	margin: 0px;
	font-size: 16px;
	width: 110px;
}

.nav_title li:hover {
	border-bottom: 2px solid #ff8c00;
}

.nav_title li:hover a {
	color: #ff8c00;
}

/*选项卡*/
.tab_title_a a:link, .tab_title_a a:visited, .tab_title_a a:hover,
	.tab_title_a a:active {
	font-size: 16px;
	text-decoration: none;
	color: #ff8c00;
}

.tab_title_b a:link, .tab_title_b a:visited, .tab_title_b a:hover,
	.tab_title_b a:active {
	color: #000;
	text-decoration: none;
	font-size: 16px;
}

.tab_title_a {
	height: 44px;
	line-height: 44px;
	border-bottom: #ff8c00 solid 2px;
	text-align: center;
	cursor: pointer;
}

.tab_title_b {
	height: 44px;
	line-height: 44px;
	border-bottom: #fff solid 2px;
	text-align: center;
	cursor: pointer;
}

.tab2_title_a a:link, .tab2_title_a a:visited, .tab2_title_a a:hover,
	.tab2_title_a a:active {
	font-size: 16px;
	text-decoration: none;
	color: #000;
}

.tab2_title_b a:link, .tab2_title_b a:visited, .tab2_title_b a:hover,
	.tab2_title_b a:active {
	color: #000;
	text-decoration: none;
	font-size: 16px;
}

.tab2_title_a {
	width: 120px;
	height: 44px;
	line-height: 44px;
	border-bottom: #ffa200 solid 4px;
	text-align: center;
	cursor: pointer;
}

.tab2_title_b {
	width: 120px;
	height: 44px;
	line-height: 44px;
	border-bottom: #fff solid 4px;
	text-align: center;
	cursor: pointer;
}
</style>
<!-- <script src="${pageContext.request.contextPath }/js/homepage/account_borrowInBid2.js"></script> -->

<script src="${pageContext.request.contextPath }/js/js1/hm.js"></script>

<script type="text/javascript" async=""
	src="${pageContext.request.contextPath }/js/js1/webaccess.js"></script>
<script data-require-id="echarts/chart/pie"
	src="${pageContext.request.contextPath }/js/js1/echarts/chart/pie.js"
	async=""></script>
</head>
<body>
	<input type="text" value="${users.id}" hidden="hidden" id="uid" />

	<div class="header">
		<div class="t-b  t-b-w lh40 bgff f12 fst cl">
			<div class="w1200 h40 auto g6">
				<div class="right-side  r inline-block-debug">
					<div class="inline-block-debug c-poi-a">
						<!--<a href="https://www.tdw.cn/" class="red mr15"><i class="icon dib hous-icon"></i>前往团贷网</a>-->
					</div>
					<div class="inline-block-debug c-poi-a" id="">
						<span class="reg" style="color:#303030">欢迎您，</span><a
							href="${pageContext.request.contextPath }/jsp/member/account_default.jsp"
							rel="nofollow" class="reg">${users.nickname }</a><span>|</span><a
							href="javascript:logout();">退出</a><span>|</span>
					</div>
					<a rel="nofollow" href="http://info.tdw.cn/help/index.html"
						target="_blank">帮助中心</a><span>|</span> <a href="#" target="_blank">社区</a><span>|</span>
					<div class="inline-block-debug rel app-ewm-box">
						<a rel="nofollow" class="app  icon  mr10  inline-block-debug">&nbsp;</a>
						&nbsp;
						<div class="app-ewm   pt20 abs z5" style="display: none">
							<i class="arrow icon abs db zx2"></i>
						</div>
					</div>
				</div>
				<div class="left-side">
					<i class="icon dib phone vm  lh0">&nbsp;</i><span class="ml5">客服热线：1010-1218（9:00～22:00）</span>
				</div>
			</div>
		</div>
		<div class="nav-w bgfff">
			<div class="nav-box auto w1200 fix">
				<div class="r rel tc  slid z3" style="display: none">
					<dl class="abs i-b-d vt about-us r0" id="">
						<dt>
							<a
								href="${pageContext.request.contextPath }/jsp/member/account_default.jsp"><i
								class="account-icon i-b-d icon vm"></i>我的账户<i
								class="icon arrow i-b-d vm"></i></a>
						</dt>
						<dd>
							<a
								href="${pageContext.request.contextPath }/jsp/member/RechargeNew2016.jsp">立即充值</a>
						</dd>
						<dd>
							<a href="https://www.tuandai.com/member/account_moneylist.aspx">资金统计</a>
						</dd>
						<dd>
							<a href="https://www.tuandai.com/member/account_weFTBAll.aspx">智能理财</a>
						</dd>
						<dd>
							<a
								href="${pageContext.request.contextPath }/jsp/member/account_loaninbid.jsp">散标投资</a>
						</dd>
						<dd>
							<a
								href="${pageContext.request.contextPath }/jsp/member/account_loanReturnPlanList.jsp">回款计划</a>
						</dd>
						<dd>
							<a
								href="https://www.tuandai.com/member/AutoTender/AutoTenderList.aspx">自动投标</a>
						</dd>
						<dd>
							<a
								href="${pageContext.request.contextPath }/jsp/member/account_borrowReturnPlanList.jsp">还款安排</a>
						</dd>
						<dd>
							<a
								href="${pageContext.request.contextPath }/jsp/member/account_borrowInBid2.jsp">借款记录</a>
						</dd>
						<dd>
						<dd>
							<a href="javascript:logout();">退出</a>
						</dd>
					</dl>
				</div>
				<div class="nav r">

					<ul>
						<li class="nav-t"><a
							href="${pageContext.request.contextPath }/jsp/homepage/investmenthome.jsp">首页</a>
						</li>
						<li class="nav-t w130">
							<div class="r rel tc  slid z3 r ">
								<dl class="abs i-b-d vt guarantee r0">
									<dt>
										<a href="${pageContext.request.contextPath }/lntellgent">我要投资<i
											class="icon arrow i-b-d vm"></i></a>
									</dt>
									<dd>
										<a href="${pageContext.request.contextPath }/lntellgent"
											target="_blank">智能投资</a>
									</dd>
									<dd>
										<a
											href="${pageContext.request.contextPath }/LooseInvestment_list"
											target="_blank">散标专区</a>
									</dd>
								</dl>
							</div>
						</li>
						<li class="nav-t w130">
							<div class="r rel tc  slid z3 r ">
								<dl class="abs i-b-d vt guarantee r0">
									<dt>
										<a rel="nofollow"
											href="${pageContext.request.contextPath }/platform">信息披露<i
											class="icon arrow i-b-d vm"></i></a>
									</dt>
									<dd style="display: none;">
										<a rel="nofollow"
											href=" ${pageContext.request.contextPath }/riskcontroller">安全保障</a>
									</dd>
									<dd style="display: none;">
										<a rel="nofollow"
											href=" ${pageContext.request.contextPath }/index4"
											target="_blank">担保专款</a>
									</dd>
									<dd style="display: none;">
										<a rel="nofollow"
											href=" ${pageContext.request.contextPath }/report">运营报表</a>
									</dd>
									<dd style="display: none;">
										<a rel="nofollow"
											href=" ${pageContext.request.contextPath }/operationaldata">平台数据</a>
									</dd>
									<dd style="display: none;">
										<a rel="nofollow"
											href=" ${pageContext.request.contextPath }/regulatory">监管法规</a>
									</dd>
									<dd style="display: none;">
										<a rel="nofollow"
											href="${pageContext.request.contextPath }/platform">关于我们</a>
									</dd>

								</dl>
							</div>
						</li>
						<li class="nav-t"><a
							href="${pageContext.request.contextPath }/jsp/homepage/borrow_money.jsp">我要借款</a>
						</li>
					</ul>
				</div>
				<a class="logo dib l"
					href="${pageContext.request.contextPath }/jsp/homepage/investmenthome.jsp">
					<img src="${pageContext.request.contextPath }/static/img1/logo.png"
					alt="团贷网">
				</a>
				<div class="index-bd" id="base_index_box">
					<ul class="index_slider" id="base_index_slider" style="bottom: 0px">
						<li><a> <img
								src="${pageContext.request.contextPath }/static/img1/1502357148516.png"
								alt="网贷"></a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div class="tool">
		<div class="t-box rel" onclick="javascript:void(0);">
			<div class="dan-tip abs tc" style="display: none">
				市场有风险投资需谨慎<span class="triangle db"></span>
			</div>
			<i class="t6"></i> <a href="javascript:;">风险提示</a>
		</div>
		<div class="t-box"
			onclick="javascript:window.open('http://www.sobot.com/chat/pc/index.html?sysNum=20ab7dce1e3346e8b90b649bd8baf591');">
			<i class="t1"></i><a href="javascript:;">在线客服</a>
		</div>
		<div class=" t-box"
			onclick="javascript:window.open('http://info.tuandai.com/help/index.html');">
			<i class="t2"></i><a href="javascript:;">帮助中心</a>
		</div>
		<div class=" t-box"
			onclick="javascript:window.open('http://news.tdw.cn/tool/int_fina.aspx');">
			<i class="t3"></i><a class="" href="javascript:;">计算工具</a>
		</div>
		<div class="t-box to-top" onclick="javascript:;" style="display: none">
			<i class="t5"></i><a href="javascript:;" class="pt10">回到顶部</a>
		</div>
	</div>
	<div class="account-container clearfloat">
		<form method="post"
			action="https://www.tuandai.com/member/account_borrowInComplete.aspx"
			id="form1" style="*margin-top:10px">
			<div class="aspNetHidden">
				<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE"
					value="wmMOz61iz5ecNMoC9Kg4EoWqMagrtevukwbV0t/g6PTPcJJL4+pE2j5sSsWi8tpQS+rNnFIf2gSy5xwUPTU7fFJUqTRev3WgHNDrI6OIEPjW5GtIjPUF/4igUkO9uFmwkBPkNGtY/KqnNemnzhfn2oEKMA2ZmBOJldT1DCUGqLWOHjZXXHAfVaUwgVQby4m61TjU3pUAELybBxhaxAkvwBZyAGArif3yA4fep+GN6Te9zT3J6LZH+vLVibI=">
			</div>
			<div class="aspNetHidden">
				<input type="hidden" name="__VIEWSTATEGENERATOR"
					id="__VIEWSTATEGENERATOR" value="9898252B">
			</div>
			<div class="account-leftBox clearfloat">
				<div class="account-left">
					<div class="home border-bottom-0">
						<p>
							<i class="dt-1"></i><a
								href="${pageContext.request.contextPath }/jsp/member/account_default.jsp">账户首页</a>
						</p>
					</div>
					<dl>
						<dt>
							<i class="dt-2"></i>我的资金 <i class="arrow"></i>
						</dt>
						<dd id="">
							<a
								href="${pageContext.request.contextPath }/jsp/member/account_moneylist.jsp">资金统计</a>
						</dd>
						<dd id="">
							<a
								href="${pageContext.request.contextPath }/jsp/member/account_moneyhistory.jsp">交易记录</a>
						</dd>

						<dd id="">
							<a
								href="${pageContext.request.contextPath }/jsp/member/RechargeNew2016.jsp">充值</a>
						</dd>
						<dd id="">
							<a
								href="${pageContext.request.contextPath }/jsp/member/drawmoney.jsp">提现</a>
						</dd>
					</dl>
					<dl>
						<dt>
							<i class="dt-3"></i>P2P<i class="arrow"></i>
						</dt>
						<dd id="">
							<a
								href="https://www.tuandai.com/member/AutoTender/AutoTenderList.aspx">自动投标</a>
						</dd>
						<dd id="">
							<div class="left-new"></div>
							<a href="https://www.tuandai.com/member/account_weFTBAll.aspx">智能投资</a>
						</dd>
						<dd id="">
							<a
								href="${pageContext.request.contextPath }/jsp/member/account_loaninbid.jsp">散标投资</a>
						</dd>
						<dd id="">
							<a
								href="${pageContext.request.contextPath }/jsp/member/account_loanReturnPlanList.jsp">回款计划</a>
						</dd>
					</dl>

					<dl>
						<dt>
							<i class="dt-4"></i>我的借款<i class="arrow"></i>
						</dt>
						<dd id="">
							<a href="${pageContext.request.contextPath }/loadPersonShenHe">借入人审核</a>
						</dd>
						<dd id="">
							<a href="${pageContext.request.contextPath }/propertyQu">资产标区</a>
						</dd>
						<dd id="" class="currentMenu">
							<a
								href="${pageContext.request.contextPath }/jsp/member/account_borrowInBid2.jsp">借款记录</a>
						</dd>
						<dd id="">
							<a
								href="${pageContext.request.contextPath }/jsp/member/account_borrowReturnPlanList.jsp">还款安排</a>
						</dd>
					</dl>
					<dl>
						<dt>
							<i class="dt-5"></i>个人设置<i class="arrow"></i>
						</dt>
						<dd id="">
							<a
								href="${pageContext.request.contextPath }/jsp/member/account_userdetailinfo.jsp">基本信息
							</a>
						</dd>
						<dd id="">
							<a href="${pageContext.request.contextPath }/Validat_eindex.html">安全中心</a>
						</dd>
						<dd id="">
							<div class="left-new"></div>
							<a
								href="${pageContext.request.contextPath }/account_touplevel.html"
								target="_blank">团贷会员</a>
						</dd>
						<dd id="">
							<a
								href="${pageContext.request.contextPath }/jsp/member/account_notice.jsp">消息中心</a>
						</dd>
					</dl>

				</div>
			</div>
			<div class="account-rightBox clearfloat">
				<div class="box-padding" id="div_box">
					<div class="data-title clearfloat">
						<div class="t1 font-666 font-14 fl_r">
							<span class="fl_r" style="display: none;">平均利息成本： <span
								class="font-orange "> 
								10%</span></span> 累计利息： <span
								class="font-22 font-orange2">￥
								<c:out value="${justIncom}" default="0.00"></c:out>
								</span>
						</div>
						<div class="t1 font-666 font-14  fl_l">
							累计借款： <span id="getLoadTotalMoney" class="font-22 font-orange2">￥
							<c:out value="${allLoadMoney }" default="0.00"></c:out>
							</span>
						</div>
					</div>
					<div id="account_infoLeft"
						style="width: 800px; height: 142px; -webkit-tap-highlight-color: transparent; user-select: none; background-color: rgba(0, 0, 0, 0); cursor: default;"
						_echarts_instance_="1508420279776">
						<div
							style="position: relative; overflow: hidden; width: 800px; height: 142px;">
							<div data-zr-dom-id="bg"
								style="position: absolute; left: 0px; top: 0px; width: 800px; height: 142px; user-select: none;"></div>
							<canvas width="1200" height="213" data-zr-dom-id="1"
								style="position: absolute; left: 0px; top: 0px; width: 800px; height: 142px; user-select: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></canvas>
							<canvas width="1200" height="213"
								data-zr-dom-id="_zrender_hover_"
								style="position: absolute; left: 0px; top: 0px; width: 800px; height: 142px; user-select: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></canvas>
						</div>
					</div>
					<div class="account_infobox">
						<div class="account_infoLeft-data">
							<p class="font-14 margin-top-15">
								<i class="i1"></i>正常还款借款：<span id="readyedTotalLoad"
									class="font-666">￥
									
									0.00</span>
							</p>
							<p class="font-14 margin-top-5">
								<i class="i2"></i>投标中借款：<span class="font-666">￥0.00</span>
							</p>
							<p class="font-14 margin-top-5">
								<i class="i3"></i>已完成借款：<span class="font-666">￥
								<c:out value="${allLoadMoney }" default="0.00"></c:out>
								</span>
							</p>
						</div>
						<div class="account_infoLeft-data " style="left: 600px;">
							<p class="font-14 margin-top-15">
								<i class="i1"></i>待付利息：<span class="font-666">￥
								<c:out value="${mustIncom}" default="0.00"></c:out>
								</span>
							</p>
							<p class="font-14 margin-top-5">
								<i class="i2"></i>已付利息：<span class="font-666">￥
								<c:out value="${justIncom-mustIncom}" default="0.00"></c:out>
								</span>
							</p>
							<p class="font-14 margin-top-5">
								<i class="i4"></i>滞纳金：<span class="font-666">￥0.00</span>
							</p>
						</div>
					</div>
					<div class="c1"
						style=" position: absolute; top:91px; left:25px; z-index: 1;">
						<div id="myChart"
							style="height:300px;width: 700px; margin-bottom:100px"></div>
						<%-- <img src="${pageContext.request.contextPath }/static/img1/cir0.png"> --%>
					</div>
					<div class="c1"
						style=" position: absolute; top:91px; right:263px; z-index: 1;">
						<%-- <img src="${pageContext.request.contextPath }/static/img1/cir0.png"> --%>
					</div>
				</div>
				<div class="box-padding margin-top-10">
					<div class="account_tableBox clearfloat">
						<div class="nav_top">
							<ul class="nav_title">
								<li class="tab_title_a"
									onclick="javascript:window.location.href='${pageContext.request.contextPath }/jsp/member/account_borrowInBidLoadRecords.jsp';">
									<a href="${pageContext.request.contextPath }/jsp/member/account_borrowInBidLoadRecords.jsp">进行中的借款</a>
								</li>
								<li class="tab_title_b"
									onclick="javascript:window.location.href='${pageContext.request.contextPath }/jsp/member/account_borrowInBidLoadRecords1.jsp';">
									<a href="${pageContext.request.contextPath }/jsp/member/account_borrowInBidLoadRecords1.jsp">未通过借款</a>
								</li>
								<li class="tab_title_b"><a href="${pageContext.request.contextPath }/jsp/member/account_borrowInBid2.jsp">已完成借款</a></li>
							</ul>
						</div>




						<div class="account_table margin-top-20">



							<table width="" align="center" border="0" cellspacing="0"
								cellpadding="0" class="account_tableNR">


								<tbody>
									<tr id="trhead" style="background-color: rgb(240, 240, 240);">
										<th valign="center" align="center" class="a_low18"
											style="width:200px">借款标题</th>
										<th valign="center" class="a_low02">类型</th>
										<th valign="center" class="">借款金额</th>
										<th valign="center" class="a_low07">年化利率</th>
										<th valign="center" class="a_low07">借款期限</th>
										<th valign="center" class="a_low07">发布日期</th>
										<th valign="center" class="a_low06">状态</th>
										<th valign="center" class="a_low06" style="text-align:left">操作
										</th>
									</tr>
								</tbody>








								<!-- 开通存管弹框  -->
								<div id="layer"
									style=" position:fixed;width:100%;height:100%;display:none;left:0;top:0;z-index:900;background:#000; -moz-opacity: 0.3;opacity:.30;"></div>
								<div id="divCun"
									style="display: none;position: fixed;left: 25%;top:18%; z-index: 1000; width:580px; height:380px;background-color: White;border-radius: 15px;">
									<i class="close icons close-x icon abs" id="delCun"
										style="top:15px; right: 19px; "><img
										src="${pageContext.request.contextPath }/static/img/shanchu.png"></i>
									<img alt=""
										src="${pageContext.request.contextPath }/static/img/cunguan.png"
										style="width:580px; height:250px;border-radius: 15px 15px 0px 0px;">
									<div
										style="margin-top: 20px; margin-left: 130px; margin-bottom: 20px; ">您尚未开通厦门银行资金存管账户，请先开通</div>
									<div>
										<a href="${pageContext.request.contextPath }/OpAccounts"
											style="display:block; margin-top: 30px; margin-left: 140px;margin-right:180px; height: 40px;background-color: #FFA019; color:White; font-size:17px; text-align: center;line-height: 40px;border-radius: 5px;">马&nbsp;&nbsp;上&nbsp;&nbsp;开&nbsp;&nbsp;通</a>
									</div>
							</table>












							<div id="pager" style="text-align: center; margin-bottom:50px"
								class="yahoo2"></div>
						</div>
					</div>
				</div>
			</div>
		</form>
		<div id="dahei" style="display: none; height: 526px;"></div>
		<div id="tooltip" class="tooltip"></div>
	</div>
	<div style="display: none;" class="dial-window xm-window passwordAlt">
		<div class="title1 rel">
			温馨提示：<i class="close-x cgt-close-x icon db abs"></i>
		</div>
		<div class="body">
			<div class="">
				<p class="p1">开启自动投标前，请您先进行以下授权：</p>
				<p class="p2" id="mm_toubiao">
					<em></em>自动投标<span>（适用于设置自动投标的用户）</span>
				</p>
				<p class="p2" id="mm_zhaiquan">
					<em></em>自动购买债权<span>（适用于购买WE计划的用户）</span>
				</p>
				<p class="p2" id="mm_huankuan">
					<em></em>自动还款<span>（适用于有借款的用户）</span>
				</p>
				<p class="p2" id="mm_tixian">
					<em></em>自动提现<span>（适用于企业及业务相关用户）</span>
				</p>
			</div>
		</div>
		<div class="bottom">
			<div class="btn-group">
				<a target="_blank" id="btn_showquan" class="btn">立即开通</a>
			</div>
		</div>
	</div>
	<div class="xm-mask" style="display: none;"></div>
	<div class="xiamen-pop" style="display: none;">
		<div class="close"></div>
		<div class="pop-tit">
			<h3></h3>
			<h4>团贷网联手厦门银行</h4>
			<p>个人账户升级为厦门银行存管账户</p>
		</div>
		<div class="pop-body">
			<p>
				<span id="sp_open" style="display:none;">您尚未开通厦门银行资金存管账户，请先开通</span><span
					id="sp_active" style="display:none;">您的账号已升级为厦门银行资金存管账户，请您激活账户</span>
			</p>
			<a href="https://www.tuandai.com/member/Bank/XM_BankBind.aspx"
				id="aOpen" class="btn">马上开通</a> <a href="javascript:void(0);"
				target="_blank" id="aActived" class="btn">马上激活</a> <a
				href="https://www.tuandai.com/member/Bank/XM_BankBind_Complete.aspx"
				id="aBankBind" class="btn">绑定银行卡</a>
		</div>
	</div>
	<div id="bankBindAlert" style="display: none; margin-left: -204px;"
		class="dial-window xm-window bankBindAlert">
		<div class="title rel">
			温馨提示：<i class="close-x cgt-close-x icon db abs"></i>
		</div>
		<div class="body">
			<div class="" style="text-align:center;">
				<p class="p1">
					请您在新打开的页面完成<span id="sp_title"></span>
				</p>
				<p class="p2">
					<span id="sp_title2"></span>完成前请不要关闭此窗口，根据完成结果，选择下面的操作
				</p>
			</div>
		</div>
		<div class="bottom">
			<div class="btn-group">
				<a href="${pageContext.request.contextPath }/account" id="remind_aa"
					class="btn"><span id="aa_title"></span></a>
			</div>
			<a class="question" href="javascript:void(0);" target="_blank"><span
				id="sp_title3"></span>遇到问题</a>
		</div>
	</div>
	<div id="gangaoAlert" style="display: none;"
		class="dial-window xm-window hongkong">
		<div class="title rel">
			温馨提示：<i class="close-x cgt-close-x icon db abs"></i>
		</div>
		<div class="body">
			<div class="" style="text-align:center;">
				<div class="codexe"
					style="width:119px;height:124px;background:url(//js.tuandai.com/images/member/my_capital/codexe.png);position:absolute;top:36px;left:281px;z-index: 100;display: none;"></div>
				<p>
					<b>由于您的证件为<span id="sp_cardTypeName">港澳通行证</span>，您还需完成以下操作才能进行正常理财：
					</b>
				</p>
				<p>
					1、添加专属服务<a id="a_qq" target="_blank"
						href="http://wpa.qq.com/msgrd?v=3&amp;uin=2880323191&amp;site=qq&amp;menu=yes">2880761023</a>或<a
						class="a_qq a_code"
						style="background: url(//js.tuandai.com/images/member/my_capital/code20170426001.png);cursor: pointer;">2880761023</a>为好友。<br>
					2、<span id="sp_2Content">QQ或微信联系客服专员，需提交以下申请材料：手持港澳台通行证证件彩色半身照【保证证件号码清晰且不能是镜面照】港澳台通行证背面彩色照片,受理时间为：周一至周五9:00-12:00
						13:30-18:00，周六日与法定节假日除外。</span><br>
					3、资料提交后，平台及银行将会进行双重审核，一般时长为2天，审核通过后即可进行投资理财，届时会有短信通知。<br>
					4、若已提交过资料给客服，则不需要重复提交，且可进行正常投资理财。
				</p>
			</div>
			<div class="bottom">
				<div class="btn-group">
					<a id="hkBtn" href="javascript:;" class="btn">我知道了</a>
				</div>
			</div>
		</div>
	</div>
	<div id="TheadAlert" style="display: none;"
		class="dial-window xm-window forgetPhone">
		<div class="title rel" style="display:block;">
			温馨提示：<i class="close-x cgt-close-x icon db abs"></i>
		</div>
		<div class="body">
			<div class="">
				<p class="p1">
					<span id="sp_newcontent">如果您忘记银行卡预留手机号，请与您的发卡银行客服联系，咨询预留手机号</span>
				</p>
			</div>
		</div>
		<div class="bottom">
			<div id="btn_03" class="btn-group">
				<a id="qiyeBtn" href="javascript:;" class="btn">我知道了</a>
			</div>
			<div id="btn_04" class="count" style="display:none;">
				<a class="td-btn-1 td-btn-1-or btn"
					href="${pageContext.request.contextPath }/Validat_eindex.html">我要修改预留手机号</a>
			</div>
		</div>
	</div>
	<div class="footer fix">
		<div class="footer-content auto fix cl">
			<div class="address fa f12 tc mt15">
				2010-2017 版权所有 © 团贷网 <a href="http://www.miitbeian.gov.cn/"
					target="_blank">粤ICP备12043601号-1</a> 地址：东莞市南城街道莞太路111号民间金融大厦1号楼28楼
				<br> 东莞团贷网互联网科技服务有限公司
			</div>
		</div>
	</div>
	<div id="dial-window" style="display: none;" class="z103">
		<div class="title">
			加载中 <i class="close close-x icon abs"></i>
		</div>
		<div class="body">
			<img
				src="${pageContext.request.contextPath }/static/img1/loading.gif"
				alt="加载中">
		</div>
		<div id="dial-window-btns" class="btns tc">
			<div class="inbid">
				<a href="javascript:void(0)" class="td-btn-1 td-btn-1-or dete "
					id="dial-window-okbtn">确定</a> <a href="javascript:void(0)"
					class="td-btn-1 td-btn-1-gar  cancle " id="dial-window-canclebtn">取消</a>
			</div>
			<div class="g6"
				style="font-size: 14px; margin-left: -14px; padding: 18px 0 0px 0; display: none;"
				id="divTiQian"></div>
		</div>
	</div>
	<div id="diallayer" style="display: none;"></div>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/js1/jquery-1.7.2.min.js"></script>
	<script src="${pageContext.request.contextPath }/js/js1/thirdlib.js"></script>
	<script src="${pageContext.request.contextPath }/js/js1/public.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/js1/settdwcookie.js"></script>
	<script type="text/javascript">
		var IsOpenCGT = '1'; //是否开通存管通 
		var IsOpenCgtTrans = '1';
		var backUrlClose = "";
	</script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/js1/userbank.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/js1/project_dialog_cgt.js"></script>
	<script src="${pageContext.request.contextPath }/js/js1/common.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/js1/account.js"></script>
	<script
		src="${pageContext.request.contextPath }/js/js1/jquery.selectlist.js"></script>
	<script charset="GB2312" type="text/javascript"
		src="${pageContext.request.contextPath }/js/js1/cgt_common.js"></script>
	<script type="text/javascript">
		var isEnterAutoInvestSetPage = getCookie("78d7948a" + "isEnterAutoInvestSetPage"); //是否进入自动投标设置
		var isClosedYellowTip2 = getCookie("78d7948a" + "isClosedYellowTip"); //手动点击关闭黄标签
		var isDefaultShowed = getCookie("78d7948a" + "_account_default"); //是否首页显示
		var tuandaiw = getCookie("tuandaiw");
		$(function() {
			$(".a_code").mouseover(function() {
				$(".codexe").show();
			}).mouseout(function() {
				$(".codexe").hide();
			});
	
			try {
				getRandomValue();
			} catch (e) {}
			$('#menu_autoTender').hover(function() {
				$('#YellowTips').fadeIn(150);
			},
				function() {
					$('#YellowTips').stop().fadeOut();
				}
			);
			$('#menu_myWePlan').hover(function() {
				$('#YellowTips2').fadeIn(150);
			},
				function() {
					$('#YellowTips2').stop().fadeOut();
				}
			);
			$("#menu_withdraw,#menu_recharge").click(function() {
				try {
					getRandomValue();
					if (IsOpenCGT == "1" && !checkIsOpen("chongzhi"))
						return false;
				} catch (e) {}
			});
	
			$("#menu_borrowMiniEdit").click(function() {
				try {
					if (IsOpenCGT == "1" && !checkIsOpen("noshouquan"))
						return false;
				} catch (e) {}
			});
			$("#menu_userservice").click(function() {
				try {
					if (IsOpenCGT == "1" && !checkIsOpen())
						return false;
				} catch (e) {}
			});
			$("#menu_autoTender").click(function() {
				try {
					if (IsOpenCGT == "1" && !checkIsOpen("touzi"))
						return false;
				} catch (e) {}
			});
	
			if (isEnterAutoInvestSetPage != null && isEnterAutoInvestSetPage != "") {
				isEnterAutoInvestSetPage = "1";
			}
			if (isClosedYellowTip2 != null && isClosedYellowTip2 != "") {
				isClosedYellowTip2 = "1";
			}
			if (isDefaultShowed != null && isDefaultShowed != "") {
				isDefaultShowed = "1";
			}
	
			if (isEnterAutoInvestSetPage != "1") {
	
				$('#menu_autoTender').find('em').addClass("emClass");
			}
	
			if (window.location.href.indexOf("member/account_default.aspx") < 0) {
				//不是主页,自动提示
				if (isClosedYellowTip2 != "1" && isEnterAutoInvestSetPage != "1") {
					$('#YellowTips').fadeIn();
				}
			} else {
				//是主页,如果大黑不显示自动提示
				if (isClosedYellowTip2 != "1" && isEnterAutoInvestSetPage != "1" && isDefaultShowed != "1") {
					$('#YellowTips').fadeIn();
				}
			}
	
			$('#menu_autoTender').find('.close').click(function() {
				$('#YellowTips').fadeOut();
				setCloseYellowTips();
			});
		});
		function setCloseYellowTips() {
			setCookie("78d7948a" + "isClosedYellowTip", "1");
		}
	</script>
	<script type="text/javascript">
	
		var left_newTitle = '团贷网提醒您：';
		var left_IsValidateMobile = 'True';
		var left_IsValidateIdentity = 'True';
		var left_IsSetPayPwd = "False";
		var IsbindBankNo = 'True';
		var IsOpenCGT = '1';
	
		function left_CheckAllowDraw() {
			if (IsOpenCGT != "1") {
				if (left_IsValidateMobile != 'True' || left_IsValidateIdentity != 'True' || left_IsSetPayPwd != 'True') {
					userbank.tips(left_IsValidateMobile, left_IsValidateIdentity, left_IsSetPayPwd, "提现");
					return false;
				} else if (IsbindBankNo == "False") {
					$.ajax({
						async : false,
						type : "get",
						url : '/member/Bank/CompleteBank.aspx?ReturnUrl=/member/Bank/drawmoney.aspx',
						success : function(data) {
							if ($("#bindBankWindows").length > 0) {
								$("#bindBankWindows,#diallayer").remove();
							}
							$("body").append(data);
						},
						cache : false
					});
					return false;
				}
			}
			return true;
		}
	
		function left_CheckAllowBindBank() {
			if (left_IsValidateMobile != 'True' || left_IsValidateIdentity != 'True') {
				userbank.tips(left_IsValidateMobile, left_IsValidateIdentity);
				return false;
			}
			return true;
		}
	</script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/js1/settdwcookie.js"></script>
	<%-- <script type="text/javascript" src="${pageContext.request.contextPath }/js/js1/account.js(1)"></script> --%>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/js1/echarts/echarts.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/js1/jquery.pagination.js"></script>
	<script type="text/javascript">
		function copy2(projectId) {
			if (confirm("您好，您确定要复制此项目吗？")) {
				$.ajax({
					url : "/member/ajaxCross/project.ashx",
					type : "post",
					dataType : "json",
					data : {
						Cmd : "copyproject",
						projectId : projectId
					},
					success : function(json) {
						if (parseInt(json.result) == -100) {
							window.location.href = "/View/NoticeMessage.aspx?status=2";
						} else if (parseInt(json.result) == -99) {
							window.location.href = "/user/login.aspx?ReturnUrl=" + window.location.href;
						} else if (parseInt(json.result) == 1) {
							//globalDialog("", json.msg, "/member/account_borrowInComplete.aspx", "1");
							closeLoadingWindows();
							showDialWindows("团贷网提醒您", json.msg, "确定", function() {
								closeLoadingWindows();
								window.location = '/member/account_borrowInComplete.aspx';
							});
						} else {
							//globalDialog("", json.msg, "", "1");
							closeLoadingWindows();
							showDialWindows("团贷网提醒您", json.msg, "确定", closeLoadingWindows);
						}
					}
				});
			}
		}
	</script>
	<script type="text/javascript">
		$("#menu_borrowList").addClass("currentMenu");
	</script>

	<script type="text/javascript">
		var TotalBorrowAmount = 10000.00; //累计借款
		var TotalInterestCost = 200.00; //累计利息
		var AvaInterestCost = 150.00; //平均利息成本
	
		var NormalRefundAmount = 3000.00; //正常还款借款
		var InvestingAmount = 700.00; //投标中借款
		var CompletedAmount = 200.00; //已完成借款
	
		var DuePayOutInterest = 400.00; //待付利息
		var TotalPenalty = 200.00; //累计滞纳金
	
		var HadPayOutInterest = 600.00;
		require.config({
			packages : [
				{
					name : 'pie',
					location : '${pageContext.request.contextPath }/js/js1/echarts/chart', // zrender与echarts在同一级目录
					main : 'pie'
				},
				{
					name : 'echarts',
					location : '${pageContext.request.contextPath }/js/js1/echarts',
					main : 'echarts'
				}
			]
		//          paths: {
		//              echarts: 'echarts'
		//          }
		});
		require(
			[
				'echarts',
				'echarts/chart/pie' // 按需加载所需图表，如需动态类型切换功能，别忘了同时加载相应图表
			],
			function(ec) {
				var myChart = ec.init(document.getElementById('myChart'));
				var option = {
					tooltip : {
						trigger : 'item',
						formatter : "{a} <br/>{b} : {c}  ({d}%)"
					},
	
					toolbox : {
						show : false,
						feature : {
							mark : {
								show : true
							},
							dataView : {
								show : true,
								readOnly : false
							},
							magicType : {
								show : true,
								type : [ 'pie', 'funnel' ]
							},
							restore : {
								show : true
							},
							saveAsImage : {
								show : true
							}
						}
					},
					calculable : false,
					series : [
						{
							name : '借款',
							type : 'pie',
							radius : [ 0, 60 ],
							center : [ '60', '80' ],
							roseType : 'null',
							width : '40%', // for funnel
							itemStyle : {
								normal : {
									label : {
										show : false
									},
									labelLine : {
										show : false
									}
								},
								emphasis : {
									label : {
										show : false
									},
									labelLine : {
										show : false
									}
								}
							},
							data : [
								{
									value : NormalRefundAmount,
									name : '正常还款借款',
									itemStyle : {
										normal : {
											color : "#fec20e"
										}
									}
								},
								{
									value : InvestingAmount,
									name : '投标中借款',
									itemStyle : {
										normal : {
											color : "#a6ce39"
										}
									}
								},
								{
									value : CompletedAmount,
									name : '已完成借款',
									itemStyle : {
										normal : {
											color : "#00ccff"
										}
									}
								}
							]
						},
						{
							name : '支出',
							type : 'pie',
							radius : [ 0, 60 ],
							center : [ '500', 80 ],
							roseType : 'null',
							x : '50%', // for funnel
							sort : 'ascending', // for funnel
							itemStyle : {
								normal : {
									label : {
										show : false
									},
									labelLine : {
										show : false
									}
								},
								emphasis : {
									label : {
										show : false
									},
									labelLine : {
										show : false
									}
								}
							},
	
							data : [
								{
									value : DuePayOutInterest,
									name : '待付利息',
									itemStyle : {
										normal : {
											color : "#fec20e"
										}
									}
								},
								{
									value : HadPayOutInterest,
									name : '已付利息',
									itemStyle : {
										normal : {
											color : "#a6ce39"
										}
									}
								},
								{
									value : TotalPenalty,
									name : '滞纳金',
									itemStyle : {
										normal : {
											color : "#00ccff"
										}
									}
								}
							]
						}
					]
				}
				myChart.setOption(option);
			}
		);
	</script>


	<script type="text/javascript">
		(function() {
			$('.member-list').hover(function() {
				$(this).find('ul').addClass('ul-type').end().find('.mission').show();
				$(this).find('.arrow').removeClass('down-arrow').addClass('up-arrow');
			}, function() {
				$(this).find('ul').removeClass('ul-type').end().find('.mission').hide();
				$(this).find('.arrow').removeClass('up-arrow').addClass('down-arrow');
			}
			)
	
		})();
		function stringToHex(s) {
			var r = '';
			var hexes = new Array('0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f');
			for (var i = 0; i < (s.length); i++) {
				r += hexes[s.charCodeAt(i) >> 4] + hexes[s.charCodeAt(i) & 0xf]
			}
			return r
		}
		function HexTostring(s) {
			var r = '';
			for (var i = 0; i < s.length; i += 2) {
				var sxx = parseInt(s.substring(i, i + 2), 16);
				r += String.fromCharCode(sxx)
			}
			return r
		}
	
		var nwbi_userName = "";
		var nwbi_sysNo = "TDW";
		var IsLogin = isCookieLogin();
		if (IsLogin) {
			var nickname = jaaulde.utils.cookies.get("TDWUserName");
			nwbi_userName = nickname;
		}
		(function() {
			var ta = document.createElement('script');
			ta.type = 'text/javascript';
			ta.async = true;
			ta.src = ((("https:") == document.location.protocol) ? "https://" : "http://") + 'bilog.niiwoo.com/js/webaccess.js';
			var s = document.getElementsByTagName('script')[0];
			s.parentNode.insertBefore(ta, s);
		})();
	
		var _hmt = _hmt || [];
		(function() {
			var hm = document.createElement("script");
			hm.src = "//hm.baidu.com/hm.js?6dff67da4e4ef03cccffced8222419de";
			var s = document.getElementsByTagName("script")[0];
			s.parentNode.insertBefore(hm, s);
		})();
	</script>

	<script type="text/javascript">
        var pageindex = 1;
        var pagesize = 5;
        var type = '1';
        var dateMiniSet = '2017/12/23 0:00:00';
        var dateMaxArray = new Array(31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31);

  /*  function GetData() {
            jQuery.ajax({
                async: false,
                type: "post",
                url: "./loadRecords22",
                dataType: "json",
                data: {
                    Cmd: "GetBorrowReturnPlan",
                    pagesize: pagesize,
                    pageindex: pageindex,
                    type: type
                },
                success: function (jsonstr) {
                    $("#trhead").nextAll().remove();
                    var html = new Array();
                    var str = "";
                    if (jsonstr.result == "1") {
                        $("#getLoadTotalMoney").text("￥"+jsonstr.getLoadTotalMoney);
                        $("#readyedTotalLoad").text("￥"+jsonstr.readyedTotalLoad);
                         for (var i = 0; i < jsonstr.list.length; i++) {
                        var date = new Date(jsonstr.list[i].loadtime);
                            str = "<tr>" +
                                "<td class=\"txt_center \">" + jsonstr.list[i].rebackType + "</td>" +
                                "<td class=\"txt_center \" style=\"color:red\">" + jsonstr.list[i].loadtype +"</td>" +
                                "<td class=\"txt_center\"><span class=\"font-orange2\">￥" +jsonstr.list[i].loadmoney + "</span></td>" +
                                "<td class=\"txt_center \" style=\"color:red\">" + jsonstr.list[i].loadrate + "</td>" +
                                "<td class=\"txt_center\"><span class=\"font-orange2\">" + jsonstr.list[i].loadperiod + "个月</span></td>" +
                                "<td class=\"txt_center \" style=\"color:red\">" + date.getFullYear()+"-"+ (date.getMonth()+1)+"-"+date.getDay()  + "</td>" +
                                "<td class=\"txt_center\"><span class=\"font-orange2\">" +  jsonstr.list[i].loadstatus  + "</span></td>" +
                                "<td class=\"txt_center\">";																																																													/* javascript:(0) */
                           /*  str += "<div class='list-item-1' style='width: 82px; z-index: 0;'><dl><dt><a href='#' class='dialogbtn'>查看详情</a><i class='arrow' style='margin-left: 4px;'></i></dt><dd style=\"text-align:center\"><a href='${pageContext.request.contextPath }/loadPersonShenHe'>重新发标</a></dd><dd style=\"text-align:center\"><a href='javascript:delLoadRecord(\""+jsonstr.list[i].id+"\");'>删除</a></dd><dd style=\"text-align:center\"><a href='#'>提前还款</a></dd></dl></div>"; 
                            str += "</td></tr>";
                            html.push(str);
                        }
                        $(html.join("")).insertAfter('#trhead');
                        initBorrowReturnPlanPagin(jsonstr.totalcount);
                    }
                   
                },
                error: function (a, b, c) {
                    $("#trhead").nextAll().remove();
                    $("<tr><td colspan=\"4\" align=\"center\">加载有误...</td></tr>").insertAfter('#trhead');
                }
            });
            $(".account_tableNR").find("tr").css("background-color", "#f0f0f0");
            $(".account_tableNR").find("tr:odd").css("background-color", "#fff");
        } */ 
        
        
        function Convert2Digit(num) {
            if (num.toString().indexOf(".") > -1) {
                return num.toString().substring(0, num.toString().indexOf(".") + 3);
            }
            else
                return num.toFixed(2);
        }
        //所有列表
         function initBorrowReturnPlanPagin(recordCount) {
             var num_entries = recordCount;
             $("#pager").pagination(num_entries, {
                 callback: getList,
                 items_per_page: pagesize,
                 num_display_entries: 5,
                 current_page: parseInt(pageindex - 1),
                 num_edge_entries: 2,
                 link_to: "#trhead",
                 prev_text: "上一页",
                 next_text: "下一页",
                 ellipse_text: "...",
                 prev_show_always: true,
                 next_show_always: true,
                 renderer: "defaultRenderer",
                 show_if_single_page: false,
                 load_first_page: true
             });
         }
         function getList(page_index, jq) {
             if (parseInt(pageindex - 1) == page_index) {
                 return false;
             }
             pageindex = (page_index + 1);
             GetData(1);
             return false;
         }  
         
       //删除记录：
         function delLoadRecord(projectId) {
		        	 var dodel = confirm("您确定要删除此条记录吗？");
		        	 if(dodel==true){
				       		 $.ajax({
				    	            url: "./delLoadRecord",
				    	            type: "post",
				    	            dataType: "json",
				    	            data: { Cmd: "delproject", projectId: projectId },
				    	            success: function (json) {
				    	                 if (parseInt(json.result) == 1) {
				    	                   	alert("删除成功")
				    	                    window.location = '${pageContext.request.contextPath }/loadRecords';
				    	                }
				    	                else {
				    	                	alert("删除失败！")
				    	                }
				    	            }
				    	      });
		        	 }
         }

   
       
       
       
       
       
       
 //已完成的借款--------------------------------------------------------------------------------------------      
       
       
      function getdata(){
	var uid=$("#uid").val();
	//alert(uid)
	$.post("/Tuan/findjilu.do",{"uid":uid},function(data){
		//alert(data)
		$(".account_tableNR tr:gt(0)").remove();
		if(data!=null){
		for (var i = 0; i < data.length; i++) {
		if(data[i].loadStatus==0){
			var tr=$("<tr></tr>");
			var orderId=$("<td class=\"txt_center \" ></td>").text(data[i].orderId);
			
			tr.append(orderId);
			var loadType=$("<td class=\"txt_center \" ></td>").text(data[i].loadType);
			tr.append(loadType);
			var loadMoney=$("<td class=\"txt_center \"  ></td>").text(data[i].loadMoney);
			tr.append(loadMoney);
			var loadRate=$("<td class=\"txt_center \" ></td>").text(data[i].loadRate+"%");
			tr.append(loadRate);
			var loadTime=$("<td class=\"txt_center \" ></td>").text(data[i].loadPeriod);
			tr.append(loadTime);
			var loadPeriod=$("<td class=\"txt_center \" ></td>").text(data[i].loadTime);
			tr.append(loadPeriod);
			if(data[i].loadStatus==0){
			var loadStatus=$("<td class=\"txt_center \" ></td>").text("未审核");
			tr.append(loadStatus);
			}
			//var div="<div class='list-item-1' style='width: 82px; z-index: 0;'><dl><dt><a href='#' class='dialogbtn'>查看详情</a><i class='arrow' style='margin-left: 4px;'></i></dt><dd style=\"text-align:center\"><a href='${pageContext.request.contextPath }/loadPersonShenHe'>重新发标</a></dd><dd style=\"text-align:center\"><a href='javascript:delLoadRecord(\""+data[i].id+"\");'>删除</a></dd><dd style=\"text-align:center\"><a href='#'>提前还款</a></dd></dl></div>";
			
			var div="<div class='list-item-1' style='width: 82px; z-index: 0;'><dl><dt>不可操作</dt></dl></div>";
			var cz=$("<td class=\"txt_center \" ></td>").html(div);
			tr.append(cz);
			
			$(".account_tableNR").append(tr);
			}else{
			
			}
			}
		}else{
			var td=$("<td colspan=8 style='text-align:center;'></td>").text("暂无记录！");
			var tr=$("<tr></tr>");
			tr.append(td);
			$(".account_tableNR").append(tr);
		}
		
		
	},"json");
}
getdata();
       
     
   
    </script>

	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/js1/settdwcookie.js"></script>


	<img src="#" style="display: none;">
	<img src="#" style="display: none;">
	<img src="#" style="display: none;">
</body>
</html>



