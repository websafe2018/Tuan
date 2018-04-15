<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><title>
网上贷款,抵押贷款,信用贷款,快速借款,短期借款-团贷网
</title><link rel="dns-prefetch" href="https://image.tuandai.com/"><link rel="dns-prefetch" href="https://js.tuandai.com/"><link rel="dns-prefetch" href="https://vip.tuandai.com/"><link rel="dns-prefetch" href="https://hd.tuandai.com/"><link rel="dns-prefetch" href="https://bbs.tuandai.com/"><meta property="qc:admins" content="3542563377645164116375">
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link rel="shortcut icon" href="#">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/css2/base20151225.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/css2/public20151225.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/css2/xiamen-bank.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/css2/cgt20161107.css">
<meta name="keywords" content="快速借款,短期借款,网上贷款,抵押贷款,信用贷款">
<meta name="description" content="团贷网是安全可靠的P2P网贷平台,为您准备了方便快捷的借款方案,提供快速信用借款、短期借款、有抵押借款服务,网上贷款就找团贷网。">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/css2/loan.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/css2/xiamen-bank.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/css2/cgt20161107.css">

<script type="text/javascript" src="${pageContext.request.contextPath }/js/homepage/borrow_money.js"></script>


</head>
<body>
<div class="header">
<div class="t-b  t-b-w lh40 bgff f12 fst cl">
<div class="w1200 h40 auto g6">
<div class="right-side  r inline-block-debug">
<%-- <div class="inline-block-debug c-poi-a">
<a href="${pageContext.request.contextPath }/investmenthome.jsp" class="red mr15"><i class="icon dib hous-icon"></i>前往团贷网</a>
</div> --%>

<input type="text" value="${users.id}" hidden="hidden" id="uid"/>
<div class="inline-block-debug c-poi-a" id="">
<span class="reg" style="color:#303030">欢迎您，</span><a href="#"  class="reg">${users.userName }</a><span>|</span><a href="javascript:logout();">退出</a>

<a href="${pageContext.request.contextPath }/jsp/homepage/login.jsp" class="reg">登录</a><span>|</span><a rel="nofollow" href="${pageContext.request.contextPath }/jsp/homepage/register.jsp" class="reg">注册</a><span>|</span></div>
<a rel="nofollow" href="${pageContext.request.contextPath }/homepage/helppage.jsp" target="_blank">帮助中心</a><span>|</span>
<a href="#" target="_blank">社区</a><span>|</span>
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
<div class="r rel tc  slid z3">
<!-- myaccountScroll -->
<dl class="abs i-b-d vt about-us r0" id="">
<dt><a href="${pageContext.request.contextPath }/myAcc.do"><i class="account-icon i-b-d icon vm"></i>我的账户</a></dt></dl>
</div>
<div class="nav r">
<ul>
<li class="nav-t">
<a href="${pageContext.request.contextPath }/jsp/homepage/investmenthome.jsp">首页</a>
</li>
<li class="nav-t w130">
<div class="r rel tc  slid z3 r ">
<dl class="abs i-b-d vt guarantee r0">
<dt><a href="${pageContext.request.contextPath }/jsp/homepage/LooseInvestment.jsp">我要投资<i class="icon arrow i-b-d vm"></i></a></dt>
<dd>
<a href="${pageContext.request.contextPath }/lntellgent" target="_blank">智能投资</a>
</dd>
<dd>
<a href="${pageContext.request.contextPath }/jsp/homepage/LooseInvestment.jsp" target="_blank">散标专区</a>
</dd>
</dl>
</div>
</li>
<li class="nav-t w130">
<div class="r rel tc  slid z3 r ">
<dl class="abs i-b-d vt guarantee r0">
<dt><a rel="nofollow" href="${pageContext.request.contextPath }/platform">信息披露<i class="icon arrow i-b-d vm"></i></a></dt>
 	<dd style="display: none;">
                <a rel="nofollow" href=" ${pageContext.request.contextPath }/riskcontroller">安全保障</a>
         </dd>
         <dd style="display: none;"> 
                <a rel="nofollow" href=" ${pageContext.request.contextPath }/index4" target="_blank">担保专款</a>
         </dd>
         <dd style="display: none;">
                <a rel="nofollow" href=" ${pageContext.request.contextPath }/report">运营报表</a>
         </dd>
         <dd style="display: none;">
                <a rel="nofollow" href=" ${pageContext.request.contextPath }/operationaldata">平台数据</a>
         </dd>
         <dd style="display: none;">
                <a rel="nofollow" href=" ${pageContext.request.contextPath }/regulatory">监管法规</a>
         </dd>
         <dd style="display: none;">
                <a rel="nofollow" href="${pageContext.request.contextPath }/platform">关于我们</a>
         </dd>                               
</dl>
</div>
</li>
<li class="nav-t">
<a href="${pageContext.request.contextPath }/jsp/homepage/borrow_money.jsp">我要借款</a>
</li>
</ul>
</div>
<a class="logo dib l" href="${pageContext.request.contextPath }/jsp/homepage/investmenthome.jsp">
<img src="${pageContext.request.contextPath }/static/img2/logo.png" alt="团贷网"></a>
<div class="index-bd" id="base_index_box">
<ul class="index_slider" id="base_index_slider" style="bottom: 0px">
<li><a>
<img src="${pageContext.request.contextPath }/static/img2/1502357148516.png" alt="网贷"></a>
</li>
</ul>
</div>
</div>
</div>
</div>
<div class="tool">
<div class="t-box rel" onclick="javascript:void(0);">
<div class="dan-tip abs tc" style="display: none">市场有风险投资需谨慎<span class="triangle db"></span></div>
<i class="t6"></i>
<a href="javascript:;">风险提示</a>
</div>
<div class="t-box" onclick="javascript:window.open('http://www.sobot.com/chat/pc/index.html?sysNum=20ab7dce1e3346e8b90b649bd8baf591');"><i class="t1"></i><a href="javascript:;">在线客服</a></div>
<div class=" t-box" onclick="javascript:window.open('http://info.tuandai.com/help/index.html');"><i class="t2"></i><a href="${pageContext.request.contextPath }/jsp/helppage/helppage.jsp">帮助中心</a></div>
<div class=" t-box" onclick="javascript:window.open('http://news.tdw.cn/tool/int_fina.aspx');"><i class="t3"></i><a class="${pageContext.request.contextPath }/jsp/homepage/IntelligentCalculator.jsp" href="javascript:;">计算工具</a></div>
<div class="t-box to-top" onclick="javascript:;" style="display: none;"><i class="t5"></i><a href="javascript:;" class="pt10">回到顶部</a></div>
</div>
<div class="container w1200 auto">
<div class="position">您当前所在的位置：团贷网 &gt; 我要借款</div>
<div class="item item1">
<ul class="cl fix">
<li>
<span class="pic loan-icon p1"></span>
<span class="text">填写借款申请</span>
</li>
<li><span class="circle loan-icon"></span></li>
<li>
<span class="pic loan-icon p2"></span>
<span class="text">平台进行信用调查和审核</span>
</li>
<li><span class="circle  loan-icon"></span></li>
<li>
<span class="pic loan-icon p3"></span>
<span class="text">借款标通过审核并上线</span>
</li>
<li><span class="circle loan-icon"></span></li>
<li>
<span class="pic loan-icon p4"></span>
<span class="text">借款成功，后续管理</span>
</li>
</ul>
</div>

<div class="item item2 mt15 bgfff">
<h2 class="cl fix">
<span class="zhhp r f14"><i class="loan-icon "></i><a href="javascript:;" ><!-- onclick="window.open('http://hd.tuandai.com/web/zhhph/pc/index.aspx');" -->了解正合普惠金融</a></span>
<span class="line">快速信用借</span>
<span class="s-title f14">该业务由正合普惠金融提供，精准解决资金难题</span>
</h2>
<div class="item-list">
<ul class="cl fix">
<li onclick="ShowBorrowDial('creditBorrow', '申请公务员方案', 1, 1);">
<div class="animation-transition">
<div class="title">公务员方案</div>
<div class="text">适用于公务员、事业单位、银行、公立学校、公立医院的职工
<p>最高可借<span class="c-org">20万</span></p>
</div>
<div class="pic pic-1">
<span class="t t1 loan-icon"></span>
<a class="l apply" href="javascript:;">立即申请</a>
</div>
</div>
</li>
<li onclick="ShowBorrowDial('creditBorrow', '申请精英方案', 1, 2);">
<div class="animation-transition">
<div class="title">精英方案</div>
<div class="text">适用于在本地有社保公积金的工薪族
<p>最高可借 <span class="c-org">15万</span></p>
</div>
<div class="pic pic-2">
<span class="t t2 loan-icon"></span>
<a class="l apply" href="javascript:;">立即申请</a>
</div>
</div>
</li>
<li onclick="ShowBorrowDial('creditBorrow', '申请公积金方案', 1, 3);">
<div class="animation-transition">
<div class="title">公积金方案</div>
<div class="text">适用于在本地有公积金的申请人
<p>最高可借<span class="c-org">20万</span></p>
</div>
<div class="pic pic-3">
<span class="t t3 loan-icon"></span>
<a class="l apply" href="javascript:;">立即申请</a>
</div>
</div>
</li>
<li class="bdr0" onclick="ShowBorrowDial('creditBorrow', '申请保单方案', 1, 4);">
<div class="animation-transition">
<div class="title">保单方案</div>
<div class="text">适用于有投保人寿险产品的投保人
<p>最高可借<span class="c-org">20万</span></p>
</div>
<div class="pic pic-4">
<span class="t t4 loan-icon"></span>
<a class="l apply" href="javascript:;">立即申请</a>
</div>
</div>
</li>
</ul>
</div>
</div>


<div class="item4 mt15 cl fix">
<h2 class="cl fix">
<span class="line">常见问题</span>
</h2>
<div class="pl10">
<dl class="pt30  d1">
<dt class="loan-icon qus"></dt>
<dd class="d1">
<div class="tt">借款审核一般需要多长时间？</div>
<div class="text">借款资料提交成功后，工作人员会在 2 个工作日内进行审核，审核结果会以电话的形式通知。</div>
</dd>
</dl>
<dl class="d2 ">
<dt class="loan-icon qus"></dt>
<dd>
<div class="tt">借款额度是多少？</div>
<div class="text">不同的借款产品额度范围有一定差别，各产品详情页中有详细说明。</div>
</dd>
</dl>
<dl class="d3 pt30 ">
<dt class="loan-icon qus"></dt>
<dd class="  ">
<div class="tt">还款方式有哪些？</div>
<div class="text">目前根据不同的借款产品支持一次性还本付息，每月付息到期还本、等额本息、等本等息等还款方式。</div>
</dd>
</dl>
<dl class=" pt30 ">
<dt class="loan-icon qus"></dt>
<dd class="d4  ">
<div class="tt">借款需要支付哪些费用？</div>
<div class="text">借款人借款成功后需要支付给投资人的利息费用，以及支付给团贷网平台和团贷网平台合作伙伴的服务费用。</div>
</dd>
</dl>
</div>
</div>
</div>



<div class="loan-dial z101" style="display: none;" id="creditBorrow">
<div class="title">
<p>申请公务员方案</p> <i class="close  close-x icon abs"></i>
</div>
<div class=" body cl fix">
<div class="left l">
<div class="input-box z4">
<span class="v-name v-city">所在城市</span>
<div class="val rel  z3">
<div id="box1" class="cl fix">
<input class="province" value="-1" type="hidden">
<input class="city" value="-1" type="hidden">
<input class="area" value="-1" type="hidden">
<div name="province" id="creditProvince" type="selectbox" class="l mr10">
<div class="opts"></div>
<div class="sb_icon arrow rb" style="top: 10px;"></div>
</div>
<div name="city" id="creditCity" type="selectbox" class="l"><div class="opts"></div></div>
<p class="err-tip" id="checkAddressCredit" style="display:none;"><i class="err loan-icon"></i> 请选择</p>
</div>
</div>
</div>





<div class="input-box">
<span class="v-name">借款人姓名</span>
<span class="val rel z2">
<input class="input-style" id="txtNameCredit" maxlength="25" type="text">
<p class="err-tip" id="checkNameCredit" style="display:none;"><i class="err loan-icon"></i> 姓名错误</p>
</span>
</div>
<div class="input-box">
<span class="v-name">手机号码</span>
<span class="val">
<input class="input-style" id="txtPhoneCredit" maxlength="11" onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')" type="text">
<p class="err-tip" id="checkPhoneCredit" style="display:none;"><i class="err loan-icon"></i> 手机号错</p>
</span>
</div>

<div class="input-box">
<span class="v-name">借款金额</span>
<span class="val rel z2">
<input class="input-style" id="jine" maxlength="25" type="number" max="200000" min="0">
<p class="err-tip" id="checkNameCredit" style="display:none;"><i class="err loan-icon"></i> 金额错误</p>
</span>
</div>




<div class="input-box">
<span class="v-name">性别</span>
<span class="val sex"><i class="male select selected loan-icon"></i><span>先生</span> 
<i class="femal select loan-icon" id="femaleCredit"></i><span>女士</span> </span>



</div>
<%-- <div class="input-box mb1	">
<span class="v-name">图片验证码</span>
<span class="val">
<input class="input-style img-input  " id="txtCodeCredit" maxlength="4" type="text">
<p class="err-tip" id="checkCodeCredit" style="display:none;"><i class="err loan-icon"></i> 验证码错</p>
</span>
<span class="img"><img src="${pageContext.request.contextPath }/static/img2/ValidateCode.jpeg" style="cursor: pointer; width:80px;" alt="点击换一个校验码" id="imVcodeCredit" onclick="reload('${pageContext.request.contextPath }/static/img2/ValidateCode.ashx', '#imVcodeCredit');"></span>
</div> --%>
<div class="input-box mb0">
<a class="loan-btn1 r" href="javascript:;" onclick="SubmitCreditBorrow();">提交申请意向</a>
</div>
</div>




<div class="right r">
<p class="mt0">适用对象：</p>
<div class="int">专为事业单位、银行、公立学校、公立医院的正式员工提供的资金服务，审核简便，借款快捷。</div>
<p>申请条件：</p>
<div class="int">年龄在20周岁至60周岁之间的中国境内公民（不含港澳台）；申请人在本单位连续工作6个月以上。</div>
<p>最高额度：<span>20万</span></p>
<p>可选期限：<span>18/24/36/48期</span></p>
</div>



<div class="right r" style="display:none">
<p class="mt0">适用对象：</p>
<div class="int">专为急需资金的受薪人士提供的资金服务，审核简便、借款快捷。</div>
<p>申请条件：</p>
<div class="int">年龄在20周岁至60周岁之间的中国境内公民（不含港澳台）；申请人在本单位连续工作6个月以上；能够提供公积金/社保/代发工资的记录证明。</div>
<p>最高额度：<span>15万</span></p>
<p>可选期限：<span>18/24/36/48期</span></p>
</div>



<div class="right r" style="display:none">
<p class="mt0">适用对象：</p>
<div class="int">专为本地有公积金的客户提供的资金服务方案。</div>
<p>申请条件：</p>
<div class="int">年龄在20周岁至60周岁之间的中国境内公民（不含港澳台）；本地户籍申请人在本单位连续工作9个月以上；外地户籍申请人在本单位连续工作12个月以上。</div>
<p>最高额度：<span>20万</span></p>
<p>可选期限：<span>18/24/36/48期</span></p>
</div>



<div class="right r" style="display:none">
<p class="mt0">适用对象：</p>
<div class="int">专为有投保人寿保险且有资金需求的投保人提供的一项资金服务方案（申请人工作必须在申请地），保险购买城市无要求。</div>
<p>申请条件：</p>
<div class="int">年龄在20周岁至60周岁之间的中国境内公民（不含港澳台）；缴费时间满2年以上，且月缴费金额达到200元及以上（可针对同险种的金额累计）。</div>
<p>最高额度：<span>20万</span></p>
<p>可选期限：<span>18/24/36/48期</span></p>
</div>
</div>
</div>


<div class="loan-dial loan-dial-w500  z101" id="submitAlert" style="display: none;">
<div class="title">
<p>提交成功</p> <i class="close  close-x icon abs"></i>
</div>
<div class="body">
<div class="text"><i class="cicle loan-icon l success"></i><span class="l">提交成功 <br>我们将会尽快与您联系！</span>
</div>
<p><a class="td-btn-1  td-btn-1-or btn" onclick="CloseSubmitDial();" href="javascript:;">确 定</a></p>
</div>
</div>
<div class="loan-dial loan-dial-w500  z101  " id="messageAlert" style="display: none;">
<div class="title">
<p>借款意向提交失败</p> <i class="close  close-x icon abs "></i>
</div>
<div class="body">
<div class="text"><i class="cicle loan-icon l err"></i><span class="l">提交失败<br>请检查申请内容后重试！</span>
</div>
<p><a class="td-btn-1  td-btn-1-or btn" href="#">确 定</a></p>
</div>
</div>
<div id="td-atr-layer" class="z100" style="display: none;"></div>
<div style="display: none;" class="dial-window xm-window passwordAlt">
<div class="title1 rel">温馨提示：<i class="close-x cgt-close-x icon db abs"></i></div>
<div class="body">
<div class="">
<p class="p1">开启自动投标前，请您先进行以下授权：</p>
<p class="p2" id="mm_toubiao"><em></em>自动投标<span>（适用于设置自动投标的用户）</span></p>
<p class="p2" id="mm_zhaiquan"><em></em>自动购买债权<span>（适用于购买WE计划的用户）</span></p>
<p class="p2" id="mm_huankuan"><em></em>自动还款<span>（适用于有借款的用户）</span></p>
<p class="p2" id="mm_tixian"><em></em>自动提现<span>（适用于企业及业务相关用户）</span></p>
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
<p><span id="sp_open" style="display:none;">您尚未开通厦门银行资金存管账户，请先开通</span><span id="sp_active" style="display:none;">您的账号已升级为厦门银行资金存管账户，请您激活账户</span></p>
<a href="#" id="aOpen" class="btn">马上开通</a>
<a href="javascript:void(0);" target="_blank" id="aActived" class="btn">马上激活</a>
<a href="#" id="aBankBind" class="btn">绑定银行卡</a>
</div>
</div>
<div id="diallayer" style="display: none;"></div>
<div id="bankBindAlert" style="display: none; margin-left: -121.5px;" class="dial-window xm-window bankBindAlert">
<div class="title rel">温馨提示：<i class="close-x cgt-close-x icon db abs"></i></div>
<div class="body">
<div class="" style="text-align:center;">
<p class="p1">请您在新打开的页面完成<span id="sp_title"></span></p>
<p class="p2"><span id="sp_title2"></span>完成前请不要关闭此窗口，根据完成结果，选择下面的操作</p>
</div>
</div>
<div class="bottom">
<div class="btn-group">
<a href=" ${pageContext.request.contextPath }/account" id="remind_aa" class="btn"><span id="aa_title"></span></a>
</div>
<a class="question" href="javascript:void(0);" target="_blank"><span id="sp_title3"></span>遇到问题</a>
</div>
</div>
<div id="gangaoAlert" style="display: none;" class="dial-window xm-window hongkong">
<div class="title rel">温馨提示：<i class="close-x cgt-close-x icon db abs"></i></div>
<div class="body">
<div class="" style="text-align:center;">
<div class="codexe" style="width:119px;height:124px;background:url(//js.tuandai.com/images/member/my_capital/codexe.png);position:absolute;top:36px;left:281px;z-index: 100;display: none;"></div>
<p><b>由于您的证件为<span style="color:#f00; font-weight:700;">港澳通行证</span>，您还需完成以下操作才能进行正常理财：</b></p>
<p>
1、添加专属服务<a id="a_qq" target="_blank" href="http://wpa.qq.com/msgrd?v=3&amp;uin=2880323207&amp;site=qq&amp;menu=yes">2880761023</a>或<a class="a_qq a_code" style="background: url(//js.tuandai.com/images/member/my_capital/code20170426001.png);cursor: pointer;">2880761023</a>为好友。<br>
2、<span style="color:#f00; font-weight:700;">QQ或微信联系客服专员，需提交以下申请材料：手持港澳台通行证证件彩色半身照【保<br>证证件号码清晰且不能是镜面照】港澳台通行证背面彩色照片,受理时间为：周一至周五9:00-12:00 13:30-18:00，周六日与法定节假日除外。</span><br>
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
<div id="TheadAlert" style="display: none;" class="dial-window xm-window forgetPhone">
<div class="title rel" style="display:block;">温馨提示：<i class="close-x cgt-close-x icon db abs"></i></div>
<div class="body">
<div class="">
<p class="p1"><span id="sp_newcontent">如果您忘记银行卡预留手机号，请与您的发卡银行客服联系，咨询预留手机号</span></p>
</div>
</div>
<div class="bottom">
<div id="btn_03" class="btn-group">
<a id="qiyeBtn" href="javascript:;" class="btn">我知道了</a>
</div>
<div id="btn_04" class="count" style="display:none;">
<a class="td-btn-1 td-btn-1-or btn" href="https://www.tuandai.com/member/Validate/index.aspx">我要修改预留手机号</a>
</div>
</div>
</div>
<div class="footer fix">
<div class="footer-content auto fix cl">
<div class="fix">
<div class="park-1   l fix">
<div class="text l">
<dl>
<dt>新手帮助</dt>
<dd>
<a rel="nofollow" href="#">新手指引</a>
</dd>
<dd>
<a rel="nofollow" href="${pageContext.request.contextPath }/jsp/helppage/helppage.jsp">帮助中心</a>
</dd>
<dd>
<a rel="nofollow" href="#">资费介绍</a>
</dd>
</dl>
</div>
<div class="text l">
<dl>
<dt>安全保障</dt>
<dd>
<a rel="nofollow" href="${pageContext.request.contextPath }/regulatory">法律法规</a>
</dd>
<dd>
<a rel="nofollow" href="${pageContext.request.contextPath }/riskcontroller">安全保障</a>
</dd>
<dd>
<a rel="nofollow" href="${pageContext.request.contextPath }/partners">合作机构</a>
</dd>
</dl>
</div>
<div class="text l">
<dl>
<dt>如何投资</dt>
<dd>
<a target="_blank" href="#">投资资讯</a>
</dd>
<dd>
<a target="_blank" href="#">团贷问答</a>
</dd>
<dd>
<a target="_blank" href="#">团贷百科</a>
</dd>
</dl>
</div>
</div>
<div class="park-2 l"></div>
<div class="park-3 l">
<div class="p-nm fa f40 g-orange2">1010-1218</div>
<div class="server-time mt5">客服热线（服务时间：9:00-22:00）</div>
<div class="server-icon rel">
<div class="mail-int-box" style="display: none">
<div class="mail-int   tl">
<i class="arrow arrow-int abs icon"></i>
<div class="f12 b g3">客服邮箱：</div>
<div class="f12">
<a>kefu@tuandai.com</a>
</div>
</div>
</div>
<a class="online icon" href="#" target="_blank" title="在线服务" rel="nofollow"></a>
<a class="mail icon c-poi" onmouseover="showServers('.mail','.mail-int-box') "></a>
</div>
</div>
</div>
<div class="address fa f12 tc mt15">
2010-
2017 版权所有 © 团贷网
<a href="http://www.miitbeian.gov.cn/" target="_blank" rel="external nofollow">粤ICP备12043601号-1</a> <span style="width: 18px; height: 21px; vertical-align: middle; margin-left: 5px; margin-right: 5px; display: inline-block; background: url(//js.tuandai.com/images/default/links.png?v=20160629001) no-repeat; background-position: -523px -375px"></span>
<a rel="external nofollow" href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=44190002000538" target="_blank">粤公网安备44190002000538号</a>&nbsp;东莞团贷网互联网科技服务有限公司 地址：东莞市南城街道莞太路111号民间金融大厦1号楼28楼
</div>
</div>
<div class="security tc">
<a class="case1" rel="external nofollow" href="http://www.beianbeian.com/beianxinxi/2a7b35bf-b598-4dbf-b407-49c6dfae1d23.html" target="_blank"></a>
<a class="case2" rel="external nofollow" href="http://www.gddg110.gov.cn/publicfiles/business/htmlfiles/dgjch/index.htm" target="_blank"></a>
<a class="case3" rel="external nofollow" href="http://v.pinpaibao.com.cn/authenticate/cert/?site=www.tuandai.com&amp;at=business" target="_blank"></a>
<a class="case4" rel="external nofollow" href="https://ss.knet.cn/verifyseal.dll?sn=e12110944190036882000000&amp;ct=df&amp;a=1&amp;pa=0.3762240521682825" target="_blank"></a>
<a class="case5" rel="external nofollow" href="http://www.itrust.org.cn/yz/pjwx.asp?wm=1581384531" target="_blank"></a>
<a class="case6" rel="external nofollow" href="https://search.szfw.org/cert/l/CX20150126006876006576" target="_blank"></a>
<a class="case7" rel="external nofollow" href="https://www.tuandai.com/gys.aspx" target="_blank"></a>
<a class="case8" rel="external nofollow" id="_pingansec_bottomimagesmall_p2p" href="http://si.trustutn.org/info?sn=260150522000147261072"></a>
</div>
</div>
<div id="dial-window" style="display: none;" class="z103">
<div class="title">
加载中 <i class="close close-x icon abs"></i>
</div>
<div class="body">
<img src="${pageContext.request.contextPath }/static/img2/loading.gif" alt="加载中">
</div>
<div id="dial-window-btns" class="btns tc">
<div class="inbid">
<a href="javascript:void(0)" class="td-btn-1 td-btn-1-or dete " id="dial-window-okbtn">确定</a>
<a href="javascript:void(0)" class="td-btn-1 td-btn-1-gar  cancle " id="dial-window-canclebtn">取消</a>
</div>
<div class="g6" style="font-size: 14px; margin-left: -14px; padding: 18px 0 0px 0; display: none;" id="divTiQian">
</div>
</div>
</div>
<div id="diallayer" style="display: none;"></div>
<script src="${pageContext.request.contextPath }/js/js2/hm.js"></script>
<script type="text/javascript" async="" src="${pageContext.request.contextPath }/js/js2/webaccess.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/js2/jquery-1.js"></script>
<script src="${pageContext.request.contextPath }/js/js2/thirdlib.js"></script>
<script src="${pageContext.request.contextPath }/js/js2/public.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/js2/settdwcookie.js"></script>
<script src="${pageContext.request.contextPath }/js/js2/index.js"></script>
<script src="${pageContext.request.contextPath }/js/js2/jquery_002.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath }/js/js2/jquery.js" type="text/javascript"></script>
<script charset="GB2312" type="text/javascript" src="${pageContext.request.contextPath }/js/js2/cgt_common.js"></script>
<script type="text/javascript">
            var IsOpenCGT='1';
        $(function(){
            $(".a_code").mouseover(function() {
                $(".codexe").show();
            }).mouseout(function() {
                $(".codexe").hide();
            });
                getRandomValue();
            });
            var Globals = {
                IsLogin: false,
                BorrowName: '',
                BorrowPhone: ''
            };
             
            var changeSex = changeSex();
            function changeSex() {
                $('.sex').find('i').click(function (event) {
                    $(this).parent().find('i').removeClass('selected');
                    $(this).addClass('selected');
                });
            };
            function IniCreditBox() {
                var CreditData = ['010000:广西', '010100:南宁', '010200:柳州', '010300:桂林', '010400:玉林', '010500:百色', '010600:梧州', '010700:钦州',
                    '020000:广东', '020100:肇庆', '020200:深圳',
                    '030000:天津', '030100:天津', '030200:滨海',
                    '040000:江苏', '040100:连云港',
                    '050000:甘肃', '050100:兰州',
                    '060000:四川', '060100:内江', '060200:攀枝花', '060300:广元', '060400:成都', '060500:泸州', '060600:南充', '060700:乐山', '060800:资阳', '060900:眉山', '061000:达州', '061100:遂宁', '061200:宜宾',
                    '070000:重庆', '070100:永川',
                    '080000:贵州', '080100:遵义', '080200:安顺', '080300:贵阳', '080400:凯里',
                    '090000:云南', '090100:玉溪', '090200:昆明', '090300:红河州',
                    '100000:河南', '100100:焦作', '100200:南阳',
                    '110000:山西', '110100:太原', '110200:大同',
                    '120000:河北', '120100:邢台', '120200:张家口',
                    '130000:海南', '130100:海口',
                    '140000:福建', '140100:泉州', '140200:福州',
                    '150000:江西', '150100:南昌', '150200:上饶',
                    '160000:湖南', '160100:常德',
                    '170000:黑龙江', '170100:大庆', '170200:哈尔滨', '170300:齐齐哈尔'];
                $('#box1').ganged({ 'data': CreditData, 'width': 100, 'height': 32 });
            }

            function IniMortgageBox() {
                var mortgageData = ['010000:广东省', '010100:广州市', '010200:深圳市', '010300:清远市', '010400:韶关市', '010500:河源市', '010600:梅州市', '010700:潮州市', '010800:汕头市', '010900:揭阳市', '011000:汕尾市', '011100:惠州市', '011200:东莞市', '011400:珠海市', '011500:中山市', '011600:江门市', '011700:佛山市', '011800:肇庆市', '011900:云浮市', '012000:阳江市', '012100:茂名市', '012200:湛江市'
                                    , '020000:江苏省', '020100:南京市', '020200:徐州市', '020300:连云港市', '020400:宿迁市', '020500:淮安市', '020600:盐城市', '020700:扬州市', '020800:泰州市', '020900:南通市', '021000:镇江市', '021100:常州市', '021200:无锡市', '021300:苏州市'
                                    , '030000:上海市', '030100:上海市'
                                    , '040000:四川省', '040100:成都市', '040200:广元市', '040300:绵阳市', '040400:德阳市', '040500:南充市', '040600:广安市', '040700:遂宁市', '040800:内江市', '040900:乐山市', '041000:自贡市', '041100:泸州市', '041200:宜宾市', '041300:攀枝花市', '041400:巴中市', '041500:达州市', '041600:资阳市', '041700:眉山市', '041800:雅安市', '041900:阿坝州', '042000:甘孜州', '042100:凉山州'];
                $('#box2').ganged({ 'data': mortgageData, 'width': 100, 'height': 32 });
            }
</script>
<script type="text/javascript">
        (function () {
            $('.member-list').hover(function () {
                $(this).find('ul').addClass('ul-type').end().find('.mission').show();
                $(this).find('.arrow').removeClass('down-arrow').addClass('up-arrow');
            },function () {
                $(this).find('ul').removeClass('ul-type').end().find('.mission').hide();
                $(this).find('.arrow').removeClass('up-arrow').addClass('down-arrow');
            }
        )

        })();
        function stringToHex(s) { var r = ''; var hexes = new Array('0','1','2','3','4','5','6','7','8','9','a','b','c','d','e','f'); for (var i = 0; i < (s.length) ; i++) { r += hexes[s.charCodeAt(i) >> 4] + hexes[s.charCodeAt(i) & 0xf] } return r }
        function HexTostring(s) { var r = ''; for (var i = 0; i < s.length; i += 2) { var sxx = parseInt(s.substring(i,i + 2),16); r += String.fromCharCode(sxx) } return r }

        var nwbi_userName = "";
        var nwbi_sysNo = "TDW";
        var IsLogin = isCookieLogin();
        if (IsLogin) {
            var nickname = jaaulde.utils.cookies.get("TDWUserName");
            nwbi_userName = nickname;
        }
        (function () {
            var ta = document.createElement('script'); ta.type = 'text/javascript'; ta.async = true;
            ta.src = ((("https:") == document.location.protocol) ? "https://" : "http://") + 'bilog.niiwoo.com/js/webaccess.js';
            var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ta,s);
        })();

        var _hmt = _hmt || [];
        (function () {
            var hm = document.createElement("script");
            hm.src = "//hm.baidu.com/hm.js?6dff67da4e4ef03cccffced8222419de";
            var s = document.getElementsByTagName("script")[0];
            s.parentNode.insertBefore(hm,s);
        })();
    </script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/js2/settdwcookie.js"></script>


<!-- <img style="display: none;" src="${pageContext.request.contextPath }/static/img2/SingleLogin.json">
<img style="display: none;" src="${pageContext.request.contextPath }/static/img2/SingleLogin.json"> -->
</body>
</html>





