<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3"><head>
    <title>团贷网 - 综合金融服务平台,让金融更简单！</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="alternate" media="only screen and (max-width: 640px)" href="https://m.tdw.cn/">
    <link rel="dns-prefetch" href="https://image.tuandai.com/">
    <link rel="dns-prefetch" href="https://js2.tdw.cn/">
    <link rel="shortcut icon" href="https://js2.tdw.cn/images/default/favicon.ico?v=20150513">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/css1/base.css">
    <meta name="keywords" content="投资理财，互联网金融，P2P网站，P2P网贷，P2P理财">
    <meta name="description" content="团贷网(tdw.cn)是派生科技集团股份有限公司（以下简称“派生集团”）旗下的综合金融服务平台,致力于为广大投资用户提供基金、保险、证券、网络借贷等互联网投资一站式综合服务.">
    <!-- 前端公用CSS库-->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/css1/public.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/css1/xiamen-bank.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/css1/cgt.css">

    <!-- UI CSS-->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/css1/new.css">
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/homepage/jquery-1.8.3.js"></script>
    <script type="text/javascript" async="" src="${pageContext.request.contextPath }/js/js1/webaccess.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/homepage/RechargeNew2016.js"></script>
    <script type="text/javascript" async="" src="${pageContext.request.contextPath }/js/js1/webaccess.js"></script>
    <!-- <script charset="utf-8" src="/v.htm"></script> -->
    <script src="${pageContext.request.contextPath }/js/js1/hm.js"></script>
    <script type="text/javascript">
        var _hmt = _hmt || [];
        (function() {
            var hm = document.createElement("script");
            hm.src = "https://hm.baidu.com/hm.js?e5885737885060b19f50ba5ed78c9802";
            var s = document.getElementsByTagName("script")[0];
            s.parentNode.insertBefore(hm, s);
        })();
    </script>
    
    
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/css1/account-new.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/css1/account-public.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/css1/xiamen-bank.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/css1/cgt20161107.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/css1/bind_bank.css">
    

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/css1/cgt_002.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/css1/account-new_002.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/css1/bind_bank_002.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/css1/account_invest.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/css1/user.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/css1/user_002.css">




    
</head>
<body>
    <!-- 头部STAR -->
   <div class="header">
        <!-- top bar STAR -->
        <div class="t-b  t-b-w lh40 bgff f12 fst cl">
            <div class="w1200 h40 auto g6">
                <div class="right-side  r inline-block-debug">
                <!-- topinfo -->
                    <div class="inline-block-debug c-poi-a" id=""><span class="reg" style="color:#303030">欢迎您，</span><a href="${pageContext.request.contextPath }/jsp/member/account_default.jsp" rel="nofollow" class="reg">${users.userName }</a><span>|</span><a href="javascript:logout();">退出</a><span>|</span></div>
                    <a rel="nofollow" href="https://hd.tdw.cn/web/invite_friends/index.aspx">邀请有礼</a><span>|</span>
                    <a rel="nofollow" href="http://info.tdw.cn/social.html" class="soc" target="_blank"><span class="hot-icon"></span>社会责任</a><span>|</span>
                    <a rel="nofollow" href="http://info.tdw.cn/help/index.html" target="_blank">帮助中心</a><span>|</span>
                    <a href="https://www.tuandai.com/activity/index.aspx" target="_blank">活动专题</a><span>|</span>
                    <a href="https://bbs.tuandai.com/" target="_blank">社区</a><span>|</span>
                    <span class="rel member-list z1">
                        <i class="down-arrow arrow"></i>
                        <ul class="abs z1  ">
                            <li>
                                <a rel="nofollow" href="https://vip.tdw.cn/" target="_blank" style="display: block" class="member-link"><i class="icon a"></i>会员中心</a>
                            </li>
                            <li class="mission " style="display: none"><a rel="nofollow" href="https://hd.tdw.cn/web/newhand/gonglve.aspx" target="_blank">团币任务</a></li>
                        </ul>
                    </span>
                    <!-- <span>|</span> -->
                    <div class="inline-block-debug rel app-ewm-box"><a rel="nofollow" class="app  icon  mr10  inline-block-debug">&nbsp;</a>
                        &nbsp;
                        <div class="app-ewm   pt20 abs z5" style="display: none">
                            <i class="arrow icon abs db zx2"></i>
                        </div>
                    </div>
          
                    <div class="weixin icon   mr10  rel z5   inline-block-debug c-poi">
                        &nbsp;
							<div class="ewm   p20 abs z5" style="display: none">
                                <i class="arrow icon abs db zx2"></i>
                            </div>
                    </div>
                    <div class="sina icon   inline-block-debug c-poi" onclick="javascript:window.open('http://weibo.com/tuandai');"></div>
                </div>
                <div class="left-side">
                    <i class="icon dib phone vm  lh0">&nbsp;</i><span class="ml5">客服热线：1010-1218（9:00～22:00）</span>
                </div>
            </div>
        </div>
        <!-- top bar END -->
        <!-- nav STAR -->
        <div class="nav-w bgfff">
            <div class="nav-box auto w1200 fix">
                <div class="r rel tc  slid z3">

                    <dl class="abs i-b-d vt about-us r0" id="">
                    <%-- <dt><a href="${pageContext.request.contextPath }/jsp/member/account_default.jsp"><i class="account-icon i-b-d icon vm"></i>我的账户<i class="icon arrow i-b-d vm"></i></a></dt> --%>
                    <dd><a href="${pageContext.request.contextPath }/jsp/member/RechargeNew2016.jsp">立即充值</a></dd><dd><a href="${pageContext.request.contextPath }/jsp/member/account_moneylist.jsp">资金统计</a></dd><dd><a href="${pageContext.request.contextPath }/jsp/member/account_weFTBAll.jsp">智能理财</a></dd><dd><a href="${pageContext.request.contextPath }/jsp/member/account_loaninbid.jsp">散标投资</a></dd><dd><a href="${pageContext.request.contextPath }/jsp/member/account_loanReturnPlanList.jsp">回款计划</a></dd><dd><a href="${pageContext.request.contextPath }/jsp/member/AutoTenderList.jsp">自动投标</a></dd><dd><a href="${pageContext.request.contextPath }/jsp/member/account_borrowReturnPlanList.jsp">还款安排</a></dd><dd><a href="${pageContext.request.contextPath }/jsp/member/account_borrowInBid2.jsp">借款记录</a></dd><dd><dd><a href="javascript:logout();">退出</a></dd></dl>
                </div>
                <div class="nav r">
                    <ul>
                        <li class="nav-t">
                            <a href="${pageContext.request.contextPath }/jsp/homepage/investmenthome.jsp">首页</a>
                        </li>
						<li class="nav-t ">
                           
					</li>

                        
<li class="nav-t ">
<div class="r rel tc  slid z3 r ">
<dl class="abs i-b-d vt guarantee r0">
<dt><a rel="nofollow" href="http://info.tdw.cn/about/guarantee.html?mark=1">信息披露<i class="icon arrow i-b-d vm"></i></a></dt>
<dd style="overflow: hidden; height: 37px; display: none; margin-top: 0px; margin-bottom: 0px; padding-top: 0px; padding-bottom: 0px;">
<a rel="nofollow" href="http://info.tdw.cn/about/guarantee.html?mark=1">安全保障</a>
</dd>
<dd style="overflow: hidden; height: 37px; display: none; margin-top: 0px; margin-bottom: 0px; padding-top: 0px; padding-bottom: 0px;">
<a rel="nofollow" href="https://hd.tdw.cn/web/20161124Quality/index.aspx?tdsource=pcbanner" target="_blank">担保专款</a>
</dd>
<dd style="overflow: hidden; height: 37px; display: none; margin-top: 0px; margin-bottom: 0px; padding-top: 0px; padding-bottom: 0px;">
<a rel="nofollow" href="http://info.tdw.cn/about/report.html?mark=3">运营报表</a>
</dd>

<dd style="overflow: hidden; height: 37px; display: none; margin-top: 0px; margin-bottom: 0px; padding-top: 0px; padding-bottom: 0px;">
<a rel="nofollow" href="http://info.tdw.cn/about/regulatory.html?mark=17">监管法规</a>
</dd>
<dd style="overflow: hidden; height: 37px; display: none; margin-top: 0px; margin-bottom: 0px; padding-top: 0px; padding-bottom: 0px;">
<a rel="nofollow" href="http://info.tdw.cn/about/platform.html?mark=8">关于我们</a>
</dd>
</dl>
</div>
</li>
<li class="nav-t">
<a href="https://www.tuandai.com/pages/borrow/index.aspx">借款</a>
</li>

                    </ul>

                </div>
                <a href="${pageContext.request.contextPath }/jsp/homepage/investmenthome.jsp" class="logo dib l">
                    <img src="${pageContext.request.contextPath }/static/img1/logo.png" alt="团贷网"></a>
                <div class="index-bd">
                    <ul class="index_slider" style="bottom: 0px">                    

                   <li>
                             <img src="${pageContext.request.contextPath }/static/img1/1500523393353.png" alt="让金融更简单">
                        </li>

                    </ul>

                </div>
            </div>
        </div>
       

    </div>
        <!-- 头部END -->
        <!-- 右侧计算器 -->
        <div class="tool">
            <div class="t-box rel" onclick="javascript:void(0);">
                <div class="dan-tip abs tc" style="display: none">市场有风险投资需谨慎<span class="triangle db"></span></div>
                <i class="t6"></i>
                <a href="javascript:;">风险提示</a>
            </div>
            <div class="t-box" onclick="javascript:window.open('http://www.sobot.com/chat/pc/index.html?sysNum=20ab7dce1e3346e8b90b649bd8baf591');"><i class="t1"></i><a href="javascript:;">在线客服</a></div>
            <div class=" t-box" onclick="javascript:window.open('//info.tdw.cn/help/index.html')"><i class="t2"></i><a href="javascript:;">帮助中心</a></div>
            <div class=" t-box" onclick="javascript:window.open('//news.tdw.cn/tool/int_fina.aspx');"><i class="t3"></i><a class="" href="javascript:;">计算工具</a></div>
            <div class="t-box to-top" onclick="javascript:;" style="display: none"><i class="t5"></i><a href="javascript:;" class="pt10">回到顶部</a></div>
        </div>

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
                              

                                <dd id="" class="currentMenu">
                                <a href="${pageContext.request.contextPath }/jsp/member/RechargeNew2016.jsp">充值</a></dd>
                                <dd id=""><a href="${pageContext.request.contextPath }/jsp/member/drawmoney.jsp" onclick="return left_CheckAllowDraw();" target="_blank">提现</a></dd>
                            </dl>
                            <div>
                            	<dl>
                                <dt><i class="dt-3"></i>P2P<i class="arrow"></i></dt>
                                <dd id=""><a href="${pageContext.request.contextPath }/jsp/member/AutoTenderList.jsp">自动投标</a>
                                </dd>
                                <dd id=""> <div class="left-new"></div>
                                	<a href="${pageContext.request.contextPath }/jsp/member/account_weFTBAll.jsp">智能投资</a>
                                	
                                </dd>
                                <dd id=""><a href="${pageContext.request.contextPath }/jsp/member/account_loaninbid.jsp">散标投资</a></dd>
                                
                                
                                <dd id=""><a href="${pageContext.request.contextPath }/jsp/member/account_loanReturnPlanList.jsp">回款计划</a></dd>
                                
                            </dl>
                           
                            <dl>
                                <dt><i class="dt-4"></i>我的借款<i class="arrow"></i></dt>
                                <dd id=""><a href="${pageContext.request.contextPath }/jsp/member/account_borrowTypeSelect.jsp">借入人审核</a></dd>
                                
                                
                                
                                <dd id=""><a href="${pageContext.request.contextPath }/jsp/member/account_projectweibasic.jsp">资产标区</a></dd>
                                <dd id=""><a href="${pageContext.request.contextPath }/jsp/member/account_borrowInBid2.jsp">借款记录</a></dd>
                                
                                <dd id=""><a href="${pageContext.request.contextPath }/jsp/member/account_borrowReturnPlanList.jsp">还款安排</a></dd>
                            </dl>
                            </div>

                    </div>
                    
                    
                    
                    

                    

                    <div>
                    <dl>
                        <dt><i class="dt-5"></i>个人设置<i class="arrow"></i></dt>
                        <dd id=""><a href="${pageContext.request.contextPath }/jsp/member/account_userdetailinfo.jsp">基本信息 </a></dd>
                        <dd id=""><a href="${pageContext.request.contextPath }/jsp/member/Validat_eindex.jsp">安全中心</a></dd>
                        <dd id="">
                            <div class="left-new"></div>
                            <a href="https://vip.tdw.cn/" target="_blank">团贷会员</a></dd>
                     
                        <dd id=""><a href="${pageContext.request.contextPath }/jsp/member/account_notice.jsp">消息中心</a></dd>
                    </dl>
                    </div>
                    
               </div>
            </div>
            

    <div class="account-container clearfloat">
        
            <div class="aspNetHidden">
                <input name="__VIEWSTATE" id="__VIEWSTATE" value="B6XiEQfhhKc9BdS1MFoNbjJjqJem654gP7l4t4RoWnfK77ZeHdF3+e0d4EetrmQ8HpL7PGUevKUBflWIbE2xB+Gk9VJgAJ38pnDo6tRmxwem+8+II2f2fgLwgFWaTVg9Vt9jHYSWuZ1W4Co6rycIUWOMxDduio1EAEG8QjdICTuoaX3D6gk/N0DIMQlWbRDF6VariR6P4Fd9TvJR" type="hidden">
            </div>
            <div class="aspNetHidden">
                <input name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="0DD3DAEE" type="hidden">
                <input name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="mEYcNOkhl4wELPU/LuVP6y/kn/9lyoULVvaI45hnC1Xv7C5+AJ8X2TJyXhiqzduxLHF17BZ3ShKt+RWP8B/M8XaGHtNzbORCUJaYK2yoT5k5UNJZNQxbKKSAvK9oZ1ZL90SF2e57BQoy+WJCrD4WKMHOfCR+n5t+YdluxA==" type="hidden">
            </div>
            <div class="account-rightBox clearfloat">
                <div class="box-padding" style="min-height: 920px">
                    <div class="nav_top">
                        <div class="protect-green"><span>
                            您的充值、提现操作将在 <span class="xm-logo"></span> 厦门银行存管平台进行，资金安全无忧</span>
                        </div>
                        <ul class="nav_title">
                            <li class="tab_title_a">
                                <a href="${pageContext.request.contextPath }/jsp/member/RechargeNew2016.jsp;">充值中心</a>
                            </li>
                            <li class="tab_title_b" onclick="javascript:window.location.href='${pageContext.request.contextPath }/jsp/member/rechargeRecord.jsp';">
                                <a href="${pageContext.request.contextPath }/jsp/member/rechargeRecord.jsp">充值记录</a>
                            </li>
                        </ul>
                    </div>
                    <div class="account_notice margin-top-20 clearfloat">
                        <h2>温馨提示</h2>
                        <p>
                            1.单笔充值金额不低于100元；<br> 2.为遵守国家反洗钱和套现行为的相关法律规定:充值后的所有资金不投标须等 15天 后才能提现；<br> 3. 如果你充值是用于还款，建议暂停自动投标，以免资金被投资出去导致不够资金还款；<br> 4.工商、邮储、建设、浦发及中国银行需开通银联无卡支付功能，方可进行快捷支付。
                            <a style="color: #37a5ff;" target="_blank" href="http://www.tuandai.com/pages/news/newsDetail.aspx?id=1154">[ 查看详情 ]</a>
                            <br> 5. 23：45分至次日00：45分为银行对账时间，建议避开该时段充值，以免出现到账延迟。
                        </p>
                    </div>
                    <div class="capital-account mt35">
                    </div>
                    <div class="recharge-content">
                        <ul class="re-tabtit f16" id="re-tabtit"><!-- 网银支付 wealthrecharge -->
                            <li class="on" id="">支付宝支付</li>
                            <li class="" id="paylianlian">快捷支付</li>
                            <li class="" style="display:none;" id="tenpayorwx">财付通/微信</li>
                        </ul>
                        <div class="re-tabbox" id="re-tabbox">
                        <div>
                        	 <img src="${pageContext.request.contextPath }/static/img6/timg.jpg" width="200px" height="100px" style="margin-left: 80px" alt="支付宝">
                        </div>
                        		<!-- 人为隐藏 -->
                            <div class="re-tab-content one-pay" id="onepay" style="display:none;">
                                <ul id="bankListDIV"><li class="blanklist sec" onclick="bankCode('512a4bad-d84a-456f-ba60-d2de976d977a','ICBC','ICBK','33','BAOFOO','中国工商银行'); "><p>
                                <img src="${pageContext.request.contextPath }/static/img1/gsyh1.jpg" alt="中国工商银行"><em class="current"></em></p></li><li class="blanklist " onclick="bankCode('79b75dc4-8f4a-4bd3-bda5-fc035ae406fe','CCB','PCBC','33','BAOFOO','中国建设银行'); "><p>
                                <img src="${pageContext.request.contextPath }/static/img1/jsyh1.jpg" alt="中国建设银行"><em class=""></em></p></li><li class="blanklist " onclick="bankCode('6a643705-bef0-47e9-b20f-d75133d367c2','BOC','BKCH','31','UMPAY','中国银行'); "><p>
                                <img src="${pageContext.request.contextPath }/static/img1/zgyh1.jpg" alt="中国银行"><em class=""></em></p></li><li class="blanklist last" onclick="bankCode('c1b9d077-c1bf-49c7-b4c5-229b992b64d3','ABC','ABOC','31','UMPAY','中国农业银行'); "><p>
                                <img src="${pageContext.request.contextPath }/static/img1/nyyh1.jpg" alt="中国农业银行"><em class=""></em></p></li><li class="blanklist " onclick="bankCode('0d0de831-dc4a-46c5-ad78-ddde8fafcce5','CMBCHINA','CMBC','33','BAOFOO','招商银行'); "><p>
                                <img src="${pageContext.request.contextPath }/static/img1/zsyh1.jpg" alt="招商银行"><em class=""></em></p></li><li class="blanklist " onclick="bankCode('81d06a7a-6fad-4f54-a711-7e5a79ff7b13','BOCO','COMM','30','UCFPAY','中国交通银行'); "><p>
                                <img src="${pageContext.request.contextPath }/static/img1/jtyh1.jpg" alt="中国交通银行"><em class=""></em></p></li><li class="blanklist " onclick="bankCode('b23500ff-90a3-44e4-92de-a1321a9105cf','GDB','GDBK','33','BAOFOO','广东发展银行'); "><p>
                                <img src="${pageContext.request.contextPath }/static/img1/gfyh1.jpg" alt="广东发展银行"><em class=""></em></p></li><li class="blanklist last" onclick="bankCode('6fb6ed5c-2c07-4aa6-9c54-161a3202ff8e','CEB','EVER','33','BAOFOO','光大银行'); "><p>
                                <img src="${pageContext.request.contextPath }/static/img1/gdyh1.jpg" alt="光大银行"><em class=""></em></p></li><li class="blanklist " onclick="bankCode('64e236c9-c10e-4506-bb9a-022e9996a7ae','ECITIC','CIBK','33','BAOFOO','中信银行'); "><p>
                                <img src="${pageContext.request.contextPath }/static/img1/zxyh1.jpg" alt="中信银行"><em class=""></em></p></li><li class="blanklist " onclick="bankCode('24c7680d-b602-4653-b414-6eae3c4ef935','CMBC','MSBC','31','UMPAY','民生银行'); "><p>
                                <img src="${pageContext.request.contextPath }/static/img1/msyh1.jpg" alt="民生银行"><em class=""></em></p></li><li class="blanklist " onclick="bankCode('ae593436-34a4-44b1-a571-4edfb4e332b0','POST','PSBC','33','BAOFOO','邮储银行'); "><p>
                                <img src="${pageContext.request.contextPath }/static/img1/postgcyh1.jpg" alt="邮储银行"><em class=""></em></p></li><li class="last more"><span>更多银行<i class="arrow arrow-down"></i></span></li><li class="blanklist last" onclick="bankCode('c13440d3-0343-4335-b0e7-550788e6135a','CIB','FJIB','33','BAOFOO','兴业银行'); "><p>
                                <img src="${pageContext.request.contextPath }/static/img1/xyyh1.jpg" alt="兴业银行"><em class=""></em></p></li><li class="blanklist " onclick="bankCode('947bb269-6bd4-47de-bf3e-5bfdc4b2932c','PINGAN','SZDB','33','BAOFOO','平安银行'); "><p>
                                <img src="${pageContext.request.contextPath }/static/img1/pnyh1.jpg" alt="平安银行"><em class=""></em></p></li><li class="blanklist " onclick="bankCode('415c875a-5309-44c2-bc8f-fee927acdedb','BCCB','BJCN','33','BAOFOO','北京银行'); "><p><img src="${pageContext.request.contextPath }/static/img1/bjyh1.jpg" alt="北京银行"><em class=""></em></p></li><li class="blanklist " onclick="bankCode('c796cbef-d27e-431d-9fb4-bd8b869db43e','HXYH','HXBK','33','BAOFOO','华夏银行'); "><p>
                                <img src="${pageContext.request.contextPath }/static/img1/hxyh1.jpg" alt="华夏银行"><em class=""></em></p></li><li class="blanklist last" onclick="bankCode('ffecca5c-becb-41fc-a31c-4572ac0b1cbe','ICBC2B','ICBK','33','BAOFOO','工商银行(企业)'); "><p>
                                <img src="${pageContext.request.contextPath }/static/img1/icbcb2byh1.jpg" alt="工商银行(企业)"><em class=""></em></p></li><li class="blanklist " onclick="bankCode('8e27e011-7345-4e77-8f1e-73e893b23a3e','CCB2B','PCBC','33','BAOFOO','建设银行(企业)'); "><p>
                                <img src="${pageContext.request.contextPath }/static/img1/ccbb2byh1.jpg" alt="建设银行(企业)"><em class=""></em></p></li><li class="blanklist " onclick="bankCode('0be611aa-827a-4a8d-89bd-5f3594a1e16a','ABC2B','ABOC','33','BAOFOO','农业银行(企业)'); "><p>
                                <img src="${pageContext.request.contextPath }/static/img1/abcb2byh1.jpg" alt="农业银行(企业)"><em class=""></em></p></li><li class="blanklist " onclick="bankCode('e7ac57ac-241a-41a5-a01d-51c4b0252611','BOC2B','BKCH','33','BAOFOO','中国银行(企业)'); "><p>
                                <img src="${pageContext.request.contextPath }/static/img1/boc2byh1.jpg" alt="中国银行(企业)"><em class=""></em></p></li><li class="blanklist last" onclick="bankCode('7b67f370-9d3b-42ff-aa4d-031e3233858c','CMBCHINA2B','CMBC','33','BAOFOO','招商银行(企业)'); "><p>
                                <img src="${pageContext.request.contextPath }/static/img1/cmbb2byh1.jpg" alt="招商银行(企业)"><em class=""></em></p></li><li class="blanklist " onclick="bankCode('f685f7a9-615d-410d-84dc-8351ccc36001','CIB2B','FJIB','33','BAOFOO','兴业银行(企业)'); "><p>
                                <img src="${pageContext.request.contextPath }/static/img1/cib2byh1.jpg" alt="兴业银行(企业)"><em class=""></em></p></li><li class="blanklist " onclick="bankCode('164a8f8d-e423-4445-830e-078cb4e0838c','CMBC2B','MSBC','33','BAOFOO','民生银行(企业)'); "><p>
                                <img src="${pageContext.request.contextPath }/static/img1/cmbc2byh1.jpg" alt="民生银行(企业)"><em class=""></em></p></li><li class="blanklist " onclick="bankCode('92a679a4-2a56-4cd2-bdeb-9e9f3626427c','ECITIC2B','CIBK','33','BAOFOO','中信银行(企业)'); "><p>
                                <img src="${pageContext.request.contextPath }/static/img1/ecitic2byh1.jpg" alt="中信银行(企业)"><em class=""></em></p></li><li class="blanklist last" onclick="bankCode('9845d25b-7be3-46db-b199-b9a33cd3a0cb','GDB2B','GDBK','33','BAOFOO','广发银行(企业)'); "><p>
                                <img src="${pageContext.request.contextPath }/static/img1/gdb2byh1.jpg" alt="广发银行(企业)"><em class=""></em></p></li><li class="blanklist " onclick="bankCode('ec5c238b-72cc-4994-a70b-7cb4d4faaf34','BBCB2B','BJCN','33','BAOFOO','北京银行(企业)'); "><p>
                                <img src="${pageContext.request.contextPath }/static/img1/bbcb2byh1.jpg" alt="北京银行(企业)"><em class=""></em></p></li><li class="blanklist " onclick="bankCode('19910119-2a1d-441a-b92e-a9f182fe13c4','PNYH2B','SZDB','33','BAOFOO','平安银行（企业）'); "><p>
                                <img src="${pageContext.request.contextPath }/static/img1/pn2byh1.jpg" alt="平安银行（企业）"><em class=""></em></p></li>   <li class="up"><span>收起<i class="arrow arrow-up"></i></span> </li>
                                </ul>
                            </div>

                            <div class="re-tab-content two-pay  hide" id="twopay">
                                <input id="KJsel" value="32" type="hidden">
                                <input id="hd_bankcode" value="BKCH" type="hidden">
                                <ul id="rechargeBankCode">
                                    <li class="blanklist">
                                        <p>
                                            <img src="${pageContext.request.contextPath }/static/img1/zgyh1.jpg" alt="">
                                            <span>2725</span>
                                        </p>
                                    </li>
                                </ul>
                                <div class="pay-intro">
                                    <p class="f12">充值限额：单笔限额<span>￥50000.00</span>、每日限额<span>￥500000.00</span>、每月限额<span>￥15000000.00</span></p>
                                    <p class="f12">需开通银联在线支付&nbsp;&nbsp;<a href="https://www.95516.com/portal/open/init.do?entry=open" target="_blank">开通&gt;&gt;</a></p>
                                </div>
                            </div>
                            <div class="re-tab-content three-pay hide" id="threepay">
                                <ul>
                                    <li class="">
                                        <p id="wxrecharge">
                                            <img src="${pageContext.request.contextPath }/static/img1/wechat-pay.jpg" alt="">
                                            <em class=""></em>
                                        </p>
                                    </li>
                                    <li class="">
                                        <p id="paytenpay">
                                            <img src="${pageContext.request.contextPath }/static/img1/tenpay.jpg" alt="">
                                            <em class=""></em>
                                        </p>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="borrower-inf" style="height: 400px; overflow-y: scroll; display:none;">
                            <table>
                                <tbody><tr>
                                    <th style="width: 380px;">用户编号
                                    </th>
                                    <th style="width: 220px;">转账金额
                                    </th>
                                </tr>
                            </tbody></table>
                        </div>
                        <div class="pay-input-box">
                            <div class="inputgroup">
                                <label for="">充值金额</label>
                                <input class="text-input" placeholder="输入充值金额" value="100" id="money" min="100" step="50" type="number">
                                <span id="spnRechargeAmountBig" style="margin-left: 20px;"></span>
                                <span class="ml10">最低充值金额100元</span>
                                <div class="error-mes tip" id="tip"></div>
                            </div>
                            <div class="btn">
                                <a class="td-btn-1 td-btn-1-or f16" style="cursor: pointer;"  id="submit" href="javascript:viod(0)">充值</a>
                            </div>
                        </div>
                        <!--TODO 限额提示-->
                        <div id="eBankPayLimitDiv" style="display: none;">
                            <div style="margin-top: 30px;margin-bottom: 10px;width: 121px;height: 24px;font-size: 20px;color: black;">
                                <p><span id="selBankName">中国工商银行</span></p>
                            </div>
                            <table id="eBankPayLimitTable" style="border-collapse: collapse;color:#333333;text-align: center;solid-color:#dcdcdc;" cellspacing="0" cellpadding="0" bordercolor="#a9a9a9" border="1">
                                <tbody><tr>
                                    <td width="262" height="30" bgcolor="#dcdcdc">网银类型</td>
                                    <td width="262" height="30" bgcolor="#dcdcdc">单笔限额（元）</td>
                                    <td width="262" height="30" bgcolor="#dcdcdc">单日限额（元）</td>
                                </tr>
                            <tr name="ICBC"><td width="262" height="30">e支付</td><td width="262" height="30">1万</td><td width="262" height="30">1万</td></tr><tr name="ICBC"><td width="262" height="30">网银支付</td><td width="262" height="30">200万</td><td width="262" height="30">300万</td></tr></tbody></table>
                            <!--<table border="0" cellspacing="0" cellpadding="cellpadding" style="border-collapse: collapse;">
                                <tr>
                                    <td width="20%">卡种</td>
                                    <td width="40%">银行</td>
                                    <td width="20%">单笔限额（元）</td>
                                    <td width="20%">每日限额（元）</td>
                                </tr>
                                <tr>
                                    <td rowspan="8">借记卡</td>
                                    <td>交通、中信、平安、浦发</td>
                                    <td>5万</td>
                                    <td>5万</td>
                                </tr>
                                <tr>
                                    <td>工商</td>
                                    <td>1万</td>
                                    <td>5万</td>
                                </tr>
                                <tr>
                                    <td>光大</td>
                                    <td>4万</td>
                                    <td>4万</td>
                                </tr>
                                <tr>
                                    <td>广发、招商</td>
                                    <td>3万</td>
                                    <td>3万</td>
                                </tr>
                                <tr>
                                    <td>民生</td>
                                    <td>2万</td>
                                    <td>2万</td>
                                </tr>
                                <tr>
                                    <td>建设、中国、华夏</td>
                                    <td>1万</td>
                                    <td>1万</td>
                                </tr>
                                <tr>
                                    <td>兴业</td>
                                    <td>5000</td>
                                    <td>1万</td>
                                </tr>
                                <tr>
                                    <td>邮储</td>
                                    <td>5000</td>
                                    <td>5000</td>
                                </tr>
                            </table>-->
                        </div>
                    </div>
                </div>
            </div>
            <div class="recharge_popup recharge_popup02 hidden" id="recharge_popup">
                <div class="popupTitle">交易提示
                    <a class="close_tcbtn" href="javascript:void(0);" onclick="closeTC();"></a>
                </div>
                <div class="popupNotice">
                    <p>请在新打开的窗口中完成充值</p>
                    付款完成前请不要关闭此窗口。<br> 完成付款后请根据您的情况点击下面的按钮：
                </div>
                <dl class="popupBtn">
                    <dd><a class="recharge_tcbtn recharge_tcbtn01" href="${pageContext.request.contextPath }/account_default.jsp">充值完成</a></dd>
                    <dd><a class="recharge_tcbtn recharge_tcbtn02" href="javascript:void(0);" onclick="closeTC();">继续充值</a></dd>
                </dl>
            </div>
            <style type="text/css">
                .promptbox {
                    padding-bottom: 20px;
                }

                .promptbox p {
                    line-height: 25px;
                    font-size: 14px;
                }
            </style>
            <div id="wxTip" class="dial-window dial-window-w3 z103">
                <div class="title rel">温馨提示<i class="close-x icon db abs"></i></div>
                <div class="body" style="padding-right: 30px;">
                    <div class="promptbox">
                        <p>为了给您带来更好的支付体验，微信扫码充值将于06月30日15:00 - 6月30日18:00进行系统升级，期间请使用其他充值渠道，给您带来的不便，敬请谅解。</p>
                    </div>
                </div>
                <div>
                    <div class="btn-group" style="text-align: center">
                        <span class="td-btn-1 td-btn-1-or btnReg1 f18 handCursor" id="wxclock">我知道了</span>
                    </div>
                </div>
            </div>
            <div class="mask hidden"></div>
            <div id="diallayer" style="display: none;"></div>
            <div id="bankBindAlert" style="display: none; margin-left: -226px;" class="dial-window xm-window bankBindAlert">
                <div class="title rel">温馨提示：<i class="close-x cgt-close-x icon db abs"></i></div>
                <div class="body">
                    <div class="" style="text-align:center;">
                        <p class="p1">请您在新打开的页面完成充值</p>
                        <p class="p2">充值完成前请不要关闭此窗口，根据完成结果，选择下面的操作</p>
                    </div>
                </div>
                <div class="bottom">
                    <div class="btn-group" style="padding-bottom:0">
                        <a href="https://www.tuandai.com/pages/weplan/welist.aspx" class="btn">充值成功，马上投资</a>
                    </div>
                    <a class="question" href="javascript:void(0);" target="_blank">充值遇到问题</a>
                </div>
            </div>
            <input name="ctl00$ctl00$ctl00$baseBody$body$body$hd_sign" id="baseBody_body_body_hd_sign" value="0" type="hidden">
            <input name="ctl00$ctl00$ctl00$baseBody$body$body$hd_url" id="baseBody_body_body_hd_url" type="hidden">
        
        <div id="dahei" style="display: none; height: 633px;"></div>
        <div id="tooltip" class="tooltip"></div>
    </div></form>


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
                    1、添加专属服务<a id="a_qq" target="_blank" href="http://wpa.qq.com/msgrd?v=3&amp;uin=2880323207&amp;site=qq&amp;menu=yes">2880323207</a>为好友。<br>
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
                <a class="td-btn-1 td-btn-1-or btn" href="${pageContext.request.contextPath }/Validat_eindex.jsp">我要修改预留手机号</a>
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

        <!-- 提示弹出窗口 -->
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

        <script type="text/javascript" src="${pageContext.request.contextPath }/js/js1/jquery-1.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath }/js/js1/jquery.js"></script>
        <!--引用Jquery-->
        <script src="${pageContext.request.contextPath }/js/js1/thirdlib.js"></script>
        <script src="${pageContext.request.contextPath }/js/js1/public.js"></script>
        <script src="${pageContext.request.contextPath }/js/js1/common_002.js"></script>
        <!--<script src="//js2.tdw.cn/scripts/pager.js?v=2017070301"></script>-->
        <script src="${pageContext.request.contextPath }/js/js1/settuandaicookie.js"></script>

       
    
    <script src="${pageContext.request.contextPath }/js/js1/userbank.js"></script>
    <script src="${pageContext.request.contextPath }/js/js1/common.js"></script>
    <script src="${pageContext.request.contextPath }/js/js1/account.js"></script>
    <script charset="GB2312" type="text/javascript" src="${pageContext.request.contextPath }/js/js1/cgt_common.js"></script>
    <script>
    /* <![CDATA[ */
    	var Id =  "2B8449A2";
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
                        url: "${pageContext.request.contextPath }\/jsp\/member\/CompleteBank.jsp?ReturnUrl=${pageContext.request.contextPath }\/jsp\/member\/drawmoney.aspx",
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
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/js1/cgt_common_002.js"></script>
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
        var hasBankNo = "2725"?"Yes":"no";
        var routeId = "512a4bad-d84a-456f-ba60-d2de976d977a"; //路由Id
        var Sel = 33; //充值标识
        var InsiderCode = "ICBC"; //内部编码
        var OutCode = "ICBK"; //外部编码
        var kjpaychannel = 32; //快捷支付渠道
        var kjrouteid ="1093eeb3-b17c-4d29-b74d-18296e41fc60" ; //快捷路由ID
        var kjcgtpaycompany ="BAOFOO" ;//快捷对应的支付公司
        var cgtPayCompany = "BAOFOO";
        var bankName = "\u4E2D\u56FD\u5DE5\u5546\u94F6\u884C";
        $("#selBankName").html(bankName);
        getEBankPayLimit(Sel,InsiderCode);

        var fileId = 'baseBody_body_body_hd_url';
        var signId = 'baseBody_body_body_hd_sign';
        var apiUrl = 'http://jtp.tuandai.com/';
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
        var bankList =  [{"cgtPayCompay":"BAOFOO","routeId":"512a4bad-d84a-456f-ba60-d2de976d977a","insiderCode":"ICBC","outcode":"ICBK","channelId":24,"channelName":"\u5B9D\u4ED8\u652F\u4ED8\u3010\u7F51\u5173\u3001\u5B58\u7BA1\u3011","dayLimit":null,"singleLimit":null,"logoUrl":"\/\/js.tuandai.com\/images\/member\/Bank\/zfly\/gsyh1.jpg","sel":33,"bankName":"\u4E2D\u56FD\u5DE5\u5546\u94F6\u884C"},{"cgtPayCompay":"BAOFOO","routeId":"79b75dc4-8f4a-4bd3-bda5-fc035ae406fe","insiderCode":"CCB","outcode":"PCBC","channelId":24,"channelName":"\u5B9D\u4ED8\u652F\u4ED8\u3010\u7F51\u5173\u3001\u5B58\u7BA1\u3011","dayLimit":null,"singleLimit":null,"logoUrl":"\/\/js.tuandai.com\/images\/member\/Bank\/zfly\/jsyh1.jpg","sel":33,"bankName":"\u4E2D\u56FD\u5EFA\u8BBE\u94F6\u884C"},{"cgtPayCompay":"UMPAY","routeId":"6a643705-bef0-47e9-b20f-d75133d367c2","insiderCode":"BOC","outcode":"BKCH","channelId":22,"channelName":"\u8054\u52A8\u4F18\u52BF\u3010\u7F51\u5173\u3001\u5B58\u7BA1\u3011","dayLimit":null,"singleLimit":null,"logoUrl":"\/\/js.tuandai.com\/images\/member\/Bank\/zfly\/zgyh1.jpg","sel":31,"bankName":"\u4E2D\u56FD\u94F6\u884C"},{"cgtPayCompay":"UMPAY","routeId":"c1b9d077-c1bf-49c7-b4c5-229b992b64d3","insiderCode":"ABC","outcode":"ABOC","channelId":22,"channelName":"\u8054\u52A8\u4F18\u52BF\u3010\u7F51\u5173\u3001\u5B58\u7BA1\u3011","dayLimit":null,"singleLimit":null,"logoUrl":"\/\/js.tuandai.com\/images\/member\/Bank\/zfly\/nyyh1.jpg","sel":31,"bankName":"\u4E2D\u56FD\u519C\u4E1A\u94F6\u884C"},{"cgtPayCompay":"BAOFOO","routeId":"0d0de831-dc4a-46c5-ad78-ddde8fafcce5","insiderCode":"CMBCHINA","outcode":"CMBC","channelId":24,"channelName":"\u5B9D\u4ED8\u652F\u4ED8\u3010\u7F51\u5173\u3001\u5B58\u7BA1\u3011","dayLimit":null,"singleLimit":null,"logoUrl":"\/\/js.tuandai.com\/images\/member\/Bank\/zfly\/zsyh1.jpg","sel":33,"bankName":"\u62DB\u5546\u94F6\u884C"},{"cgtPayCompay":"UCFPAY","routeId":"81d06a7a-6fad-4f54-a711-7e5a79ff7b13","insiderCode":"BOCO","outcode":"COMM","channelId":21,"channelName":"\u5148\u950B\u652F\u4ED8\u3010\u7F51\u5173\u3001\u5B58\u7BA1\u3011","dayLimit":null,"singleLimit":null,"logoUrl":"\/\/js.tuandai.com\/images\/member\/Bank\/zfly\/jtyh1.jpg","sel":30,"bankName":"\u4E2D\u56FD\u4EA4\u901A\u94F6\u884C"},{"cgtPayCompay":"BAOFOO","routeId":"b23500ff-90a3-44e4-92de-a1321a9105cf","insiderCode":"GDB","outcode":"GDBK","channelId":24,"channelName":"\u5B9D\u4ED8\u652F\u4ED8\u3010\u7F51\u5173\u3001\u5B58\u7BA1\u3011","dayLimit":null,"singleLimit":null,"logoUrl":"\/\/js.tuandai.com\/images\/member\/Bank\/zfly\/gfyh1.jpg","sel":33,"bankName":"\u5E7F\u4E1C\u53D1\u5C55\u94F6\u884C"},{"cgtPayCompay":"BAOFOO","routeId":"6fb6ed5c-2c07-4aa6-9c54-161a3202ff8e","insiderCode":"CEB","outcode":"EVER","channelId":24,"channelName":"\u5B9D\u4ED8\u652F\u4ED8\u3010\u7F51\u5173\u3001\u5B58\u7BA1\u3011","dayLimit":null,"singleLimit":null,"logoUrl":"\/\/js.tuandai.com\/images\/member\/Bank\/zfly\/gdyh1.jpg","sel":33,"bankName":"\u5149\u5927\u94F6\u884C"},{"cgtPayCompay":"BAOFOO","routeId":"64e236c9-c10e-4506-bb9a-022e9996a7ae","insiderCode":"ECITIC","outcode":"CIBK","channelId":24,"channelName":"\u5B9D\u4ED8\u652F\u4ED8\u3010\u7F51\u5173\u3001\u5B58\u7BA1\u3011","dayLimit":null,"singleLimit":null,"logoUrl":"\/\/js.tuandai.com\/images\/member\/Bank\/zfly\/zxyh1.jpg","sel":33,"bankName":"\u4E2D\u4FE1\u94F6\u884C"},{"cgtPayCompay":"UMPAY","routeId":"24c7680d-b602-4653-b414-6eae3c4ef935","insiderCode":"CMBC","outcode":"MSBC","channelId":22,"channelName":"\u8054\u52A8\u4F18\u52BF\u3010\u7F51\u5173\u3001\u5B58\u7BA1\u3011","dayLimit":null,"singleLimit":null,"logoUrl":"\/\/js.tuandai.com\/images\/member\/Bank\/zfly\/msyh1.jpg","sel":31,"bankName":"\u6C11\u751F\u94F6\u884C"},{"cgtPayCompay":"BAOFOO","routeId":"ae593436-34a4-44b1-a571-4edfb4e332b0","insiderCode":"POST","outcode":"PSBC","channelId":24,"channelName":"\u5B9D\u4ED8\u652F\u4ED8\u3010\u7F51\u5173\u3001\u5B58\u7BA1\u3011","dayLimit":null,"singleLimit":null,"logoUrl":"\/\/js.tuandai.com\/images\/member\/Bank\/zfly\/postgcyh1.jpg","sel":33,"bankName":"\u90AE\u50A8\u94F6\u884C"},{"cgtPayCompay":"BAOFOO","routeId":"c13440d3-0343-4335-b0e7-550788e6135a","insiderCode":"CIB","outcode":"FJIB","channelId":24,"channelName":"\u5B9D\u4ED8\u652F\u4ED8\u3010\u7F51\u5173\u3001\u5B58\u7BA1\u3011","dayLimit":null,"singleLimit":null,"logoUrl":"\/\/js.tuandai.com\/images\/member\/Bank\/zfly\/xyyh1.jpg","sel":33,"bankName":"\u5174\u4E1A\u94F6\u884C"},{"cgtPayCompay":"BAOFOO","routeId":"947bb269-6bd4-47de-bf3e-5bfdc4b2932c","insiderCode":"PINGAN","outcode":"SZDB","channelId":24,"channelName":"\u5B9D\u4ED8\u652F\u4ED8\u3010\u7F51\u5173\u3001\u5B58\u7BA1\u3011","dayLimit":null,"singleLimit":null,"logoUrl":"\/\/js.tuandai.com\/images\/member\/Bank\/zfly\/pnyh1.jpg","sel":33,"bankName":"\u5E73\u5B89\u94F6\u884C"},{"cgtPayCompay":"BAOFOO","routeId":"415c875a-5309-44c2-bc8f-fee927acdedb","insiderCode":"BCCB","outcode":"BJCN","channelId":24,"channelName":"\u5B9D\u4ED8\u652F\u4ED8\u3010\u7F51\u5173\u3001\u5B58\u7BA1\u3011","dayLimit":null,"singleLimit":null,"logoUrl":"\/\/js.tuandai.com\/images\/member\/Bank\/zfly\/bjyh1.jpg","sel":33,"bankName":"\u5317\u4EAC\u94F6\u884C"},{"cgtPayCompay":"BAOFOO","routeId":"c796cbef-d27e-431d-9fb4-bd8b869db43e","insiderCode":"HXYH","outcode":"HXBK","channelId":24,"channelName":"\u5B9D\u4ED8\u652F\u4ED8\u3010\u7F51\u5173\u3001\u5B58\u7BA1\u3011","dayLimit":null,"singleLimit":null,"logoUrl":"\/\/js.tuandai.com\/images\/member\/Bank\/zfly\/hxyh1.jpg","sel":33,"bankName":"\u534E\u590F\u94F6\u884C"},{"cgtPayCompay":"BAOFOO","routeId":"ffecca5c-becb-41fc-a31c-4572ac0b1cbe","insiderCode":"ICBC2B","outcode":"ICBK","channelId":24,"channelName":"\u5B9D\u4ED8\u652F\u4ED8\u3010\u7F51\u5173\u3001\u5B58\u7BA1\u3011","dayLimit":null,"singleLimit":null,"logoUrl":"\/\/js.tuandai.com\/images\/member\/Bank\/zfly\/icbcb2byh1.jpg","sel":33,"bankName":"\u5DE5\u5546\u94F6\u884C(\u4F01\u4E1A)"},{"cgtPayCompay":"BAOFOO","routeId":"8e27e011-7345-4e77-8f1e-73e893b23a3e","insiderCode":"CCB2B","outcode":"PCBC","channelId":24,"channelName":"\u5B9D\u4ED8\u652F\u4ED8\u3010\u7F51\u5173\u3001\u5B58\u7BA1\u3011","dayLimit":null,"singleLimit":null,"logoUrl":"\/\/js.tuandai.com\/images\/member\/Bank\/zfly\/ccbb2byh1.jpg","sel":33,"bankName":"\u5EFA\u8BBE\u94F6\u884C(\u4F01\u4E1A)"},{"cgtPayCompay":"BAOFOO","routeId":"0be611aa-827a-4a8d-89bd-5f3594a1e16a","insiderCode":"ABC2B","outcode":"ABOC","channelId":24,"channelName":"\u5B9D\u4ED8\u652F\u4ED8\u3010\u7F51\u5173\u3001\u5B58\u7BA1\u3011","dayLimit":null,"singleLimit":null,"logoUrl":"\/\/js.tuandai.com\/images\/member\/Bank\/zfly\/abcb2byh1.jpg","sel":33,"bankName":"\u519C\u4E1A\u94F6\u884C(\u4F01\u4E1A)"},{"cgtPayCompay":"BAOFOO","routeId":"e7ac57ac-241a-41a5-a01d-51c4b0252611","insiderCode":"BOC2B","outcode":"BKCH","channelId":24,"channelName":"\u5B9D\u4ED8\u652F\u4ED8\u3010\u7F51\u5173\u3001\u5B58\u7BA1\u3011","dayLimit":null,"singleLimit":null,"logoUrl":"\/\/js.tuandai.com\/images\/member\/Bank\/zfly\/boc2byh1.jpg","sel":33,"bankName":"\u4E2D\u56FD\u94F6\u884C(\u4F01\u4E1A)"},{"cgtPayCompay":"BAOFOO","routeId":"7b67f370-9d3b-42ff-aa4d-031e3233858c","insiderCode":"CMBCHINA2B","outcode":"CMBC","channelId":24,"channelName":"\u5B9D\u4ED8\u652F\u4ED8\u3010\u7F51\u5173\u3001\u5B58\u7BA1\u3011","dayLimit":null,"singleLimit":null,"logoUrl":"\/\/js.tuandai.com\/images\/member\/Bank\/zfly\/cmbb2byh1.jpg","sel":33,"bankName":"\u62DB\u5546\u94F6\u884C(\u4F01\u4E1A)"},{"cgtPayCompay":"BAOFOO","routeId":"f685f7a9-615d-410d-84dc-8351ccc36001","insiderCode":"CIB2B","outcode":"FJIB","channelId":24,"channelName":"\u5B9D\u4ED8\u652F\u4ED8\u3010\u7F51\u5173\u3001\u5B58\u7BA1\u3011","dayLimit":null,"singleLimit":null,"logoUrl":"\/\/js.tuandai.com\/images\/member\/Bank\/zfly\/cib2byh1.jpg","sel":33,"bankName":"\u5174\u4E1A\u94F6\u884C(\u4F01\u4E1A)"},{"cgtPayCompay":"BAOFOO","routeId":"164a8f8d-e423-4445-830e-078cb4e0838c","insiderCode":"CMBC2B","outcode":"MSBC","channelId":24,"channelName":"\u5B9D\u4ED8\u652F\u4ED8\u3010\u7F51\u5173\u3001\u5B58\u7BA1\u3011","dayLimit":null,"singleLimit":null,"logoUrl":"\/\/js.tuandai.com\/images\/member\/Bank\/zfly\/cmbc2byh1.jpg","sel":33,"bankName":"\u6C11\u751F\u94F6\u884C(\u4F01\u4E1A)"},{"cgtPayCompay":"BAOFOO","routeId":"92a679a4-2a56-4cd2-bdeb-9e9f3626427c","insiderCode":"ECITIC2B","outcode":"CIBK","channelId":24,"channelName":"\u5B9D\u4ED8\u652F\u4ED8\u3010\u7F51\u5173\u3001\u5B58\u7BA1\u3011","dayLimit":null,"singleLimit":null,"logoUrl":"\/\/js.tuandai.com\/images\/member\/Bank\/zfly\/ecitic2byh1.jpg","sel":33,"bankName":"\u4E2D\u4FE1\u94F6\u884C(\u4F01\u4E1A)"},{"cgtPayCompay":"BAOFOO","routeId":"9845d25b-7be3-46db-b199-b9a33cd3a0cb","insiderCode":"GDB2B","outcode":"GDBK","channelId":24,"channelName":"\u5B9D\u4ED8\u652F\u4ED8\u3010\u7F51\u5173\u3001\u5B58\u7BA1\u3011","dayLimit":null,"singleLimit":null,"logoUrl":"\/\/js.tuandai.com\/images\/member\/Bank\/zfly\/gdb2byh1.jpg","sel":33,"bankName":"\u5E7F\u53D1\u94F6\u884C(\u4F01\u4E1A)"},{"cgtPayCompay":"BAOFOO","routeId":"ec5c238b-72cc-4994-a70b-7cb4d4faaf34","insiderCode":"BBCB2B","outcode":"BJCN","channelId":24,"channelName":"\u5B9D\u4ED8\u652F\u4ED8\u3010\u7F51\u5173\u3001\u5B58\u7BA1\u3011","dayLimit":null,"singleLimit":null,"logoUrl":"\/\/js.tuandai.com\/images\/member\/Bank\/zfly\/bbcb2byh1.jpg","sel":33,"bankName":"\u5317\u4EAC\u94F6\u884C(\u4F01\u4E1A)"},{"cgtPayCompay":"BAOFOO","routeId":"19910119-2a1d-441a-b92e-a9f182fe13c4","insiderCode":"PNYH2B","outcode":"SZDB","channelId":24,"channelName":"\u5B9D\u4ED8\u652F\u4ED8\u3010\u7F51\u5173\u3001\u5B58\u7BA1\u3011","dayLimit":null,"singleLimit":null,"logoUrl":"\/\/js.tuandai.com\/images\/member\/Bank\/zfly\/pn2byh1.jpg","sel":33,"bankName":"\u5E73\u5B89\u94F6\u884C\uFF08\u4F01\u4E1A\uFF09"}];
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
        PassportWebUrl = "\/\/passport.tuandai.com\/lgck";

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

<img style="display: none;" src="%E5%9B%A2%E8%B4%B7%E7%BD%91%20-%20%E7%BB%BC%E5%90%88%E9%87%91%E8%9E%8D%E6%9C%8D%E5%8A%A1%E5%B9%B3%E5%8F%B0,%E8%AE%A9%E9%87%91%E8%9E%8D%E6%9B%B4%E7%AE%80%E5%8D%95%EF%BC%81_files/SingleLogin.ashx"><div style="display: none; position: absolute;" class=""><div class="aui_outer"><table class="aui_border"><tbody><tr><td class="aui_nw"></td><td class="aui_n"></td><td class="aui_ne"></td></tr><tr><td class="aui_w"></td><td class="aui_c"><div class="aui_inner"><table class="aui_dialog"><tbody><tr><td colspan="2" class="aui_header"><div class="aui_titleBar"><div class="aui_title" style="cursor: move;"></div><a class="aui_close" href="javascript:void(0);">×</a></div></td></tr><tr><td class="aui_icon" style="display: none;"><div class="aui_iconBg" style="background: rgba(0, 0, 0, 0) none repeat scroll 0% 0%;"></div></td><td class="aui_main" style="width: 300px; height: 80px;"><div class="aui_content" style=""></div></td></tr><tr><td colspan="2" class="aui_footer"><div class="aui_buttons" style="display: none;"></div></td></tr></tbody></table></div></td><td class="aui_e"></td></tr><tr><td class="aui_sw"></td><td class="aui_s"></td><td class="aui_se" style="cursor: se-resize;"></td></tr></tbody></table></div></div></body></html>