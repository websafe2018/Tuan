<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3" class="hb-loaded"><head>
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
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/css1/public.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/css1/xiamen-bank.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/css1/cgt.css">

    <script type="text/javascript" src="${pageContext.request.contextPath }/js/homepage/jquery-1.8.3.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/homepage/account_default.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/css1/new.css">
    <script type="text/javascript" async="" src="${pageContext.request.contextPath }/js/js1/webaccess.js"></script><script src="${pageContext.request.contextPath }/js/js/hm.js"></script>
   
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
    
    <style>
        .dial-win.zhlc{z-index: 10000001!important;}
        .dial-win.zhlc .dial{background: none;}
        .system-update{  width: 462px; height: 367px; background: url("//js2.tdw.cn/images/member/zhlc.png") -9px 0 no-repeat; }
        .system-update .btn{width: 256px; display: block; height: 40px;  color: #fff; line-height: 40px; font-size: 16px; text-align: center; margin: 20px auto 0; background: url("//js2.tdw.cn/images/member/zhlc.png") -2px -367px no-repeat; }
        .system-update .btn:hover{background:url("//js2.tdw.cn/images/member/zhlc.png") -260px -367px }
        .system-update .title{color: #ffa019; font-size: 24px; line-height: 26px; padding-top: 140px;}
        .system-update .details{ width: 352px; line-height: 24px; margin: 0 auto; color: #333; margin-top: 10px;}
        .system-update .link{color: #ffa019; margin-left: 52px; margin-top: 8px; display:inline-block;  *display:inline;}
    </style>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/css1/shouye.css">
       
</head>
<body>
   <div class="header">
        <!-- top bar STAR -->
        <div class="t-b  t-b-w lh40 bgff f12 fst cl">
            <div class="w1200 h40 auto g6">
                <div class="right-side  r inline-block-debug">
                    <div class="inline-block-debug c-poi-a" id=""><span class="reg" style="color:#303030">欢迎您，</span><a href="#"  class="reg">${myBody.b_nickname }</a><span>|</span><a href="javascript:logout();">退出</a><span>|</span></div>
                    <a rel="nofollow" href="http://info.tdw.cn/help/index.html" target="_blank">帮助中心</a><span>|</span>
                    <a href="#" target="_blank">社区</a><span>|</span>
                    
                   
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
        <div class="nav-w bgfff">
            <div class="nav-box auto w1200 fix">
                <div class="r rel tc  slid z3">
                    <dl class="abs i-b-d vt about-us r0" id="">
                    <%-- <dt>
                    <a href="${pageContext.request.contextPath }/jsp/member/account_default.jsp">
                    <i class="account-icon i-b-d icon vm"></i>我的账户<i class="icon arrow i-b-d vm"></i>
                    </a>
                    </dt> --%>
                    <dd><a href="${pageContext.request.contextPath }/jsp/member/RechargeNew2016.jsp">立即充值</a></dd>
                    <dd><a href="${pageContext.request.contextPath }/jsp/member/account_moneylist.jsp">资金统计</a></dd>
                    <dd><a href="${pageContext.request.contextPath }/jsp/member/account_weFTBAll.jsp">智能理财</a></dd>
                    <dd><a href="${pageContext.request.contextPath }/jsp/member/account_loaninbid.jsp">散标投资</a></dd>
                    <dd><a href="${pageContext.request.contextPath }/jsp/member/account_loanReturnPlanList.jsp">回款计划</a></dd>
                    <dd><a href="${pageContext.request.contextPath }/jsp/member/AutoTenderList.jsp">自动投标</a></dd>
                    <dd><a href="${pageContext.request.contextPath }/jsp/member/account_borrowReturnPlanList.jsp">还款安排</a></dd>
                    <dd><a href="${pageContext.request.contextPath }/jsp/member/account_borrowInBid2.jsp">借款记录</a></dd>
                    <dd><a href="javascript:logout();">退出</a></dd></dl>
                </div>
                <div class="nav r">
                    <ul>
                        <li class="nav-t">
                            <a href="${pageContext.request.contextPath }/jsp/homepage/investmenthome.jsp">首页</a>
                        </li>
						<li class="nav-t ">
                            <a href="${pageContext.request.contextPath }/lntellgent">网贷</a>
					</li>  
                       
                       
<li class="nav-t ">
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
<a href="${pageContext.request.contextPath }/loadMoney">借款</a>
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
                    <div>
                            <div class="home border-bottom-0">
                                <p><i class="dt-1"></i><a href="${pageContext.request.contextPath }/jsp/member/account_default.jsp">账户首页</a></p>
                            </div>

                            <dl>
                                <dt><i class="dt-2"></i>我的资金 <i class="arrow"></i></dt>
                                
                                <dd id=""><a href="${pageContext.request.contextPath }/jsp/member/account_moneylist.jsp">资金统计</a></dd>
                                <dd id=""><a href="${pageContext.request.contextPath }/jsp/member/account_moneyhistory.jsp">交易记录</a></dd>                               
                                <dd id=""><a href="${pageContext.request.contextPath }/jsp/member/RechargeNew2016.jsp">充值</a></dd>
                                <dd id=""><a href="${pageContext.request.contextPath }/jsp/member/drawmoney.jsp">提现</a></dd>
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
                                <dd id=""><a href="${pageContext.request.contextPath }/propertyQu">资产标区</a></dd>
                                <dd id=""><a href="${pageContext.request.contextPath }/jsp/member/account_borrowInBid2.jsp">借款记录</a></dd>
                                <dd id=""><a href="${pageContext.request.contextPath }/jsp/member/account_borrowReturnPlanList.jsp">还款安排</a></dd>
                            </dl>
                            </div>
                    </div>
                    <div>
                    <dl>
                        <dt><i class="dt-5"></i>个人设置<i class="arrow"></i></dt>
                        <dd id=""><a href="${pageContext.request.contextPath }/jsp/member/account_userdetailinfo.jsp">基本信息 </a></dd>
                        <dd id=""><a href="${pageContext.request.contextPath }/Validat_eindex.html">安全中心</a></dd>
                        <dd id=""><a href="#">团贷会员</a></dd>
                        <dd id=""><a href="${pageContext.request.contextPath }/jsp/member/account_notice.jsp">消息中心</a></dd>
                    </dl>  
                    </div>
               </div>
            </div>
    <div class="account-rightBox clearfloat">
        <div class="box-padding">
            <div class="information">
                <div class="upper_part">
                    <div class="touxiangtu">
                        <a href="https://www.tdw.cn/member/account_useravatar.aspx">
                            <%-- <img src="${pageContext.request.contextPath }/static/img1/default.jpg" alt="" style="width: 100px; height: 100px;" onerror="this.src='//js2.tdw.cn/images/member/index/default.jpg';"> --%>
                            <c:choose>
                            	<c:when test="${empty BasicinfoheadPic}">
                            	<%-- <img src="${pageContext.request.contextPath }/static/img5/bav_head.png" style="position: absolute; width: 100px; height: 100px; top: 26px; left: 24px;" > --%>
                            	<img src="${pageContext.request.contextPath }/static/img5/bav_head.png" alt="" style="width: 100px; height: 100px;" onerror="this.src='//js2.tdw.cn/images/member/index/default.jpg';">
                            	</c:when>
                            	<c:otherwise>
                            	<img src="${BasicinfoheadPic}" style="position: absolute; width: 100px; height: 100px; top: 26px; left: 24px;" >
                            	</c:otherwise>
                            </c:choose>
                        </a>
                    </div>
                    <div class="upper_right" style="padding-top: 14px;">
                        <div class="ask_hou">
                            <a href="https://hd.tuandai.com/web/20150825/index.aspx" target="_blank" style="text-decoration: none; float: right; color: red; font-size: 14px; display: none;">
                                <img style="vertical-align: -6px;" src="${pageContext.request.contextPath }/static/img1/sign.gif">玩转智能理财，100%中奖哦！</a>
                            <div class="font-16">
                                <span id="text1"></span>
                                <span>${myBody.b_nickname }</span> 
                   <span id="text2"></span>
                                
                            </div>
                        </div>
                        <div class="level" style="padding-top: 28px;">
                            <ul>
                                <span class="font-14">帐号安全：</span>
                                <li class="no5 font-14">
                                    <a href="${pageContext.request.contextPath }/Validat_eindex.jsp"><i class="i1" title="实名认证"></i></a>
                                    
                                    <a href="${pageContext.request.contextPath }/Validat_eindex.jsp"><i class="i2" title="邮件认证"></i></a>
                                    
                                    <a href="${pageContext.request.contextPath }/Validat_eindex.jsp"><i class="i3" title="安全问题设置"></i></a>
                                    
                                    <a href="${pageContext.request.contextPath }/Validat_eindex.jsp"><i class="i4" title="银行卡绑定"></i></a>
                                </li>
                                <li class="font-14 lv no6">会员等级：
                                    <span id="userLevelLogo"><a class="myvip-link" href="http://vip.tuandai.com/mymember.aspx" target="_blank"><i class="i1" id="userLevelLogo"></i></a>
                                        <a href="${pageContext.request.contextPath }/account_touplevel.jsp" id="loginLevelImage">
                                            
                                            <img src="${pageContext.request.contextPath }/static/img1/vip2.png" alt="">
                                        </a>
                                    </span>
                                </li>
                                <li class="font-14 no4">注册时间：${myBody.u_registerTime}</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="account-data pl10">
                    <div class="amout_right">
                        <div>
                            <a href="javascript:void(0);" id="btn_recharge" class="top_up l" style="margin-right: 10px;margin-top: 10px;">充值</a>
                            <a href="javascript:void(0);" id="btn_withdraw" class="withdrawal gar l" onclick="return CheckAllowDraw();" style="margin-right: 10px;margin-top: 10px;">提现</a>
                        </div>
                    </div>
                    <div class="dib" style="margin: 10px">
                        <p class="g9 pb10 w310">总资产</p>
                        <p class="f30 g-orange2"><c:out value="${allMoney }" default="0.00"></c:out>&nbsp;<span class="f14">元</span></p>
                    </div>
                    <div class="dib  " style="margin: 10px">
                        <p class="g9 pb10">总可用余额</p>
                        <p class="f30 g-orange2"> 
                       <c:out value="${myBody.a_acBalance }" default="0.00"></c:out>
                        <span class="f14">元</span></p>
                    </div>
                </div>
                <div class="amount cl fix">
                    <div class="amout_left" id="amout_left">
                        <ul class="cl fix">
                            <li class="w127"><i class="circle c-org"></i><a href="${pageContext.request.contextPath }/account_moneylist.jsp">P2P</a></li>
                            <li class="font-14 w223">账户总额￥
                             <c:out value="${allMoney}" default="0.00"></c:out></li> 
                            <li class="font-14 w223">待收本息￥
                            <c:out value="${aMoney}" default="0.00"></c:out>
                            </li>
                            <li class="font-14 w223">可用余额￥
                       			 <c:out value="${myBody.a_acBalance }" default="0.00"></c:out>
                         	</li>
                        
                            <li class="w127"><a href="${pageContext.request.contextPath }/jsp/member/account_loanReturnPlanList.jsp">回款计划(每月10日回款)</a></li>
                            <li class="font-14 w223">已回本息￥
                            	<c:out value="${backIncome}" default="0.00"></c:out>
                            </li>
                            <li class="font-14 w223">最近回款日期:${nextTime }
                            </li>
                            <li class="font-14 w223"><a href="${pageContext.request.contextPath }/jsp/member/account_loanReturnPlanList.jsp">更多回款计划</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="Classified margin-top-10">
            
            <iframe src="${pageContext.request.contextPath }/jsp/member/include.jsp" id="ymziframe" border="0" vspace="0" hspace="0" marginwidth="0" marginheight="0" framespacing="0" scrolling="no" width="100%" height="100%" frameborder="0"></iframe>
        </div>
        <div class="margin-top-10">
            <iframe src="${pageContext.request.contextPath }/jsp/member/account_default_profit.jsp" id="profitframe" border="0" vspace="0" hspace="0" marginwidth="0" marginheight="0" framespacing="0" scrolling="no" width="100%" height="510px" frameborder="0"></iframe>
        </div>
    </div>
    <div id="diallayer" style="display: none;"></div>
    <div class="members_beijing" style="display: none;"></div>
    <div class="members" style="display: none;"></div>
    <div class="members_welfare" style="display: none;">
        <a href="javascript:;" class="closed"></a>
        <p class="p1">1. 嘉奖=好友活动期间注册年化投资x5‰</p>
        <p class="p2">2. 7月1日起统一发放奖励</p>
        <p class="p3">3. 活动期间邀请同时享受其他4重福利</p>
        <a href="http://hd.tuandai.com/web/Invitation_3rd/index.aspx?tdsource=PCactivityCPP" class="mashang"></a>
    </div>
    <div class="beijing"></div>
    <div class="invitation_activities" style="display: none;">
        <i class="shut"></i>
        <p class="tit">邀请有礼专享活动</p>
        <p class="describe">亲爱的用户，恭喜您获得参与邀请有礼专享活动的机会。活动期间内，<span>每成功邀请1位好友且好友投资满足一定条件，即可获得除原有的邀请有礼奖励外，额外奖励您30元现金红包。</span>邀请越多，奖励越多！</p>
        <p class="rules">活动规则：</p>
        <p class="condi">1、活动时间 2016.8.24-2016.9.5</p>
        <p class="condi">2、成功邀请的好友在活动期间内，单笔投资1万元<span>3</span>个月及以上项目（不含债权转让）；</p>
        <p class="condi">3、好友符合条件后，红包于次日发送至邀请人团宝箱；</p>
        <p class="condi">4、现金红包领取有效期为10天，请获得红包后尽快登录团宝箱领取，逾期红包将失效。</p>
        <p class="parsing">本活动最终解释权归团贷网所有，活动期间如有任何作弊行为，团贷网将取消参与资格并回收所有奖励。</p>
    </div>
    <div id="baseBody_body_body_financial_bj" class="financial_bj" style="display: none;"></div>
    <div id="baseBody_body_body_financial" class="financial" style="display: none;">
        <i class="shut"></i>
        <p class="tit">温馨提示：</p>
        <p class="prompt" id="remindText"></p>
        <div class="tu">
            <img id="imgRed" src="${pageContext.request.contextPath }/static/img1/518redbad.png" alt="518新手红包">
            <img id="imgTYJ" src="${pageContext.request.contextPath }/static/img1/2888redbad.png" alt="2888理财金">
        </div>
        <a href="${pageContext.request.contextPath }/Mass_of_treasure_chest.jsp" class="look">马上看看</a>
    </div>
    <div id="setmask08" style="display: none;"></div>
    <div class="invate-alert" style="display: none;">
        <div class="closes"></div>
        <div class="invate-body">
            <div class="invate-title">
                <i></i><span style="padding-left: 6px;"></span>您好，恭喜您获得参与<span>邀请有礼</span>专享活动的特权！<br>
                <b>2016.11.11-11.22</b>
            </div>
            <div class="invate-detail" id="invate-detail_1" style="display: none;">
                <h3>活动详情</h3>
                <p>
                    1、活动期间您每邀请一位好友投资，好友单笔投资≥1月项目1万元及以上（不<br>
                    <span style="padding-left: 23px;"></span>含债权转让），即可额外获得50元投资红包，多邀多得。<br>
                    2、此项奖励与邀请有礼奖励同享。<br>
                    3、红包在符合条件后的次日发放至您的团宝箱，投资红包使用杠杆1:100，投<br>
                    <span style="padding-left: 23px;"></span>资1个月及以上项目（不含债权转让）；有效期为1个月，请尽快使用，过<br>
                    <span style="padding-left: 23px;"></span>期则失效。<br>
                </p><p style="margin-top: 10px;">本活动最终解释权归团贷网所有，如有任何作弊行为，团贷网将取消参与资格并回收所有奖励。</p>
                <p></p>
            </div>
            <div class="invate-detail" id="invate-detail_2" style="display: none;">
                <h3>活动详情</h3>
                <p>
                    1、活动期间您每邀请一位好友投资，好友单笔投资≥1月项目1万元及以上（不<br>
                    <span style="padding-left: 23px;"></span>含债权转让），即可额外获得25元现金红包，多邀多得。<br>
                    2、此项奖励与邀请有礼奖励同享。<br>
                    3、红包在符合条件后的次日发放至您的团宝箱，现金红包有效期为10天，请尽快领取，过期则失效。<br>
                </p><p style="margin-top: 10px;">本活动最终解释权归团贷网所有，如有任何作弊行为，团贷网将取消参与资格并回收所有奖励。</p>
                <p></p>
            </div>
        </div>
    </div>
    <div class="invate_img" style="display: none; cursor: pointer;"></div>

    <table id="vertical-center" class="dial-win zhlc " style="display: none" width="100%" height="100%">
        <tbody>
        <tr>
            <td>
                <div class="rel">
                    <div class="dial w530  z102 tl">

                        <div class=" body w470 auto">
                            <div class="system-update">
                                <div class="title tc ">团贷网升级为综合理财平台</div>
                                <div class="details">本司运营的“团贷网”综合理财平台已正式上线，您已成为“团贷网”的会员，享受“团贷网”平台为会员提供的相应服务，需要您同意以下协议，方可进行下一步操作。
                                </div>
                                <a href="" class="link">《团贷网网站注册服务协议》</a>
                                <a href="javascript:;" class="btn">知晓并同意</a>
                            </div>
                        </div>
                    </div>
                </div>
            </td>
        </tr>
        </tbody>
    </table>


        </form>
        <div id="dahei" style="display: none; height: 635px;"></div>
        <div id="tooltip" class="tooltip"></div>
    </div>
    <!-- 开通免密功能 -->
    <div style="display: none;" class="dial-window xm-window passwordAlt">
        <div class="title1 rel">温馨提示：<i class="close-x cgt-close-x icon db abs"></i></div>
        <div class="body">
            <div class="">
                <p class="p1">开启自动投标前，请您先进行以下授权：</p>
                <p class="p2" id="mm_toubiao"><em></em>自动投标<span>（适用于设置自动投标的用户）</span></p>
                <p class="p2" id="mm_zhaiquan"><em></em>自动购买收益权<span>（适用于购买WE计划的用户）</span></p>
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
                <p><span id="sp_open" style="display:none;">您尚未开通厦门银行资金存管账户，请先开通</span><span id="sp_active" style="">您的账号已升级为厦门银行资金存管账户，请您激活账户</span></p>
                <a href="https://www.tuandai.com/member/Bank/XM_BankBind.aspx" id="aOpen" class="btn">马上开通</a>
                <a href="javascript:void(0);" id="aActived" class="btn" style="display: none;">马上激活</a>
                <a href="https://www.tuandai.com/member/Bank/XM_BankBind_Complete.aspx" id="aBankBind" class="btn" style="display: none;">绑定银行卡</a>
        </div>
    </div>
    
    
    <!-- 温馨提示弹窗 -->
    <div id="bankBindAlert" style="display: none; margin-left: -212px;" class="dial-window xm-window bankBindAlert">
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
   
    <div id="gangaoAlert" style="display: none;" class="dial-window xm-window hongkong">
        <div class="title rel">温馨提示：<i class="close-x cgt-close-x icon db abs"></i></div>
        <div class="body">
            <div class="" style="text-align:center;">
                <p><b>由于您的证件为<span id="sp_cardTypeName">港澳通行证</span>，您还需完成以下操作才能进行正常理财：</b></p>
                <p>
                    1、添加专属服务<a id="a_qq" target="_blank" href="http://wpa.qq.com/msgrd?v=3&amp;uin=2880323191&amp;site=qq&amp;menu=yes">2880761023</a>为好友。<br>
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

        <script type="text/javascript" src="${pageContext.request.contextPath }/js/houtai/jquery-1.8.3.js"></script>
       <%--  <script type="text/javascript" src="${pageContext.request.contextPath }/static/js1/jquery.js"></script> --%>
        <!--引用Jquery-->
        <script src="${pageContext.request.contextPath }/js/js1/thirdlib.js"></script>
        <script src="${pageContext.request.contextPath }/js/js1/public.js"></script>
        <script src="${pageContext.request.contextPath }/js/js1/common_002.js"></script>
        <script src="${pageContext.request.contextPath }/js/js1/settuandaicookie.js"></script>

       
    
    <script src="${pageContext.request.contextPath }/js/js1/userbank.js"></script>
    <script src="${pageContext.request.contextPath }/js/js1/common.js"></script>
    <script src="${pageContext.request.contextPath }/js/js1/account.js"></script>
    <script charset="GB2312" type="text/javascript" src="${pageContext.request.contextPath }/js/js1/cgt_common.js"></script>
    <script>
    /* <![CDATA[ */
    	var Id =  "C2E065DE";
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

           /*  $("#menu_withdraw,#menu_borrowMiniEdit,#menu_recharge").click(function () {
                try {
                    if (IsOpenCGT == "1" && !checkIsOpen("chongzhi")) {
                        return false;
                    }
                }
                catch (e) {
                }
            });  */

            $("#menu_zxNewProject").click(function () {
                try {
                    if (IsOpenCGT == "1" && !checkIsOpen()) {
                        return false;
                    }
                }
                catch (e) {
                }
            });


           /*  $("#menu_borrowMiniEdit,#menu_autoTender,#menu_userservice").click(function () {
                try {
                    if (IsOpenCGT == "1" && !checkIsOpen())
                        return false;
                }
                catch (e) {
                }
            }); */
            

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

            if (window.location.href.indexOf("${pageContext.request.contextPath }/account") < 0) {
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
        var left_IsValidateIdentity = "false";
        var left_IsSetPayPwd = "false";
        var IsbindBankNo = "false";

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
    
    
    <!--<script src="//js2.tdw.cn/scripts/echarts/echarts.js"></script>-->
    <script src="${pageContext.request.contextPath }/js/js1/account_default.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath }/js/js1/VipInfo.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath }/js/js1/jquery_002.js" type="text/javascript"></script>

    <script>
        /*<![CDATA[*/
        function hideIframeMask(tag) {
            if (tag == 1) {
                $('#ymziloading').remove();
            } else {
                $("#profitloading").remove();
            }
        }

        var newTitle = '团贷网提醒您：';
        var IsValidateMobile = "True";
        var IsValidateIdentity = "False";
        var IsSetPayPwd = "False";
        var isClosedYellowTips = "0"; // 用户是否已经关闭过黄色标签
        var isEnterAutoInvestSetPage2 = "0";//是否进入自动投标设置
        var tip = new Array();
        var firstLogin = "1"; // "1";
        var cgtStatus =  "0";  //默认
        //tip.push("急周转，轻松借！资产标区借款期限≤1个月时免收管理费啦！<a style='color: rgb(0, 102, 255);' href='http://www.tuandai.com/pages/news/newsDetail.aspx?id=1143'>详情>></a>");

        if (false != true) {
            tip.push("您尚未进行实名认证，会影响您的投资，请<a href='/member/Validate/index.aspx' style='color:orange;'>立即设置</a>！");
        }
        if (false != true) {
            tip.push("您尚未进行邮件认证，会影响您的投资，请<a href='/member/Validate/index.aspx' style='color:orange;'>立即设置</a>！");
        }
        if (false != true) {
            tip.push("您尚未进行安全问题设置，会影响您的投资，请<a href='/member/Validate/index.aspx' style='color:orange;'>立即设置</a>！");
        }
        if (false != true) {
            tip.push("您尚未进行银行卡绑定，会影响您的投资，请<a href='/member/Validate/index.aspx' style='color:orange;'>立即设置</a>！");
        }

        $(window).ready(function () {
            var CGTShowKey = "CGTShowC2E065DE-D57F-4DCE-BE8D-49C467C2BC6320170923";
            var showShowQuanKey = "CGTSQC2E065DE-D57F-4DCE-BE8D-49C467C2BC6320170923";
            //var POPShowKey = "POPShow";

            var CGTShowValue = $.cookie(CGTShowKey);
            var CGTShow;
            var showShowQuan = $.cookie(showShowQuanKey);
            //var POPShow = $.cookie(POPShowKey);

            if(showShowQuan == null || showShowQuan == ""){
                showShowQuan = "1";
                $.cookie(showShowQuanKey,"1", { expires: 1 });
            }else{
                showShowQuan = "0";
            }

//            if(POPShow == null || POPShow == ""){
//                POPShow = "1";
//            }else{
//                POPShow = "0";

                if(CGTShowValue == null || CGTShowValue == ""){
                    CGTShow = "1";
                    CGTShowValue = "1";
                    $.cookie(CGTShowKey,"1", { expires: 1 });
                }else{
                    var count = Number(CGTShowValue);
                    if(count < 3) {
                        CGTShow = "1";
                        var nextCount = count + 1;
                        $.cookie(CGTShowKey,nextCount, { expires: 1 });
                    }else{
                        CGTShow = "0";
                    }
                }

//            }

            $("#ymziframe").attr("height", "100%");

            $("#profitframe").attr("height", "510px");
            setTimeout(function () { $('#ymziloading').remove(); $("#profitloading").remove(); }, 2500);
//            if(POPShow == "1"){
//                $("#vertical-center").css({"display":"table"});
//                $("#diallayer").show();
//            }else {
                $.ajax({
                    url: "/member/Bank/getShowQuanStatus",
                    type: "get",
                    dataType: "json",
                    async: true,
                    success: function (data) {
                        cgtStatus=data.data.result;
                        showBycgtStatus(cgtStatus);
                    }, error: function () {
                        //cgtStatus="0";
                       // showBycgtStatus(cgtStatus);
                    }
                });

                function showBycgtStatus(cgtStatus) {
                    if (cgtStatus == "0") {
                        $("#aOpen").show();
                        $("#aActived").hide();
                        $("#aBankBind").hide();
                    } else if (cgtStatus == "2") {
                        $("#aOpen").hide();
                        $("#aActived").show();
                        $("#aBankBind").hide();
                    }

                    var isShowOtherDlg = false;
                    if ((cgtStatus == "0" || cgtStatus == "2") && CGTShow =="1"){
                        isShowOtherDlg = true;
                        $(".xiamen-pop").show();
                        $(".xm-mask").show();
                        if(cgtStatus == "0"){
                            $("#sp_open").show();
                            $("#sp_active").hide();
                        }else{
                            $("#sp_open").hide();
                            $("#sp_active").show();
                        }
                    }else {
                        $(".xiamen-pop").hide();
                        $(".xm-mask").hide();
                        $("#sp_active").show();
                        if(showShowQuan=="1" && cgtStatus=="3"){
                            isShowOtherDlg = true;
                            $(".passwordAlt").show();
                            $('#diallayer').show();
                        }
                        if(cgtStatus == "222"){
                            isShowOtherDlg = true;
                            $(".xm-mask").show();
                            $("#TheadAlert").show();
                            $("#sp_newtitle").hide();
                            $("#sp_newcontent").html('注意：您目前还未开通存管账户，暂时不能进行充值、提现等资金操作，请尽快联系团贷网客服（1010-1218）开通。');
                            $("#sp_newcontent").css({ color: '#f00' });
                            $("#btn_04").hide();
                            $("#btn_03").show();
                        }
                        if(cgtStatus=="7"){
                            isShowOtherDlg = true;
                            $(".xm-mask").show();
                            $("#TheadAlert").show();
                            $("#sp_newtitle").hide();
                            var n = Math.floor(Math.random() * Arr.length + 1) - 1;
                            var srcc = "http://wpa.qq.com/msgrd?v=3&uin=" + Arr[n] + "&site=qq&menu=yes";
                            $("#sp_newcontent").html('注意：由于您的身份信息或银行卡信息有误，您暂时还不能进行充值、投资、提现等理财操作，请尽快联系团贷网客服<a href="' + srcc + '" target="_blank" class="XMCGQQ">' + Arr[n] + '</a>进行资料核实及修改。');
                            $("#sp_newcontent").css({ color: '#f00' });
                            $("#btn_04").hide();
                            $("#btn_03").show();
                        }
                        var tempCgtStatus = parseInt(cgtStatus);
                        if(tempCgtStatus < -1) {
                            var sp_title = '', sp_content = '';
                            isShowOtherDlg = true;
                            $("#gangaoAlert").show();
                            $('#diallayer').show();
                            var iicardtype = tempCgtStatus * -1;
                            switch (iicardtype) {
                                case 2:
                                    sp_title = "港澳台通行证";
                                    sp_content = "QQ联系客服专员，提交以下申请材料：手持港澳台通行证证件彩色半身照【保<br>证证件号码清晰且不能是镜面照】港澳台通行证背面彩色照片,受理时间为：周一至周五9:00-12:00  13:30-18:00，周六日与法定节假日除外。";
                                    break;
                                case 3:
                                    sp_title = "外国人永久居留证";
                                    sp_content = "QQ联系客服专员，提交以下申请材料：外国人永久居留证证件彩色半身照【保<br>证证件号码清晰且不能是镜面照】外国人永久居留证背面彩色照片，受理时间为：周一至周五9:00-12:00  13:30-18:00，周六日与法定节假日除外。";
                                    break;
                                case 4:
                                    sp_title = "护照";
                                    sp_content = "QQ联系客服专员，提交以下申请材料：手持护照证件彩色半身照,（含个人信<br>息页）【保证证件号码清晰且不能是镜面照】,受理时间为：周一至周五9:00-12:00  13:30-18:00，周六日与法定节假日除外。";
                                    break;
                            }
                            $("#sp_cardTypeName").html(sp_title);
                            $("#sp_2Content").html(sp_content);
                        }
                        //风险评测
                        if(isShowOtherDlg==false){
                            $.ajax({
                                url: "/member/security/riskAssessment",
                                type: "get",
                                dataType: "json",
                                async: true,
                                success: function (data) {
                                    if(data.data.result=="1"){
                                        var riskVal = $.cookie("TuanDaiRiskEvaluationShowDate");
                                        var today = "2017-09-23";
                                        var isShow = false;
                                        if (riskVal == null || riskVal == ""){
                                            riskVal = today;
                                            isShow = true;
                                        }else if(riskVal.indexOf(today) < 0 && (riskVal.split(';')).length < 3){
                                            riskVal += ";" + today;
                                            isShow = true;
                                        }
                                        if(isShow){
                                            $.cookie("TuanDaiRiskEvaluationShowDate",riskVal, { expires: 365 });
                                            showDialWindows(newTitle,"<div class='lh24 tl g3 mt10 pl30'>您尚未进行风险承受能力评测，请先完成评测后<br/>再进行投资</div>","立即测评",
                                                function() {
                                                    window.location.href = "https:\/\/hd.tuandai.com" + "/web/20170309test/index.aspx";
                                                },null,null);
                                            $("#divTiQian").html("您今年还有3次评估机会").attr("style", "font-size: 12px; padding: 15px 0px 10px 5px; color:#999;").show();
                                        }
                                    }
                                }, error: function () {

                                }
                            });

                        }

                    }
                }


//            }

        });

        $(function () {
            try {
                getRandomValue();
            } catch (e) { }
            $("#btn_recharge").click(function () {

                if (!checkIsOpen("chongzhi")) {
                    return false;
                }
                else {
                    location.href = "/member/Bank/RechargeNew2016.aspx";
                }
            });
        });

        function CheckAllowDraw() {
            try {
                if (IsOpenCGT == "1" && !checkIsOpen("chongzhi")) {
                    return false;
                }
            } catch (e) { }

            var url="/member/Bank/drawmoney.aspx";
            var blankA = $("#blank_a");
            if (blankA.length == 0) {
                $("body").append("<a id='blank_a' href='"+url+"' style='display:none' target='_blank'><span></span></a>");
            }
            $(blankA).attr("target", "_blank");

            document.getElementById("blank_a").click();

            return true;
        }


//        $(".zhlc .btn").click(function(){
//            $(this).parents(".zhlc").hide();
//            $("#diallayer").hide();
//            $.cookie("POPShow","0", { expires: 365*5 });
//        });


        /*]]>*/
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
            );
            })();
            function stringToHex(s) { var r = ''; var hexes = new Array('0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'); for (var i = 0; i < (s.length) ; i++) { r += hexes[s.charCodeAt(i) >> 4] + hexes[s.charCodeAt(i) & 0xf] ;} return r; }
            function HexTostring(s) { var r = ''; for (var i = 0; i < s.length; i += 2) { var sxx = parseInt(s.substring(i, i + 2), 16); r += String.fromCharCode(sxx); } return r; }

            var nwbi_userName = "";
            var nwbi_sysNo = "TDW";
            var IsLogin = isCookieLogin();
           
            if (IsLogin) {
                var nickname = jaaulde.utils.cookies.get("TDWUserName");
                
                nwbi_userName = nickname;

            }
            
            (function () {
                var ta = document.createElement('script'); ta.type = 'text/javascript'; ta.async = true;
                ta.src = ((("https:") == document.location.protocol) ? "https://" : "http://") + '127.0.0.1:8080/js/js1/webaccess.js';
                var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ta, s);
            })();

			/*]]>*/            
        </script>        
 
<img style="display: none;" src="${pageContext.request.contextPath }/html/html1/SingleLogin.html"><div id="HUABAN_WIDGETS"><div class="HUABAN-f-button" style="display: none;">采集</div><style>#HUABAN_WIDGETS  {font-family: "helvetica neue",arial,sans-serif; color: #444; font-size: 14px;} #HUABAN_WIDGETS * {box-sizing: content-box;} #HUABAN_WIDGETS .HUABAN-main {position: fixed; left: 0; top: 0; width: 100%; height: 100%; background: #e5e5e5; background: rgba(229,229,229,.95); max-height: 100%; overflow: hidden; z-index: 9999999999999;} #HUABAN_WIDGETS a img {border: 0;} #HUABAN_WIDGETS .HUABAN-header {height: 50px; background: white; box-shadow: 0 0 4px rgba(0,0,0,.2); width: 100%; left: 0; top: 0; position: absolute;} #HUABAN_WIDGETS .HUABAN-header .HUABAN-inner {margin: 0 auto; position: relative;} #HUABAN_WIDGETS .HUABAN-header .HUABAN-close {width: 60px; height: 50px; border-left: 1px solid #ddd; position: absolute; right: 0; top: 0; background: url(https://huaban.com/img/widgets/btn_close.png) 20px 14px no-repeat; cursor: pointer;} #HUABAN_WIDGETS .HUABAN-header .HUABAN-close:hover {background-position: 20px -26px;} #HUABAN_WIDGETS .HUABAN-header .HUABAN-close:active {background-position: 20px -66px;} #HUABAN_WIDGETS .HUABAN-header .HUABAN-logo {display: block; position: absolute; top: 12px;} #HUABAN_WIDGETS .HUABAN-waterfall-holder {position: relative; overflow-y: auto; height: 100%;} #HUABAN_WIDGETS .HUABAN-waterfall {position: relative; margin-top: 50px;} #HUABAN_WIDGETS .HUABAN-waterfall .HUABAN-empty {position: absolute; left: 50%; top: 30px; height: 36px; line-height: 36px; width: 216px; text-align: left; margin-left: -128px; color: #777; background: url(https://huaban.com/img/widgets/icon_notice.png) 12px 8px no-repeat white; padding-left: 40px; font-size: 15px;} #HUABAN_WIDGETS .HUABAN-btn {display: inline-block; border-radius: 2px; font-size: 14px; padding: 0 12px; height: 30px; line-height: 30px; cursor: pointer; text-decoration: none; white-space: nowrap; -moz-user-select: none; -webkit-user-select: none; user-select: none; text-align: center; background: #D53939; color: white;} #HUABAN_WIDGETS .HUABAN-btn:hover {background: #E54646;} #HUABAN_WIDGETS .HUABAN-btn:active {background: #C52424;} #HUABAN_WIDGETS .HUABAN-wbtn {background: #EDEDED; color: #444;} #HUABAN_WIDGETS .HUABAN-wbtn:hover {background: #F2F2F2;} #HUABAN_WIDGETS .HUABAN-wbtn:active {background: #DDD;} #HUABAN_WIDGETS .HUABAN-f-button {position: absolute; display: none; z-index: 9999999999998; box-shadow: 0 0 0 2px rgba(255,255,255,.2); background: #aaa; background: rgba(0,0,0,.3); color: white; cursor: pointer; padding: 0 12px; height: 30px; line-height: 30px; border-radius: 2px; font-size: 14px} #HUABAN_WIDGETS .HUABAN-f-button:hover {background-color: #999; background-color: rgba(0,0,0,.5);} #HUABAN_WIDGETS .HUABAN-f-button:active {background-color: rgba(0,0,0,.6);} #HUABAN_WIDGETS .HUABAN-red-normal-icon-button {width: 36px; height: 24px; border: 0px; line-height: 24px; padding-left: 24px; padding-right: 0px; text-align: left; background: url(https://huaban.com/img/widgets/widget_icons.png) 0 -200px no-repeat; box-shadow: none !important; font-size: 14px; background-color: transparent !important;} #HUABAN_WIDGETS .HUABAN-red-normal-icon-button:hover {background-position: -130px -200px;} #HUABAN_WIDGETS .HUABAN-red-normal-icon-button:active {background-position: -260px -200px;} #HUABAN_WIDGETS .HUABAN-red-large-icon-button {width: 80px; height: 24px; border: 0px; line-height: 24px; padding-left: 24px; padding-right: 0px; text-align: left; background: url(https://huaban.com/img/widgets/widget_icons.png) 0 -150px no-repeat; box-shadow: none !important; font-size: 14px; background-color: transparent !important;} #HUABAN_WIDGETS .HUABAN-red-large-icon-button:hover {background-position: -130px -150px;} #HUABAN_WIDGETS .HUABAN-red-large-icon-button:active {background-position: -260px -150px;} #HUABAN_WIDGETS .HUABAN-red-small-icon-button {width: 30px; height: 21px; border: 0px; line-height: 21px; padding-left: 20px; padding-right: 0px; text-align: left; background: url(https://huaban.com/img/widgets/widget_icons.png) 0 -250px no-repeat; box-shadow: none !important; font-size: 12px; background-color: transparent !important;} #HUABAN_WIDGETS .HUABAN-red-small-icon-button:hover {background-position: -130px -250px;} #HUABAN_WIDGETS .HUABAN-red-small-icon-button:active {background-position: -260px -250px;} #HUABAN_WIDGETS .HUABAN-white-normal-icon-button {width: 36px; height: 24px; border: 0px; line-height: 24px; padding-left: 24px; padding-right: 0px; text-align: left; background: url(https://huaban.com/img/widgets/widget_icons.png) 0 -500px no-repeat; box-shadow: none !important; color: #444; font-size: 14px; background-color: transparent !important;} #HUABAN_WIDGETS .HUABAN-white-normal-icon-button:hover {background-position: -130px -500px;} #HUABAN_WIDGETS .HUABAN-white-normal-icon-button:active {background-position: -260px -500px;} #HUABAN_WIDGETS .HUABAN-white-large-icon-button {width: 80px; height: 24px; border: 0px; line-height: 24px; padding-left: 24px; padding-right: 0px; text-align: left; background: url(https://huaban.com/img/widgets/widget_icons.png) 0 -450px no-repeat; box-shadow: none !important; color: #444; font-size: 14px; background-color: transparent !important;} #HUABAN_WIDGETS .HUABAN-white-large-icon-button:hover {background-position: -130px -450px;} #HUABAN_WIDGETS .HUABAN-white-large-icon-button:active {background-position: -260px -450px;} #HUABAN_WIDGETS .HUABAN-white-small-icon-button {width: 30px; height: 21px; border: 0px; line-height: 21px; padding-left: 20px; padding-right: 0px; text-align: left; background: url(https://huaban.com/img/widgets/widget_icons.png) 0 -550px no-repeat; box-shadow: none !important; color: #444; font-size: 12px; background-color: transparent !important;} #HUABAN_WIDGETS .HUABAN-white-small-icon-button:hover {background-position: -130px -550px;} #HUABAN_WIDGETS .HUABAN-white-small-icon-button:active {background-position: -260px -550px;} #HUABAN_WIDGETS .HUABAN-cell {width: 236px; position: absolute; background: white; box-shadow: 0 1px 3px rgba(0,0,0,.3); transition: left .3s ease-in-out, top .3s linear;} #HUABAN_WIDGETS .HUABAN-cell .HUABAN-img-holder {overflow: hidden; position: relative;} #HUABAN_WIDGETS .HUABAN-cell .HUABAN-img-holder:hover img.HUABAN-cell-img {opacity: .8} #HUABAN_WIDGETS .HUABAN-cell .HUABAN-video-icon {width: 72px; height: 62px; position: absolute; left: 50%; top: 50%; margin: -31px auto auto -36px; background: url(https://huaban.com/img/widgets/media_video.png) 0 0 no-repeat; display: none;} #HUABAN_WIDGETS .HUABAN-cell.HUABAN-video .HUABAN-video-icon {display: block;} #HUABAN_WIDGETS .HUABAN-cell .HUABAN-over {display: none;} #HUABAN_WIDGETS .HUABAN-cell:hover .HUABAN-over {display: block;} #HUABAN_WIDGETS .HUABAN-cell .HUABAN-over .HUABAN-btn {width: 60px; height: 34px; padding: 0; position: absolute; left: 50%; top: 50%; margin: -18px 0 0 -31px; line-height: 34px; box-shadow: 0 0 0 2px rgba(255,255,255,.2); font-size: 16px;} #HUABAN_WIDGETS .HUABAN-cell.HUABAN-long .HUABAN-img-holder {height: 600px;} #HUABAN_WIDGETS .HUABAN-cell.HUABAN-long .HUABAN-img-holder:after {content: ""; display: block; position: absolute; width: 236px; height: 12px; left: 0; bottom: 0; background: url(https://huaban.com/img/widgets/long_image_shadow_2.png) repeat-x 4px top;} #HUABAN_WIDGETS .HUABAN-cell img {width: 236px; display: block;} #HUABAN_WIDGETS .HUABAN-cell .HUABAN-size {margin: 8px 16px; font-size: 12px; color: #999} #HUABAN_WIDGETS .HUABAN-cell .HUABAN-description {display: block; width: 202px; margin: 0 6px 6px; padding: 6px 10px; border: 0; resize: none; outline: 0; border: 1px solid transparent; line-height: 18px; font-size: 13px; overflow: hidden; word-wrap: break-word; background: url(https://huaban.com/img/widgets/icon_edit.png) 500px center no-repeat;} #HUABAN_WIDGETS .HUABAN-cell:hover .HUABAN-description {background-color: #fff9e0; background-position: right top;} #HUABAN_WIDGETS .HUABAN-cell .HUABAN-description:focus {background-color: #F9F9F9; background-position: 500px center;} #HUABAN_WIDGETS .HUABAN-cell .HUABAN-select-btn {width: 34px; height:34px; background: url(https://huaban.com/img/widgets/checkbox.png) 0 0 no-repeat; position: absolute; right: 5px; top: 5px; cursor: pointer;} #HUABAN_WIDGETS .HUABAN-cell .HUABAN-pinned-label {position: absolute; left: 0; top: 10px; height: 24px; line-height: 24px; padding: 0 10px; background: #CE0000; background: rgba(200, 0, 0, 0.9); color: white; font-size: 12px; display: none;} #HUABAN_WIDGETS .HUABAN-cell.HUABAN-pinned .HUABAN-pinned-label {display: block;} #HUABAN_WIDGETS .HUABAN-selected .HUABAN-select-btn {background-position: 0 -40px;} #HUABAN_WIDGETS .HUABAN-multi .HUABAN-cell .HUABAN-img-holder {cursor: pointer;} #HUABAN_WIDGETS .HUABAN-multi .HUABAN-cell .HUABAN-cell-pin-btn {display: none;} #HUABAN_WIDGETS .HUABAN-multi .HUABAN-cell .HUABAN-over {display: block;} #HUABAN_WIDGETS .HUABAN-header .HUABAN-multi-buttons {position: absolute; top: 10px; left: 0; display: none;} #HUABAN_WIDGETS .HUABAN-header .HUABAN-multi-buttons .HUABAN-btn {margin-right: 10px;} #HUABAN_WIDGETS .HUABAN-header .HUABAN-multi-noti {display: none; height: 50px; line-height: 50px; text-align: center; font-size: 16px; color: #999; font-weight: bold;} #HUABAN_WIDGETS .HUABAN-header .HUABAN-multi-noti span {font-weight: normal;} #HUABAN_WIDGETS .HUABAN-header .HUABAN-multi-noti i {font-style: normal;} #HUABAN_WIDGETS .HUABAN-header .HUABAN-notice {padding: 0 10px; height:30px; line-height: 30px; position: absolute; left: 50%; top: 10px; margin-left: -83px; background: #fff9e2; text-align: center;} #HUABAN_WIDGETS .HUABAN-header .HUABAN-notice i {display: inline-block; width: 18px; height: 18px; background: url(https://huaban.com/img/widgets/icon_notice.png) 0 0 no-repeat; vertical-align: top; margin: 6px 6px 0 0;} #HUABAN_WIDGETS .HUABAN-switcher {height: 50px; width: 100px; position: relative;} #HUABAN_WIDGETS .HUABAN-switcher .HUABAN-title {position: absolute; right: 75px; top: 13px; color: #999; white-space: nowrap; line-height: 24px; opacity: 0; visibility: hidden;} #HUABAN_WIDGETS .HUABAN-switcher:hover .HUABAN-title {visibility: visible; opacity: 1; -webkit-transition: opacity .2s linear; -webkit-transition-delay: .2s; transition: opacity .2s linear; transition-delay: .2s;} #HUABAN_WIDGETS .HUABAN-switcher .HUABAN-bar {width: 40px; height: 24px; background: #EB595F; border-radius: 12px; color: white; position: absolute; right: 0; top: 13px; cursor: pointer; font-size: 14px; -webkit-transition: all .2s linear; transition: all .2s linear;} #HUABAN_WIDGETS .HUABAN-switcher:hover .HUABAN-bar {width: 64px;} #HUABAN_WIDGETS .HUABAN-switcher.HUABAN-on .HUABAN-bar {background: #7DD100;} #HUABAN_WIDGETS .HUABAN-switcher .HUABAN-bar .HUABAN-round {width: 20px; height: 20px; background: white; border-radius: 50%; position: absolute; left: 2px; top: 2px; -webkit-transition: left .2s linear; box-shadow: 0px 0px 3px rgba(0,0,0,0.15); transition: left .2s linear; box-shadow: 0px 0px 3px rgba(0,0,0,0.15);} #HUABAN_WIDGETS .HUABAN-switcher.HUABAN-on .HUABAN-bar .HUABAN-round {left: 17px;} #HUABAN_WIDGETS .HUABAN-switcher.HUABAN-on:hover .HUABAN-bar .HUABAN-round {left: 41px;} #HUABAN_WIDGETS .HUABAN-switcher .HUABAN-bar .HUABAN-text-1 {height: 24px; line-height: 24px; position: absolute; right:17px; top: 0; opacity: 0; visibility: hidden; -webkit-transition: all .2s linear; transition: all .2s linear;} #HUABAN_WIDGETS .HUABAN-switcher:hover .HUABAN-bar .HUABAN-text-1 {right: 9px; opacity: 1; visibility: visible;} #HUABAN_WIDGETS .HUABAN-switcher.HUABAN-on:hover .HUABAN-bar .HUABAN-text-1 {right: 17px; opacity: 0; visibility: hidden;} #HUABAN_WIDGETS .HUABAN-switcher .HUABAN-bar .HUABAN-text-2 {height: 24px; line-height: 24px; position: absolute; left:17px; top: 0; opacity: 0; visibility: hidden; -webkit-transition: all .2s linear; transition: all .2s linear;} #HUABAN_WIDGETS .HUABAN-switcher:hover .HUABAN-bar .HUABAN-text-2 {left: 17px; opacity: 0; visibility: hidden;} #HUABAN_WIDGETS .HUABAN-switcher.HUABAN-on:hover .HUABAN-bar .HUABAN-text-2 {left: 9px; opacity: 1; visibility: visible;} #HUABAN_WIDGETS .HUABAN-header .HUABAN-switcher {position: absolute; right: 0; top: 0;} <!--[if IE 6]>#HUABAN_WIDGETS .HUABAN-red-normal-icon-button, .HUABAN-red-large-icon-button, .HUABAN-red-small-icon-button, .HUABAN-white-normal-icon-button, .HUABAN-white-large-icon-button, .HUABAN-white-small-icon-button { background-image: url({{imgBase}}/widget_icons_ie6.png) <![endif]--></style></div></body></html>