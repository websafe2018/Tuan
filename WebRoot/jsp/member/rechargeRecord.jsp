<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3"><head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <title>团贷网 - 综合金融服务平台,让金融更简单！</title>
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="mobile-agent" content="format=html5;url=https:///m.tdw.cn/">
    <link rel="alternate" media="only screen and (max-width: 640px)" href="https://m.tdw.cn/">
    <link rel="dns-prefetch" href="https://image.tuandai.com/">
    <link rel="dns-prefetch" href="https://js2.tdw.cn/">
    <link rel="shortcut icon" href="https://js2.tdw.cn/images/default/favicon.ico">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/css1/base.css">
    <meta name="keywords" content="投资理财，互联网金融，P2P网站，P2P网贷，P2P理财">
    <meta name="description" content="团贷网(tdw.cn)是派生科技集团股份有限公司（以下简称“派生集团”）旗下的综合金融服务平台,致力于为广大投资用户提供基金、保险、证券、网络借贷等互联网投资一站式综合服务.">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/css1/component.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/css1/layout.css">
    
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/css1/public.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/css1/account-new_002.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/css1/account-public.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/css1/xiamen-bank.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/css1/cgt20161107.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/css1/bind_bank.css">

    <!-- 前端公用CSS库-->
    
    
    

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/css1/cgt.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/css1/account-new.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/css1/bind_bank_002.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/css1/account_invest.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/css1/user.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/css1/user_002.css">
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/homepage/jquery-1.8.3.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/homepage/rechargeRecord.js"></script>


</head>
<body>
<!--顶部 start-->
<div class="header">
<div class="t-b  t-b-w lh40 bgff f12 fst cl">
<div class="w1200 h40 auto g6">
<div class="right-side  r inline-block-debug">
<div class="inline-block-debug c-poi-a">
</div>
<div class="inline-block-debug c-poi-a" id=""><span class="reg" style="color:#303030">欢迎您，</span><a href="https://www.tdw.cn/member/account_default.aspx" rel="nofollow" class="reg">${users.nickname }</a><span>|</span><a href="javascript:logout();">退出</a><span>|</span></div>
<a rel="nofollow" href="http://info.tdw.cn/help/index.html" target="_blank">帮助中心</a><span>|</span>
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
<div class="nav-box auto w1200 fix" >
<div class="nav r">
<ul>
<li class="nav-t">
<a href="${pageContext.request.contextPath }/jsp/homepage/investmenthome.jsp">首页</a>
</li>
<li class="nav-t w130">
<div class="r rel tc  slid z3 r ">
<dl class="abs i-b-d vt guarantee r0">
<dt><a href="https://www.tuandai.com/pages/weplan/welist.aspx?v=20170602">我要投资<i class="icon arrow i-b-d vm"></i></a></dt>
<dd>
<a href="https://www.tuandai.com/pages/weplan/welist.aspx?v=20170602" target="_blank">智能投资</a>
</dd>
<dd>
<a href="https://www.tuandai.com/pages/invest/invest_list.aspx?v=20170602" target="_blank">散标专区</a>
</dd>
</dl>
</div>
</li>
<li class="nav-t w130">
<div class="r rel tc  slid z3 r ">
<dl class="abs i-b-d vt guarantee r0">
<dt><a rel="nofollow" href="http://info.tuandai.com/about/guarantee.html?mark=2">信息披露<i class="icon arrow i-b-d vm"></i></a></dt>
<dd>
<a rel="nofollow" href="https://info.tuandai.com/about/platform.html?mark=1" target="_blank">关于我们</a>
</dd>
<dd>
<a rel="nofollow" href="https://info.tuandai.com/about/audit-report.html?mark=7" target="_blank">对外公告</a>
</dd>
<dd>
<a rel="nofollow" href="https://info.tuandai.com/about/consume.html?mark=22" target="_blank">业务介绍</a>
</dd>
<dd>
<a rel="nofollow" href="https://info.tuandai.com/about/operational-data.html?mark=15" target="_blank">运营数据</a>
</dd>
<dd>
<a rel="nofollow" href="https://info.tuandai.com/about/risk-controller.html?mark=17" target="_blank">安全保障</a>
</dd>
<dd>
<a rel="nofollow" href="https://info.tuandai.com/about/commitment.html?mark=27" target="_blank">承诺书</a>
</dd>
<dd>
<a rel="nofollow" href="https://info.tuandai.com/about/regulatory.html?mark=25" target="_blank">法律法规</a>
</dd>
</dl>
</div>
</li>
<li class="nav-t">
<a href="${pageContext.request.contextPath }/jsp/homepage/borrow_money.jsp">我要借款</a>
</li>
<li class="nav-t">
<a href="#">我的账户</a>
</li>
</ul>
</div>
<a class="logo dib l" href="${pageContext.request.contextPath }/jsp/homepage/investmenthome.jsp">
<img src="${pageContext.request.contextPath }/static/img1/logo.png" alt="团贷网"></a>
<div class="index-bd" id="base_index_box">
<ul class="index_slider" id="base_index_slider" style="bottom: 0px">
<li><a>
<img src="${pageContext.request.contextPath }/static/img1/1500523393353.png" alt="网贷"></a>
</li>
</ul>
</div>
</div>
</div>
</div>

	
<!--顶部 end-->
<!--导航菜单 start-->

	
<!--导航菜单 end-->
<!-- 中间内容STAR -->

    <!-- 中间内容STAR -->
    
    <div class="account-container clearfloat">
        <form id="form1" style="*margin-top:10px">
            <div class="account-leftBox clearfloat">
                <div class="account-left">
                    	<!-- 普惠快信的账号 -->
                    

                    <!-- 话费分期 -->
                    

                    <!-- 快来贷 -->
                    

                    <!-- 沐金农 -->
                    

                    <!-- 你我金融 -->
                    

                    <!-- 安永担保 -->
                    

                    <!-- 担保公司 -->
                    

                    <!-- 一点车贷 -->
                    

                    <!-- 拿下分期 -->
                    

                    <div>
                            <div class="home border-bottom-0">
                                <p><i class="dt-1"></i><a href="${pageContext.request.contextPath }/jsp/member/account_default.jsp">账户首页</a></p>
                            </div>

                            <dl>
                                <dt><i class="dt-2"></i>我的资金 <i class="arrow"></i></dt>
                                <dd id=""><a href="${pageContext.request.contextPath }/jsp/member/account_moneylist.jsp">资金统计</a></dd>
                                <dd id=""><a href="${pageContext.request.contextPath }/jsp/member/account_moneyhistory.jsp">交易记录</a></dd>
                                <!--<dd id="menu_mybank" style="display:none;">-->
                                    <!--<a  th:href="@{${Globals.portalWeburl}+'/member/Bank/bankaccount.aspx'}" onclick="return left_CheckAllowBindBank();">我的银行卡</a>-->
                                <!--</dd>-->
                                <dd id="" class="currentMenu"><a href="${pageContext.request.contextPath }/jsp/member/RechargeNew2016.jsp">充值</a></dd>
                                <dd id=""><a href="${pageContext.request.contextPath }/jsp/member/drawmoney.jsp" onclick="return left_CheckAllowDraw();" target="_blank">提现</a></dd>
                            </dl>
                            <div>
                            	<dl>
                                <dt><i class="dt-3"></i>P2P<i class="arrow"></i></dt>
                                <dd id=""><a href="https://www.tuandai.com/member/AutoTender/AutoTenderList.aspx">自动投标</a>
                                </dd>
                                <dd id=""> <div class="left-new"></div>
                                	<a href="https://www.tuandai.com/member/account_weFTBAll.aspx">智能投资</a>
                                	
                                </dd>
                                <dd id=""><a href="${pageContext.request.contextPath }/jsp/member/account_loaninbid.jsp">散标投资</a></dd>
                                
                                
                                <dd id=""><a href="${pageContext.request.contextPath }/jsp/member/account_loanReturnPlanList.jsp">回款计划</a></dd>
                                
                            </dl>
                            
                            <dl>
                                <dt><i class="dt-4"></i>我的借款<i class="arrow"></i></dt>
                                <dd id=""><a href="https://www.tuandai.com/member/account_borrowTypeSelect.aspx">借入人审核</a></dd>
                                
                                
                                
                                <dd id=""><a href="https://www.tuandai.com/member/project/account_projectweibasic.aspx">资产标区</a></dd>
                                <dd id=""><a href="${pageContext.request.contextPath }/jsp/member/account_borrowInBid2.jsp">借款记录</a></dd>
                                
                                <dd id=""><a href="${pageContext.request.contextPath }/jsp/member/account_borrowReturnPlanList.jsp">还款安排</a></dd>
                            </dl>
                            </div>

                    </div>
                    
                    <div>
                    <dl>
                        <dt><i class="dt-5"></i>个人设置<i class="arrow"></i></dt>
                        <dd id=""><a href="${pageContext.request.contextPath }/jsp/member/account_userdetailinfo.jsp">基本信息 </a></dd>
                        <dd id=""><a href="https://www.tdw.cn/member/Validate/index.aspx">安全中心</a></dd>
                        <dd id=""><a href="https://www.tdw.cn/member/account_touplevel.aspx">超级会员</a></dd>
                        <dd id=""><a href="${pageContext.request.contextPath }/jsp/member/account_notice.jsp">消息中心</a></dd>
                    </dl>

                   
                    </div>
                    
               </div>
            </div>
            

    <div class="account-rightBox clearfloat">
            <div class="box-padding">
                <div class="account_tableBox clearfloat">
                    <div class="nav_top">
                        <div class="protect-green"><span>您的充值、提现操作将在 <span class="xm-logo"></span> 厦门银行存管平台进行，资金安全无忧</span>
                        </div>
                        <ul class="nav_title">
                            <li class="tab_title_b" onclick="javascript:window.location.href='${pageContext.request.contextPath }/jsp/member/RechargeNew2016.jsp';">
                                <a href="${pageContext.request.contextPath }/jsp/member/RechargeNew2016.jsp">充值中心</a>
                            </li>
                            <li class="tab_title_a">
                                <a href="javascript:;">充值记录</a>
                            </li>
                        </ul>
                    </div>

                    <div class="account_notice margin-top-20 clearfloat">
                        <h2>尊敬的团贷网会员，以下是您在团贷网账户的充值记录，敬请审阅！</h2>
                        <p class="font-14">
                            截止<strong id="nowDate" class="font-orange3">
                            <c:out value="${nowT}" default="2018年"></c:out>
                            </strong>
                            您的充值成功金额是：<strong class="font-orange3"> ￥
                            <c:out value="${allRecharge}" default="0.00"></c:out>
                            </strong>，充值失败金额是：<strong class="font-orange3"> ￥
                            <c:out value="${failMoney }" default="0.00"></c:out>
                            <%-- <c:out value="${failMoney }" default="123213123"></c:out> --%>
                            </strong>。
                        </p>
                    </div>
                    <dl class="account_sx02 margin-top-20">
                        <dt style="width: 330px;">
                    <input id="submit" value="查询记录" class="submit-btn font-14" type="button"></dt>
                        <dd>状态：</dd>
                        <dd>
                            <div class="simulation-list lf">
                                <div class="text-box" >
                                    <span class="text fl_l" >全部</span>
                                    <ul style="display: none">
                                        <li onclick="btn(-1)">全部</li>
                                        <li onclick="btn(1)" >充值失败</li>
                                        <li onclick="btn(2)" >充值成功</li>
                                    </ul>
                                    <i class="arrow"></i>
                                </div>
                                <input name="ctl00$ctl00$ctl00$baseBody$body$body$hidType" id="" value="-1" type="hidden">
                            </div>
                        </dd>
                        <dd class="pl20">时间：</dd>
                        <dd>
                            <input id="start" class="Wdate"   style="width: 100px; height: 16px; line-height: 16px; vertical-align: middle;" type="text"></dd>
                        <dd class="pl10">至</dd>
                        <dd class="pl10">
                            <input id="end" class="Wdate"   style="width: 100px; height: 16px; line-height: 16px; vertical-align: middle" type="text"></dd>
                    </dl>
                    <div class="account_table margin-top-20">
                        <table id="table_content" class="account_tableNR" width="100%" cellspacing="0">
                            <tbody id="tbody"><tr id="" style="background-color: rgb(244, 244, 244);">

                                <th scope="col" class="">充值时间
                                </th>
                                <th scope="col" class="a_low10">充值金额
                                </th>
                                <th scope="col" class="a_low10">充值状态
                                </th>
                            </tr>

                            </tbody>
                            
                            <!-- <tbody id="tdtext"><tr style="background-color: #fff;">
                            <td class="txt_center">2017/10/20 09:43:08</td><td class="txt_center">100.00</td>
                            <td class="txt_center">未付款<a target="_blank" retype="32" style="visibility: hidden" attrid="openhref" orderno="1705170526417759" totalprice="3000.0000"></a></td></tr>
                            <tr style="background-color: rgb(240,240,240);"><td class="txt_center">2017/10/20 09:42:18</td>
                            <td class="txt_center">100.00</td><td class="txt_center">充值失败<a target="_blank" retype="32" style="visibility: hidden" attrid="openhref" orderno="1705170526417759" totalprice="3000.0000"></a></td>
                            </tr></tbody> -->
                        </table>
                        <div class="no-message" style="display: none;">
                            <div class="no-mes-con">
                                <span class="acc-icons notice-icon"></span> 您暂无充值记录
                            </div>
                        </div>
                        <div id="pager1" class="pagination"></div>

                    </div>
                </div>
            </div>
        </div>
    <div id="diallayer" style="display: none;"></div>

        
        <div id="dahei" style="display: none"></div>
        <div id="tooltip" class="tooltip"></div>
    </div>
    <!-- 开通免密功能 -->
    <div style="display: none;" class="dial-window xm-window passwordAlt">
        <div class="title1 rel">温馨提示：<i class="close-x cgt-close-x icon db abs"></i></div>
        <div class="body">
            <div class="">
                <p class="p1">开启自动投标前，请您先进行以下授权：</p>
                <p class="p2" id="mm_toubiao" style="display: none;"><em></em>自动投标<span>（适用于设置自动投标的用户）</span></p>
                <p class="p2" id="mm_zhaiquan" style="display: none;"><em></em>自动购买收益权<span>（适用于购买WE计划的用户）</span></p>
                <p class="p2" id="mm_huankuan" style="display: none;"><em></em>自动还款<span>（适用于有借款的用户）</span></p>
                <p class="p2" id="mm_tixian" style="display: none;"><em></em>自动提现<span>（适用于企业及业务相关用户）</span></p>
            </div>
        </div>
        <div class="bottom">
            <div class="btn-group">
                <a target="_blank" id="btn_showquan" class="btn">立即开通</a>
            </div>
        </div>
    </div>
    <!-- 厦门银行托管 -->
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
                <a href="https://www.tuandai.com/member/Bank/XM_BankBind.aspx" id="aOpen" class="btn" style="display: none;">马上开通</a>
                <a href="javascript:void(0);" id="aActived" class="btn" style="display: none;">马上激活</a>
                <a href="https://www.tuandai.com/member/Bank/XM_BankBind_Complete.aspx" id="aBankBind" class="btn" style="display: none;">绑定银行卡</a>
        </div>
    </div>
    
    
    <!-- 温馨提示弹窗 -->
    <div id="bankBindAlert" style="display: none; margin-left: -226px;" class="dial-window xm-window bankBindAlert">
        <div class="title rel">温馨提示：<i class="close-x cgt-close-x icon db abs"></i></div>
        <div class="body">
            <div class="" style="text-align:center;">
                <p class="p1">请您在新打开的页面完成<span id="sp_title"></span></p>
                <p class="p2"><span id="sp_title2"></span>完成前请不要关闭此窗口，根据完成结果，选择下面的操作</p>
            </div>
        </div>
        <div class="bottom">
            <div class="btn-group">
                <a href="https://www.tdw.cn/member/account_default2.aspx" id="remind_aa" class="btn"><span id="aa_title"></span></a>
            </div>
            <a class="question" href="javascript:void(0);" target="_blank"><span id="sp_title3"></span>遇到问题</a>
        </div>
    </div>
    <!-- 香港澳门开通存管账户提示 -->
    <div id="gangaoAlert" style="display: none;" class="dial-window xm-window hongkong">
        <div class="title rel">温馨提示：<i class="close-x cgt-close-x icon db abs"></i></div>
        <div class="body">
            <div class="" style="text-align:center;">
                <p><b>由于您的证件为<span id="sp_cardTypeName">港澳通行证</span>，您还需完成以下操作才能进行正常理财：</b></p>
                <p>
                    1、添加专属服务<a id="a_qq" target="_blank" href="http://wpa.qq.com/msgrd?v=3&amp;uin=2880761023&amp;site=qq&amp;menu=yes">2880761023</a>为好友。<br>
                    2、<span id="sp_2Content">QQ联系客服专员，提交以下申请色半身照【保<br>证证件号码清晰且不能是镜面照】港澳台通行证背面彩色  13:30-18:00，周六日与法定节假日除外。</span><br>
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
    <!-- 三要素弹窗 -->
    <div id="TheadAlert" style="display: none;" class="dial-window xm-window forgetPhone">
        <div class="title rel" style="display:block;">温馨提示：<i class="close-x cgt-close-x icon db abs"></i></div>
        <div class="body">
            <div class="">
                <p class="p1" style="width:350px; height:72px;"><span id="sp_newcontent">如果您忘记银行卡预留手机号，请与您的发卡银行客服联系，咨询预留手机号</span></p>
            </div>
        </div>
        <div class="bottom">
            <div id="btn_03" class="btn-group">
                <a id="qiyeBtn" href="javascript:;" class="btn">我知道了</a>
            </div>
            <div id="btn_04" class="count" style="display:none;">
                <a class="td-btn-1 td-btn-1-or btn" href="https://www.tdw.cn/member/Validate/index.aspx">我要修改预留手机号</a>
            </div>
        </div>
    </div>

    <!-- 页脚 -->
    <div class="footer fix">
        <div class="footer-content auto fix cl">
            <div class="address fa f12 tc mt15">
                2010-<span>2017</span> 版权所有 © 团贷网 <a href="http://www.miitbeian.gov.cn/" target="_blank">粤ICP备16104116号-1</a> 派生科技集团股份有限公司 地址：东莞市南城区新城鸿福路102号汇成大厦102A号
            </div>
        </div>
        <div class="security tc">
            <a class="case1" rel="nofollow" href="http://www.beianbeian.com/beianxinxi/b3d821c3-95ad-49a0-8be4-157b33f3317f.html" target="_blank"></a>
            <a class="case2" rel="nofollow" href="http://www.gddg110.gov.cn/publicfiles/business/htmlfiles/dgjch/index.htm" target="_blank"></a>
        </div>
    </div>

<!-- 中间内容END -->

    <!-- 右侧工具栏 start-->
        <div class="tdw-tools-bar" id="tdwToolBar">
            <ul>
                <li>
                    <a href="javascript:;" id="toolRisk">
                        <i class="tdw-icons i-tool-risk"></i>
                        <p>风险<br>提示</p>
                    </a>
                    <div class="risk-tips">
                        <i></i>
                        <p>市场有风险<br>投资需谨慎</p>
                    </div>
                </li>
                <li>
                    <a href="javascript:;" onclick="javascript:window.open('http://www.sobot.com/chat/pc/index.html?sysNum=20ab7dce1e3346e8b90b649bd8baf591');" target="_blank">
                        <i class="tdw-icons i-tool-service"></i>
                        <p>在线<br>客服</p>
                    </a>
                </li>
                <li>
                    <a href="javascript:;" onclick="javascript:window.open('//info.tdw.cn/help/index.html')">
                        <i class="tdw-icons i-tool-help"></i>
                        <p>帮助<br>中心</p>
                    </a>
                </li>
                <li>
                    <a href="javascript:;" onclick="javascript:window.open('//news.tdw.cn/tool/int_fina.aspx');">
                        <i class="tdw-icons i-tool-calculate"></i>
                        <p>计算<br>工具</p>
                    </a>
                </li>

                <li class="last-border tool-backtop" id="tool-backtop">
                    <a href="javascript:;">
                        <i class="tdw-icons i-tool-backtop"></i>
                        <p>回到<br>顶部</p>
                    </a>
                </li>
            </ul>
        </div>
    <!-- 右侧工具栏 end-->
<div id="dial-window" style="display: none;" class="z103">
    <div class="title">
        加载中 <i class="close close-x icon abs"></i>
    </div>
    <div class="body">
        <img src="${pageContext.request.contextPath }/static/img1/loading.gif" alt="加载中">
    </div>
    <div id="dial-window-btns" class="btns tc">
        <a href="javascript:void(0)" class="td-btn-1 td-btn-1-or dete " id="dial-window-okbtn">确定</a>
        <a href="javascript:void(0)" class="td-btn-1 td-btn-1-gar  cancle " id="dial-window-canclebtn">取消</a>
    </div>
</div>
    <!--遮罩层-->
    <div id="diallayer" style="display: none;"></div>
   <%--  <script charset="utf-8" src="${pageContext.request.contextPath }/static/img1/v.htm"></script> --%>
    <script type="text/javascript" async="" src="${pageContext.request.contextPath }/js/js1/webaccess.js"></script>
    <script type="text/javascript" async="" src="${pageContext.request.contextPath }/js/js1/webaccess.js"></script>
    <script src="${pageContext.request.contextPath }/js/js1/hm.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/js1/jquery-1.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/js1/jquery.js"></script>
    <!--引用Jquery-->
    <script src="${pageContext.request.contextPath }/js/js1/thirdlib.js"></script>
    <script src="${pageContext.request.contextPath }/js/js1/jquery_002.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/js1/public.js"></script>
    <script src="${pageContext.request.contextPath }/js/js1/common_002.js"></script>
    <!--<script src="//js2.tdw.cn/scripts/pager.js?v=2017070301"></script>-->
    <script src="${pageContext.request.contextPath }/js/js1/settuandaicookie.js"></script>
    <script type="text/javascript">
        var _hmt = _hmt || [];
        (function() {
            var hm = document.createElement("script");
            hm.src = "https://hm.baidu.com/hm.js?e5885737885060b19f50ba5ed78c9802";
            var s = document.getElementsByTagName("script")[0];
            s.parentNode.insertBefore(hm, s);
        })();
    </script>
       
    
    <script src="${pageContext.request.contextPath }/js/js1/userbank.js"></script>
    <script src="${pageContext.request.contextPath }/js/js1/common.js"></script>
    <script src="${pageContext.request.contextPath }/js/js1/account.js"></script>
    <script charset="GB2312" type="text/javascript" src="${pageContext.request.contextPath }/js/js1/cgt_common_002.js"></script>
    <script>
    /* <![CDATA[ */
    	var Id =  "78D7948A";
        var isEnterAutoInvestSetPage = getCookie( Id+ "isEnterAutoInvestSetPage");//是否进入自动投标设置
        var isClosedYellowTip2 = getCookie(Id + "isClosedYellowTip");//手动点击关闭黄标签
        var isDefaultShowed = getCookie(Id + "_account_default");//是否首页显示
        var IsOpenCGT = "1";

        var tuandaiw = getCookie("tuandaiw");
        $(function () {
            try {
                 getRandomValue();
            } catch (e) { }
        });

        $(function () {
            $('#menu_autoTender').hover(function () {
                    $('#YellowTips').fadeIn(150);
                },
                function () {
                    $('#YellowTips').stop().fadeOut();
                }
            );

            $('#menu_myWePlan').hover(function () {
                $('#YellowTips2').fadeIn(150);
            },
                function () {
                    $('#YellowTips2').stop().fadeOut();
                }
            );

            $("#menu_withdraw,#menu_borrowMiniEdit,#menu_recharge").click(function () {
                try {
                    if (IsOpenCGT == "1" && !checkIsOpen("chongzhi")) {
                        return false;
                    }
                }
                catch (e) {
                }
            });

            $("#menu_zxNewProject").click(function () {
                try {
                    if (IsOpenCGT == "1" && !checkIsOpen()) {
                        return false;
                    }
                }
                catch (e) {
                }
            });


            $("#menu_borrowMiniEdit,#menu_autoTender,#menu_userservice").click(function () {
                try {
                    if (IsOpenCGT == "1" && !checkIsOpen())
                        return false;
                }
                catch (e) {
                }
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

            $('#menu_autoTender').find('.close').click(function () {
                $('#YellowTips').fadeOut();
                setCloseYellowTips();
            });
        });
        function setCloseYellowTips() {
            setCookie(Id + "isClosedYellowTip", "1");
        }
    </script>
    <script>
        /*<![CDATA[*/
        var left_newTitle = '团贷网提醒您：';
        var left_IsValidateMobile = "true";
        var left_IsValidateIdentity = "true";
        var left_IsSetPayPwd = "false";
        var IsbindBankNo = "true";

        function left_CheckAllowDraw() {
            if (IsOpenCGT != "1") {
                if (left_IsValidateMobile != 'true' || left_IsValidateIdentity != 'true' || left_IsSetPayPwd != 'true') {
                    userbank.tips(left_IsValidateMobile, left_IsValidateIdentity, left_IsSetPayPwd, "提现");
                    return false;
                } else if (IsbindBankNo == "false") {
                    $.ajax({
                        async: false,
                        type: "get",
                        url: "https:\/\/www.tdw.cn\/member\/Bank\/CompleteBank.aspx?ReturnUrl=https:\/\/www.tdw.cn\/member\/Bank\/drawmoney.aspx",
                        success: function(data) {
                            if ($("#bindBankWindows").length > 0) {
                               $("#bindBankWindows,#diallayer").remove();
                            }
                            $("body").append(data);
                        },
                        cache: false
                    });
                }
                return true;
            }
        }

        function left_CheckAllowBindBank() {
            if (left_IsValidateMobile != 'True' || left_IsValidateIdentity != 'True') {
                userbank.tips(left_IsValidateMobile, left_IsValidateIdentity);
                return false;
            }

            return true;
        }

        /* ]]> */
    </script>
    
    
    <script>
        var IsOpenCgtTrans = '1';
        var backUrlClose = "";
    </script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/js1/userbank_002.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/js1/project_dialog_cgt.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/js1/common_003.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/js1/account_002.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/js1/jquery_002.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/js1/cgt_common.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/js1/amounttochinese.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/css1/yellow.css">
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/js1/artDialog.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/js1/addbank.js"></script>
    <script>
        var isEnterAutoInvestSetPage = getCookie("45410e0a" + "isEnterAutoInvestSetPage"); //是否进入自动投标设置
        var isClosedYellowTip2 = getCookie("45410e0a" + "isClosedYellowTip"); //手动点击关闭黄标签
        var isDefaultShowed = getCookie("45410e0a" + "_account_default"); //是否首页显示
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
            var isEnterAutoInvestSetPage = 1;
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

            $("#eBankPayLimitDiv").hide();//如果打开页面默认是快捷支付，要隐藏限额列表
        });

        function setCloseYellowTips() {
            setCookie("45410e0a" + "isClosedYellowTip", "1");
        }
    </script>

    <script>
        var left_newTitle = '团贷网提醒您：';
        var left_IsValidateMobile = 'True';
        var left_IsValidateIdentity = 'True';
        var left_IsSetPayPwd = "True";
        var IsbindBankNo = 'True';


        function left_CheckAllowDraw() {
            if (IsOpenCGT != "1") {
                if (left_IsValidateMobile != 'True' || left_IsValidateIdentity != 'True' || left_IsSetPayPwd != 'True') {
                    userbank.tips(left_IsValidateMobile, left_IsValidateIdentity, left_IsSetPayPwd, "提现");
                    return false;
                } else if (IsbindBankNo == "False") {
                    $.ajax({
                        async: false,
                        type: "get",
                        url: '/member/Bank/CompleteBank.aspx?ReturnUrl=/member/Bank/drawmoney.aspx',
                        success: function(data) {
                            if ($("#bindBankWindows").length > 0) {
                                $("#bindBankWindows,#diallayer").remove();
                            }
                            $("body").append(data);
                        },
                        cache: false
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
    <script>
        //从后台页面继承过来的相关变量
        var sltChannel = '0';
        var newTitle = '团贷网提醒您：';
        var IsValidateMobile = 'True';
        var IsValidateIdentity = 'True';
        var hasBankNo = "0998"?"Yes":"no";
        var routeId = "512A4BAD-D84A-456F-BA60-D2DE976D977A"; //路由Id
        var Sel = 33; //充值标识
        var InsiderCode = "ICBC"; //内部编码
        var OutCode = "ICBK"; //外部编码
        var kjpaychannel = 32; //快捷支付渠道
        var kjrouteid ="B591CD4C-C05F-4CF8-8EC2-D7FCBC2875C7" ; //快捷路由ID
        var kjcgtpaycompany ="BAOFOO" ;//快捷对应的支付公司
        var cgtPayCompany = "BAOFOO";
        var bankName = "\u4E2D\u56FD\u5DE5\u5546\u94F6\u884C";
        $("#selBankName").html(bankName);
        getEBankPayLimit(Sel,InsiderCode);

        var fileId = 'baseBody_body_body_hd_url';
        var signId = 'baseBody_body_body_hd_sign';
        var apiUrl = "https:\/\/jtp.tuandai.com\/"; // rechargenew2016.js 文件有引用
        var IsHaveDaiChong = '0';

        function bankCode(routeid, insider, out, sel, payCompany,bname) {
            //清除原先的限额列表
            $("[name="+InsiderCode+"]").each(function () {
                $(this).remove();
            });
            //赋新值
            routeId = routeid;
            InsiderCode = insider;
            OutCode = out;
            Sel = sel;
            cgtPayCompany = payCompany;
            bankName = bname;
            $("#selBankName").html(bankName);//限额列表的银行名称
            getEBankPayLimit(sel,insider);//获取限额列表
        }

        //获取网银充值限额列表
        function getEBankPayLimit(sel,insiderCode){
            $.ajax({
                async: false,
                type: "get",
                url: '/member/Bank/getEBankPayLimit',
                data:{
                    sel:sel,
                    insiderCode:insiderCode
                },
                success: function(data) {
                    if(data.code==0 && data.data.length>0){
                        $("#eBankPayLimitDiv").show();
                        for(var i=0;i<data.data.length;i++){
                            var eBankName = data.data[i].eBankName==null?"":data.data[i].eBankName;
                            var singleLimit = data.data[i].singleLimit==null?"":data.data[i].singleLimit;
                            var dayLimit = data.data[i].dayLimit==null?"":data.data[i].dayLimit;
                            var singleUnit = data.data[i].singleUnit==1?"":data.data[i].singleUnit==2?"万":"不限额";
                            var dayUnit = data.data[i].dayUnit==1?"":data.data[i].dayUnit==2?"万":"不限额";
                            $("#eBankPayLimitTable").append("<tr name='"+insiderCode+"'>" +
                                "<td width='262' height='30'>"+eBankName+"</td>" +
                                "<td width='262' height='30'>"+singleLimit+singleUnit+"</td>" +
                                "<td width='262' height='30'>"+dayLimit+dayUnit+"</td></tr>");
                        }
                    }
                    if (data.code!=0 || data.data.length==0){//查询失败或者数据为空
                        $("#eBankPayLimitDiv").hide();
                    }
                },
                cache: false
            });
        }

        $(function () {
            if(sltChannel==0){

                $("#wealthrecharge").addClass("on");
                $("#twopay").addClass("hide");
            }else {
                $("#wealthrecharge").removeClass("on");
                $("#twopay").removeClass("hide");
            }
            if( sltChannel==kjpaychannel){
                $("#paylianlian").addClass("on");
                $("#onepay").addClass("hide");
            }else {
                $("#paylianlian").removeClass("on");
                $("#onepay").removeClass("hide");
            }


        });
        (function() {
            $('#vertical-center').find('.close').click(function() {
                $(this).parents('#vertical-center').hide();

                $('.layer').hide();
            })

            $('.know').click(function() {
                $('#vertical-center').hide();

                $('.layer').hide();
                return false;
            })

        })()

        var isMe = 0;
        var backUrlClose = "";

        function getRandomValue() {
            var n = Math.floor(Math.random() * Arr.length + 1) - 1;
            $("#span_qq").html(Arr[n]);
            $("#a_qq").attr("href", "http://wpa.qq.com/msgrd?v=3&uin=" + Arr[n] + "&site=qq&menu=yes");
            $("#a_qq").text(Arr[n]);
        }
        $(function() {
            getRandomValue();
            //选择充值对象
            $('.rec-user .account').click(function() {
                $(this).addClass('on').siblings().removeClass('on');
                if ($(this).hasClass('appoint')) {
                    $('.export-excel').show();
                    $("#baseBody_body_body_hd_sign").val("1");
                    $('.borrower-inf').show();
                    $('#t_money').css("disabled", "true");
                    $("#paylianlian").hide();
                    $("#wealthrecharge").click();
                    isMe = 0;
                } else {
                    isMe = 1;
                    $('.export-excel').hide();
                    $("#paylianlian").show();
                    $("#baseBody_body_body_hd_sign").val("0");
                    $('.borrower-inf').hide()
                    $('#t_money').css("disabled", "false");

                }
            });

            if ($("#baseBody_body_body_hd_sign").val() == "1") {
                $("#paylianlian").hide();
                $("#wealthrecharge").click();
                $('.appoint').click();
                $('#t_money').css("disabled", "true");
            }

            if (IsHaveDaiChong != "1") {
                $(".appoint").hide();
                $('.export-excel').hide();
            }

            if (IsOpenCGT == "1" && !checkIsOpen("other")) {
                backUrlClose = portalWebsiteUrl + "/member/account_default.aspx";
                return false;
            }
        });
    </script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/js1/rechargenew2016.js"></script>
    <script type="text/javascript">/*控制银行列表展开收起*/
    (function() {
        $('.member-list').hover(function() {
            $(this).find('ul').addClass('ul-type').end().find('.mission').show();
            $(this).find('.arrow').removeClass('down-arrow').addClass('up-arrow');
        }, function() {
            $(this).find('ul').removeClass('ul-type').end().find('.mission').hide();
            $(this).find('.arrow').removeClass('up-arrow').addClass('down-arrow');
        })
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


    </script>

    <script>
        var bankList =  [{"cgtPayCompay":"BAOFOO","routeId":"512A4BAD-D84A-456F-BA60-D2DE976D977A","insiderCode":"ICBC","outcode":"ICBK","channelId":24,"channelName":"\u5B9D\u4ED8\u652F\u4ED8\u3010\u7F51\u5173\u3001\u5B58\u7BA1\u3011","dayLimit":"50000","singleLimit":"50000","logoUrl":"\/\/js.tuandai.com\/images\/member\/Bank\/zfly\/gsyh1.jpg","sel":33,"bankName":"\u4E2D\u56FD\u5DE5\u5546\u94F6\u884C"},{"cgtPayCompay":"BAOFOO","routeId":"79B75DC4-8F4A-4BD3-BDA5-FC035AE406FE","insiderCode":"CCB","outcode":"PCBC","channelId":24,"channelName":"\u5B9D\u4ED8\u652F\u4ED8\u3010\u7F51\u5173\u3001\u5B58\u7BA1\u3011","dayLimit":"50000","singleLimit":"50000","logoUrl":"\/\/js.tuandai.com\/images\/member\/Bank\/zfly\/jsyh1.jpg","sel":33,"bankName":"\u4E2D\u56FD\u5EFA\u8BBE\u94F6\u884C"},{"cgtPayCompay":"UMPAY","routeId":"6A643705-BEF0-47E9-B20F-D75133D367C2","insiderCode":"BOC","outcode":"BKCH","channelId":22,"channelName":"\u8054\u52A8\u4F18\u52BF\u3010\u7F51\u5173\u3001\u5B58\u7BA1\u3011","dayLimit":"50000","singleLimit":"50000","logoUrl":"\/\/js.tuandai.com\/images\/member\/Bank\/zfly\/zgyh1.jpg","sel":31,"bankName":"\u4E2D\u56FD\u94F6\u884C"},{"cgtPayCompay":"UMPAY","routeId":"C1B9D077-C1BF-49C7-B4C5-229B992B64D3","insiderCode":"ABC","outcode":"ABOC","channelId":22,"channelName":"\u8054\u52A8\u4F18\u52BF\u3010\u7F51\u5173\u3001\u5B58\u7BA1\u3011","dayLimit":"50000","singleLimit":"50000","logoUrl":"\/\/js.tuandai.com\/images\/member\/Bank\/zfly\/nyyh1.jpg","sel":31,"bankName":"\u4E2D\u56FD\u519C\u4E1A\u94F6\u884C"},{"cgtPayCompay":"BAOFOO","routeId":"0D0DE831-DC4A-46C5-AD78-DDDE8FAFCCE5","insiderCode":"CMBCHINA","outcode":"CMBC","channelId":24,"channelName":"\u5B9D\u4ED8\u652F\u4ED8\u3010\u7F51\u5173\u3001\u5B58\u7BA1\u3011","dayLimit":"50000","singleLimit":"50000","logoUrl":"\/\/js.tuandai.com\/images\/member\/Bank\/zfly\/zsyh1.jpg","sel":33,"bankName":"\u62DB\u5546\u94F6\u884C"},{"cgtPayCompay":"UCFPAY","routeId":"81D06A7A-6FAD-4F54-A711-7E5A79FF7B13","insiderCode":"BOCO","outcode":"COMM","channelId":21,"channelName":"\u5148\u950B\u652F\u4ED8\u3010\u7F51\u5173\u3001\u5B58\u7BA1\u3011","dayLimit":"50000","singleLimit":"50000","logoUrl":"\/\/js.tuandai.com\/images\/member\/Bank\/zfly\/jtyh1.jpg","sel":30,"bankName":"\u4E2D\u56FD\u4EA4\u901A\u94F6\u884C"},{"cgtPayCompay":"BAOFOO","routeId":"B23500FF-90A3-44E4-92DE-A1321A9105CF","insiderCode":"GDB","outcode":"GDBK","channelId":24,"channelName":"\u5B9D\u4ED8\u652F\u4ED8\u3010\u7F51\u5173\u3001\u5B58\u7BA1\u3011","dayLimit":"50000","singleLimit":"50000","logoUrl":"\/\/js.tuandai.com\/images\/member\/Bank\/zfly\/gfyh1.jpg","sel":33,"bankName":"\u5E7F\u4E1C\u53D1\u5C55\u94F6\u884C"},{"cgtPayCompay":"BAOFOO","routeId":"6FB6ED5C-2C07-4AA6-9C54-161A3202FF8E","insiderCode":"CEB","outcode":"EVER","channelId":24,"channelName":"\u5B9D\u4ED8\u652F\u4ED8\u3010\u7F51\u5173\u3001\u5B58\u7BA1\u3011","dayLimit":"50000","singleLimit":"50000","logoUrl":"\/\/js.tuandai.com\/images\/member\/Bank\/zfly\/gdyh1.jpg","sel":33,"bankName":"\u5149\u5927\u94F6\u884C"},{"cgtPayCompay":"BAOFOO","routeId":"64E236C9-C10E-4506-BB9A-022E9996A7AE","insiderCode":"ECITIC","outcode":"CIBK","channelId":24,"channelName":"\u5B9D\u4ED8\u652F\u4ED8\u3010\u7F51\u5173\u3001\u5B58\u7BA1\u3011","dayLimit":"50000","singleLimit":"50000","logoUrl":"\/\/js.tuandai.com\/images\/member\/Bank\/zfly\/zxyh1.jpg","sel":33,"bankName":"\u4E2D\u4FE1\u94F6\u884C"},{"cgtPayCompay":"UMPAY","routeId":"24C7680D-B602-4653-B414-6EAE3C4EF935","insiderCode":"CMBC","outcode":"MSBC","channelId":22,"channelName":"\u8054\u52A8\u4F18\u52BF\u3010\u7F51\u5173\u3001\u5B58\u7BA1\u3011","dayLimit":"50000","singleLimit":"50000","logoUrl":"\/\/js.tuandai.com\/images\/member\/Bank\/zfly\/msyh1.jpg","sel":31,"bankName":"\u6C11\u751F\u94F6\u884C"},{"cgtPayCompay":"BAOFOO","routeId":"AE593436-34A4-44B1-A571-4EDFB4E332B0","insiderCode":"POST","outcode":"PSBC","channelId":24,"channelName":"\u5B9D\u4ED8\u652F\u4ED8\u3010\u7F51\u5173\u3001\u5B58\u7BA1\u3011","dayLimit":"50000","singleLimit":"50000","logoUrl":"\/\/js.tuandai.com\/images\/member\/Bank\/zfly\/postgcyh1.jpg","sel":33,"bankName":"\u90AE\u50A8\u94F6\u884C"},{"cgtPayCompay":"BAOFOO","routeId":"C13440D3-0343-4335-B0E7-550788E6135A","insiderCode":"CIB","outcode":"FJIB","channelId":24,"channelName":"\u5B9D\u4ED8\u652F\u4ED8\u3010\u7F51\u5173\u3001\u5B58\u7BA1\u3011","dayLimit":"50000","singleLimit":"50000","logoUrl":"\/\/js.tuandai.com\/images\/member\/Bank\/zfly\/xyyh1.jpg","sel":33,"bankName":"\u5174\u4E1A\u94F6\u884C"},{"cgtPayCompay":"BAOFOO","routeId":"947BB269-6BD4-47DE-BF3E-5BFDC4B2932C","insiderCode":"PINGAN","outcode":"SZDB","channelId":24,"channelName":"\u5B9D\u4ED8\u652F\u4ED8\u3010\u7F51\u5173\u3001\u5B58\u7BA1\u3011","dayLimit":"50000","singleLimit":"50000","logoUrl":"\/\/js.tuandai.com\/images\/member\/Bank\/zfly\/pnyh1.jpg","sel":33,"bankName":"\u5E73\u5B89\u94F6\u884C"},{"cgtPayCompay":"BAOFOO","routeId":"415C875A-5309-44C2-BC8F-FEE927ACDEDB","insiderCode":"BCCB","outcode":"BJCN","channelId":24,"channelName":"\u5B9D\u4ED8\u652F\u4ED8\u3010\u7F51\u5173\u3001\u5B58\u7BA1\u3011","dayLimit":"50000","singleLimit":"50000","logoUrl":"\/\/js.tuandai.com\/images\/member\/Bank\/zfly\/bjyh1.jpg","sel":33,"bankName":"\u5317\u4EAC\u94F6\u884C"},{"cgtPayCompay":"BAOFOO","routeId":"C796CBEF-D27E-431D-9FB4-BD8B869DB43E","insiderCode":"HXYH","outcode":"HXBK","channelId":24,"channelName":"\u5B9D\u4ED8\u652F\u4ED8\u3010\u7F51\u5173\u3001\u5B58\u7BA1\u3011","dayLimit":"50000","singleLimit":"50000","logoUrl":"\/\/js.tuandai.com\/images\/member\/Bank\/zfly\/hxyh1.jpg","sel":33,"bankName":"\u534E\u590F\u94F6\u884C"},{"cgtPayCompay":"BAOFOO","routeId":"FFECCA5C-BECB-41FC-A31C-4572AC0B1CBE","insiderCode":"ICBC2B","outcode":"ICBK","channelId":24,"channelName":"\u5B9D\u4ED8\u652F\u4ED8\u3010\u7F51\u5173\u3001\u5B58\u7BA1\u3011","dayLimit":"50000","singleLimit":"50000","logoUrl":"\/\/js.tuandai.com\/images\/member\/Bank\/zfly\/icbcb2byh1.jpg","sel":33,"bankName":"\u5DE5\u5546\u94F6\u884C(\u4F01\u4E1A)"},{"cgtPayCompay":"BAOFOO","routeId":"8E27E011-7345-4E77-8F1E-73E893B23A3E","insiderCode":"CCB2B","outcode":"PCBC","channelId":24,"channelName":"\u5B9D\u4ED8\u652F\u4ED8\u3010\u7F51\u5173\u3001\u5B58\u7BA1\u3011","dayLimit":"50000","singleLimit":"50000","logoUrl":"\/\/js.tuandai.com\/images\/member\/Bank\/zfly\/ccbb2byh1.jpg","sel":33,"bankName":"\u5EFA\u8BBE\u94F6\u884C(\u4F01\u4E1A)"},{"cgtPayCompay":"BAOFOO","routeId":"0BE611AA-827A-4A8D-89BD-5F3594A1E16A","insiderCode":"ABC2B","outcode":"ABOC","channelId":24,"channelName":"\u5B9D\u4ED8\u652F\u4ED8\u3010\u7F51\u5173\u3001\u5B58\u7BA1\u3011","dayLimit":"50000","singleLimit":"50000","logoUrl":"\/\/js.tuandai.com\/images\/member\/Bank\/zfly\/abcb2byh1.jpg","sel":33,"bankName":"\u519C\u4E1A\u94F6\u884C(\u4F01\u4E1A)"},{"cgtPayCompay":"BAOFOO","routeId":"E7AC57AC-241A-41A5-A01D-51C4B0252611","insiderCode":"BOC2B","outcode":"BKCH","channelId":24,"channelName":"\u5B9D\u4ED8\u652F\u4ED8\u3010\u7F51\u5173\u3001\u5B58\u7BA1\u3011","dayLimit":"50000","singleLimit":"50000","logoUrl":"\/\/js.tuandai.com\/images\/member\/Bank\/zfly\/boc2byh1.jpg","sel":33,"bankName":"\u4E2D\u56FD\u94F6\u884C(\u4F01\u4E1A)"},{"cgtPayCompay":"BAOFOO","routeId":"7B67F370-9D3B-42FF-AA4D-031E3233858C","insiderCode":"CMBCHINA2B","outcode":"CMBC","channelId":24,"channelName":"\u5B9D\u4ED8\u652F\u4ED8\u3010\u7F51\u5173\u3001\u5B58\u7BA1\u3011","dayLimit":"50000","singleLimit":"50000","logoUrl":"\/\/js.tuandai.com\/images\/member\/Bank\/zfly\/cmbb2byh1.jpg","sel":33,"bankName":"\u62DB\u5546\u94F6\u884C(\u4F01\u4E1A)"},{"cgtPayCompay":"BAOFOO","routeId":"F685F7A9-615D-410D-84DC-8351CCC36001","insiderCode":"CIB2B","outcode":"FJIB","channelId":24,"channelName":"\u5B9D\u4ED8\u652F\u4ED8\u3010\u7F51\u5173\u3001\u5B58\u7BA1\u3011","dayLimit":"50000","singleLimit":"50000","logoUrl":"\/\/js.tuandai.com\/images\/member\/Bank\/zfly\/cib2byh1.jpg","sel":33,"bankName":"\u5174\u4E1A\u94F6\u884C(\u4F01\u4E1A)"},{"cgtPayCompay":"BAOFOO","routeId":"164A8F8D-E423-4445-830E-078CB4E0838C","insiderCode":"CMBC2B","outcode":"MSBC","channelId":24,"channelName":"\u5B9D\u4ED8\u652F\u4ED8\u3010\u7F51\u5173\u3001\u5B58\u7BA1\u3011","dayLimit":"50000","singleLimit":"50000","logoUrl":"\/\/js.tuandai.com\/images\/member\/Bank\/zfly\/cmbc2byh1.jpg","sel":33,"bankName":"\u6C11\u751F\u94F6\u884C(\u4F01\u4E1A)"},{"cgtPayCompay":"BAOFOO","routeId":"92A679A4-2A56-4CD2-BDEB-9E9F3626427C","insiderCode":"ECITIC2B","outcode":"CIBK","channelId":24,"channelName":"\u5B9D\u4ED8\u652F\u4ED8\u3010\u7F51\u5173\u3001\u5B58\u7BA1\u3011","dayLimit":"50000","singleLimit":"50000","logoUrl":"\/\/js.tuandai.com\/images\/member\/Bank\/zfly\/ecitic2byh1.jpg","sel":33,"bankName":"\u4E2D\u4FE1\u94F6\u884C(\u4F01\u4E1A)"},{"cgtPayCompay":"BAOFOO","routeId":"9845D25B-7BE3-46DB-B199-B9A33CD3A0CB","insiderCode":"GDB2B","outcode":"GDBK","channelId":24,"channelName":"\u5B9D\u4ED8\u652F\u4ED8\u3010\u7F51\u5173\u3001\u5B58\u7BA1\u3011","dayLimit":"50000","singleLimit":"50000","logoUrl":"\/\/js.tuandai.com\/images\/member\/Bank\/zfly\/gdb2byh1.jpg","sel":33,"bankName":"\u5E7F\u53D1\u94F6\u884C(\u4F01\u4E1A)"},{"cgtPayCompay":"BAOFOO","routeId":"EC5C238B-72CC-4994-A70B-7CB4D4FAAF34","insiderCode":"BBCB2B","outcode":"BJCN","channelId":24,"channelName":"\u5B9D\u4ED8\u652F\u4ED8\u3010\u7F51\u5173\u3001\u5B58\u7BA1\u3011","dayLimit":"50000","singleLimit":"50000","logoUrl":"\/\/js.tuandai.com\/images\/member\/Bank\/zfly\/bbcb2byh1.jpg","sel":33,"bankName":"\u5317\u4EAC\u94F6\u884C(\u4F01\u4E1A)"},{"cgtPayCompay":"BAOFOO","routeId":"19910119-2A1D-441A-B92E-A9F182FE13C4","insiderCode":"PNYH2B","outcode":"SZDB","channelId":24,"channelName":"\u5B9D\u4ED8\u652F\u4ED8\u3010\u7F51\u5173\u3001\u5B58\u7BA1\u3011","dayLimit":"50000","singleLimit":"50000","logoUrl":"\/\/js.tuandai.com\/images\/member\/Bank\/zfly\/pn2byh1.jpg","sel":33,"bankName":"\u5E73\u5B89\u94F6\u884C\uFF08\u4F01\u4E1A\uFF09"}];
        var bankCount = 26;
        var bankShowCount = bankCount>11?11:bankCount;
        var top11BankHtml = "";

        for (var i = 0; i < bankShowCount; i++) {
            var item = bankList[i];
            var mark = (i + 1) % 4;
            var liClass = "";
            var emClass = "";

            if (mark == 0) {
                liClass = "last";
            } else {
                if (i == 0) {
                    liClass = "sec";
                    emClass = "current";
                }
            }
            var routeId = item["routeId"];
            var insiderCode = item["insiderCode"];
            var outcode = item["outcode"];
            var sel = item["sel"];
            var cgtPayCompay = item["cgtPayCompay"];
            var logoUrl = item["logoUrl"];
            var bankName = item["bankName"];

            top11BankHtml += "<li class=\"blanklist " + liClass + "\" onclick=\"bankCode('" + routeId + "','" + insiderCode + "','" + outcode + "','" + sel + "','" + cgtPayCompay + "','" + bankName + "'); \">";
            top11BankHtml += "<p><img src=\"" + logoUrl + "\" alt=\"" + bankName + "\">"
            top11BankHtml += "<em class=\"" + emClass + "\"></em></p></li>"

            $("#bankListDIV").html(top11BankHtml);
        }
        if(bankCount>11){
            var moreHtml = "<li class=\"last more\"><span>更多银行<i class=\"arrow arrow-down\"></i></span></li>";
            $("#bankListDIV").append(moreHtml);

            for(var i = 11; i < bankCount; i++) {
                var item = bankList[i];
                var mark = (i + 1) % 4;
                var liClass = "";

                if (mark == 0) {
                    liClass = "last";
                }
                var routeId = item["routeId"];
                var insiderCode = item["insiderCode"];
                var outcode = item["outcode"];
                var sel = item["sel"];
                var cgtPayCompay = item["cgtPayCompay"];
                var logoUrl = item["logoUrl"];
                var bankName = item["bankName"];
                var lastBankHtml = "";
                lastBankHtml += "<li class=\"blanklist " + liClass + "\" onclick=\"bankCode('" + routeId + "','" + insiderCode + "','" + outcode + "','" + sel + "','" + cgtPayCompay + "','" + bankName + "'); \">";
                lastBankHtml += "<p><img src=\"" + logoUrl + "\" alt=\"" + bankName + "\">"
                lastBankHtml += "<em class=\"\"></em></p></li>"
                $("#bankListDIV").append(lastBankHtml);
            }
            var upHtml = "   <li class=\"up\"><span>收起<i class=\"arrow arrow-up\"></i></span> </li>";
            $("#bankListDIV").append(upHtml);
        }



    </script>





       
        <!--数据统计-->
        <script type="text/javascript">

        portalWebsiteUrl = "\/\/www.tdw.cn";
       // portalWebsiteUrl = "http://www.tuandai.com";
        imageWebsiteUrl = "\/\/image.tuandai.com";
        ActivityWebsiteUrl = "https:\/\/hd.tuandai.com";
        PassportWebUrl = "\/\/passport.tdw.cn";

			/*<![CDATA[*/
            (function () {
                $('.member-list').hover(function () {
                    $(this).find('ul').addClass('ul-type').end().find('.mission').show();
                    $(this).find('.arrow').removeClass('down-arrow').addClass('up-arrow');
                }, function () {
                    $(this).find('ul').removeClass('ul-type').end().find('.mission').hide();
                    $(this).find('.arrow').removeClass('up-arrow').addClass('down-arrow');
                }
            )
            })();
            function stringToHex(s) { var r = ''; var hexes = new Array('0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'); for (var i = 0; i < (s.length) ; i++) { r += hexes[s.charCodeAt(i) >> 4] + hexes[s.charCodeAt(i) & 0xf] } return r }
            function HexTostring(s) { var r = ''; for (var i = 0; i < s.length; i += 2) { var sxx = parseInt(s.substring(i, i + 2), 16); r += String.fromCharCode(sxx) } return r }

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
                var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ta, s);
            })();

			/*]]>*/            
        </script>        

<img style="display: none;" src="${pageContext.request.contextPath }/html/html1/SingleLogin.html">
<div style="display: none; position: absolute;" class=""><div class="aui_outer"><table class="aui_border"><tbody><tr><td class="aui_nw"></td><td class="aui_n"></td><td class="aui_ne"></td></tr><tr><td class="aui_w"></td><td class="aui_c"><div class="aui_inner"><table class="aui_dialog"><tbody><tr><td colspan="2" class="aui_header"><div class="aui_titleBar"><div class="aui_title" style="cursor: move;"></div><a class="aui_close" href="javascript:void(0);">×</a></div></td></tr><tr><td class="aui_icon" style="display: none;"><div class="aui_iconBg" style="background: rgba(0, 0, 0, 0) none repeat scroll 0% 0%;"></div></td><td class="aui_main" style="width: 300px; height: 80px;"><div class="aui_content" style=""></div></td></tr><tr><td colspan="2" class="aui_footer"><div class="aui_buttons" style="display: none;"></div></td></tr></tbody></table></div></td><td class="aui_e"></td></tr><tr><td class="aui_sw"></td><td class="aui_s"></td><td class="aui_se" style="cursor: se-resize;"></td></tr></tbody></table></div></div></body></html>