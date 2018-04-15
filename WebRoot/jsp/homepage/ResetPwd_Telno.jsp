<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><title>
手机找回登录密码_团贷网
</title><link rel="dns-prefetch" href="https://image.tuandai.com/"><link rel="dns-prefetch" href="https://js.tuandai.com/"><link rel="dns-prefetch" href="https://vip.tuandai.com/"><link rel="dns-prefetch" href="https://hd.tuandai.com/"><link rel="dns-prefetch" href="https://bbs.tuandai.com/"><meta property="qc:admins" content="3542563377645164116375">
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link rel="shortcut icon" href="https://js.tuandai.com/images/default/favicon.ico?v=20150513">
<link rel="stylesheet" href="${pageContext.request.contextPath }/static/css/base20151225.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/static/css/public20151225.css"><link rel="stylesheet" href="${pageContext.request.contextPath }/static/css/xiamen-bank.css"><link rel="stylesheet" href="${pageContext.request.contextPath }/static/css/cgt20161107.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/static/css/new.css">
<meta name="keywords" content="团贷网注册,用户注册,会员注册">
<meta name="description" content="团贷网免费会员注册，用户完成新手任务：实名认证、首次充值投资，均可领取现金红包大奖。">
<meta http-equiv="pragma" content="no-cache">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/static/css/Resepwd.css">
<style type="text/css">
        #reg_left .reg_items1{height: 43px;}
        .reg_text a:hover{text-decoration:underline;color:#797979;}
    </style>
</head>
<body>
<div class="header">
<div class="t-b  t-b-w lh40 bgff f12 fst cl">
<div class="w1200 h40 auto g6">
<div class="right-side  r inline-block-debug">
<div class="inline-block-debug c-poi-a">
<a href="https://www.tdw.cn/" class="red mr15"><i class="icon dib hous-icon"></i>前往团贷网</a>
</div>
<div class="inline-block-debug c-poi-a" id="topinfo"><span class="reg" style="color:#303030">欢迎您，</span><a href="https://www.tdw.cn/member/account_default.aspx" rel="nofollow" class="reg">17512038645pc170910</a><span>|</span><a href="javascript:logout();">退出</a><span>|</span></div>
<a rel="nofollow" href="${pageContext.request.contextPath }/jsp/helppage/helppage.jsp" target="_blank">帮助中心</a><span>|</span>
<a href="https://bbs.tuandai.com/" target="_blank">社区</a><span>|</span>
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
<dl class="abs i-b-d vt about-us r0" id="myaccountScroll"><dt><a href="https://www.tdw.cn/member/account_default.aspx"><i class="account-icon i-b-d icon vm"></i>我的账户<i class="icon arrow i-b-d vm"></i></a></dt><dd><a href="https://www.tdw.cn/member/Bank/Recharge.aspx">立即充值</a></dd><dd><a href="https://www.tuandai.com/member/account_moneylist.aspx">资金统计</a></dd><dd><a href="https://www.tuandai.com/member/account_weFTBAll.aspx">智能理财</a></dd><dd><a href="https://www.tuandai.com/member/account_loaninbid.aspx">散标投资</a></dd><dd><a href="https://www.tuandai.com/member/account_loanReturnPlanList.aspx">回款计划</a></dd><dd><a href="https://www.tuandai.com/member/AutoTender/AutoTenderList.aspx">自动投标</a></dd><dd><a href="https://www.tuandai.com/member/account_borrowReturnPlanList.aspx">还款安排</a></dd><dd><a href="https://www.tuandai.com/member/account_borrowInBid.aspx">借款记录</a></dd><dd><a href="https://www.tdw.cn/member/PartnerPromotion/Account_PartnerPromotion.aspx">团贷合伙人</a></dd><dd><a href="javascript:logout();">退出</a></dd></dl>
</div>
<div class="nav r">
<ul>
<li class="nav-t">
<a href="${pageContext.request.contextPath }/jsp/homepage/investmenthome.jsp">首页</a>
</li>
<li class="nav-t w130">
<div class="r rel tc  slid z3 r ">
<dl class="abs i-b-d vt guarantee r0">
<dt><a href="${pageContext.request.contextPath }/jsp/homepage/lntellgent.jsp">我要投资<i class="icon arrow i-b-d vm"></i></a></dt>
<dd>
<a href="${pageContext.request.contextPath }/jsp/homepage/lntellgent.jsp" target="_blank">智能投资</a>
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
<dt><a rel="nofollow" href="${pageContext.request.contextPath }/jsp/information/platform.jsp?mark=2">信息披露<i class="icon arrow i-b-d vm"></i></a></dt>
									<dd>
									<a rel="nofollow" href="${pageContext.request.contextPath }/jsp/information/risk-controller.jsp?mark=2">安全保障</a>
									</dd>
									<dd>
									<a rel="nofollow" href="${pageContext.request.contextPath }/jsp/information/index.aspx?tdsource=pcbanner" target="_blank">担保专款</a>
									</dd>
									<dd>
									<a rel="nofollow" href="${pageContext.request.contextPath }/jsp/information/report.html?mark=3">运营报表</a>
									</dd>
									<dd>
									<a rel="nofollow" href="${pageContext.request.contextPath }/jsp/information/operational-data.jsp" target="_blank">平台数据</a>
									</dd>
									<dd>
									<a rel="nofollow" href="${pageContext.request.contextPath }/jsp/information/regulatory.html?mark=8">监管法规</a>
									</dd>
									<dd>
									<a rel="nofollow" href="${pageContext.request.contextPath }/jsp/information/platform.html?mark=1">关于我们</a>
									</dd>
</dl>
</div>
</li>
<li class="nav-t">
<a href="${pageContext.request.contextPath }/jsp/homepage/borrow_money.jsp">我要借款</a>
</li>
</ul>
</div>
<a class="logo dib l" href="https://www.tdw.cn/">
<img src="${pageContext.request.contextPath }/static/img/logo.png" alt="团贷网"></a>
<div class="index-bd" id="base_index_box">
<ul class="index_slider" id="base_index_slider" style="bottom: 0px">
<li><a>
<img src="${pageContext.request.contextPath }/static/img/1502357148516.png" alt="网贷"></a>
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
<div class=" t-box" onclick="javascript:window.open('${pageContext.request.contextPath }/jsp/helppage/helppage.jsp');"><i class="t2"></i><a href="javascript:;">帮助中心</a></div>
<div class=" t-box" onclick="javascript:window.open('${pageContext.request.contextPath }/jsp/homepage/IntelligentCalculator.jsp');"><i class="t3"></i><a class="" href="javascript:;">计算工具</a></div>
<div class="t-box to-top" onclick="javascript:;" style="display: none"><i class="t5"></i><a href="javascript:;" class="pt10">回到顶部</a></div>
</div>
<div class="content zc">
<div class="main">
<div class="reg_main clearfloat bordere0">
<input id="currentChannel" value="1" type="hidden">
<div class="cn-top clearfloat">
<p class="fl_l">
找回登录密码</p>
<p class="fl_r">
通过<a href="https://www.tuandai.com/user/ResetPwd_Email.aspx">邮箱找回</a>密码</p>
</div>
<div class="reg_left" id="reg_left" style="padding-left:130px;">
<div class="reg_items1">
<span>手机号码</span>
<div class="reg_text">
<input class="i1 text-input" onpaste="return false" oncontextmenu="return false" oncopy="return false" oncut="return false" name="txtPhone" id="txtPhone" maxlength="11" type="text">
</div>
<div class="reg_lastright" id="dvPhone">
</div>
</div>
<div class="reg_items1">
<span>图形验证码</span>
<div class="reg_text">
<input class="i2 text-input" onpaste="return false" oncontextmenu="return false" oncopy="return false" oncut="return false" name="txtImgCode" id="txtImgCode" maxlength="4" type="text">
<img src="${pageContext.request.contextPath }/static/img/ValidateCode.jpg" title="点击换一个校验码" alt="点击换一个校验码" id="imVcode" onclick="reloadCode('/ValidateCode.ashx')">
</div>
<div class="reg_lastright" id="dvImgCode">
</div>
</div>
<div class="reg_items1 reg-code-box h1" style="height: 42px;width: 730px;">
<span>手机验证码</span>
<div class="reg_text code-text-box clearfloat">
<input style="width: 162px; display: inline-block;" class="i2 text-input" onpaste="return false" oncontextmenu="return false" oncopy="return false" oncut="return false" name="txtPhoneCode" id="txtPhoneCode" onkeyup="" maxlength="6" type="text">
<a href="javascript:;" class="get_code" style="vertical-align: 12px;" id="btnSendMobileCode">获取短信验证码</a>
<a href="javascript:void(0);" id="btnSendVoiceCode" class="btnVoice">语音验证</a> <br>
</div>
<div class="reg_lastright" id="dvCode">
</div>
</div>
<div class="reg_login" style="height:68px; padding-top:22px;">
<div style="float: left;">
<div class="login_btn">
<a href="javascript:void(0);" id="btn_mobile_ok">找回密码</a></div>
</div>
</div>
<div class="reg-notice">温馨提示：请保持手机畅通以便于接收短信验证码。若您无法收到短信，请联系客服 1010-1218</div>
</div>
</div>
</div>
</div>
<div class="footer fix">
<div class="footer-content auto fix cl">
<div class="address fa f12 tc mt15">
2010-2017 版权所有 © 团贷网 <a href="http://www.miitbeian.gov.cn/" target="_blank">粤ICP备12043601号-1</a> 地址：东莞市南城街道莞太路111号民间金融大厦1号楼28楼 <br>
东莞团贷网互联网科技服务有限公司
</div>
</div>
</div>
<div id="dial-window" style="display: none;" class="z103">
<div class="title">
加载中 <i class="close close-x icon abs"></i>
</div>
<div class="body">
<img src="${pageContext.request.contextPath }/static/img/loading.gif" alt="加载中">
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
<script src="${pageContext.request.contextPath }/static/js/hm.js"></script><script type="text/javascript" async="" src="${pageContext.request.contextPath }/static/js/webaccess.js"></script><script type="text/javascript" src="${pageContext.request.contextPath }/static/js/jquery-1.js"></script>
<script src="${pageContext.request.contextPath }/static/js/thirdlib.js"></script>
<script src="${pageContext.request.contextPath }/static/js/public.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/static/js/settdwcookie.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/static/js/resetpwd_telno.js"></script>
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
            ta.src = ((("https:") == document.location.protocol) ? "https://" : "http://") + '${pageContext.request.contextPath }/static/js/webaccess.js';
            var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ta,s);
        })();

        var _hmt = _hmt || [];
        (function () {
            var hm = document.createElement("script");
            hm.src = "${pageContext.request.contextPath }/static/js/hm.js?6dff67da4e4ef03cccffced8222419de";
            var s = document.getElementsByTagName("script")[0];
            s.parentNode.insertBefore(hm,s);
        })();
    </script>
<script type="text/javascript" src="${pageContext.request.contextPath }/static/js/settdwcookie.js"></script>


<img style="display: none;" src="${pageContext.request.contextPath }/static/img/SingleLogin.json"><img style="display: none;" src="${pageContext.request.contextPath }/static/img/SingleLogin.json"></body></html>