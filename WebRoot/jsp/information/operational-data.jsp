<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<!-- saved from url=(0059)http://info.tuandai.com/about/operational-data.html?mark=15 -->
<html lang="en-US"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><title>
            运营数据 - 团贷网        </title><link rel="dns-prefetch" href="http://image.tuandai.com/"><link rel="dns-prefetch" href="http://js.tuandai.com/"><link rel="dns-prefetch" href="http://vip.tuandai.com/"><link rel="dns-prefetch" href="http://hd.tuandai.com/"><link rel="dns-prefetch" href="http://bbs.tuandai.com/"><meta name="renderer" content="webkit"><meta property="qc:admins" content="3542563377645164116375">
        <link rel="shortcut icon" href="${pageContext.request.contextPath }/css/css3/favicon.ico?v=201710301201">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/css/css3/base20151225.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/css/css3/public20151225.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/css/css3/common.css">
        <link href="${pageContext.request.contextPath }/css/css3/about_public.css" rel="stylesheet">
        <script async="" src="${pageContext.request.contextPath }/js/js3/sensorsdata.min.js"></script>
        <script src="${pageContext.request.contextPath }/js/js3/hm.js"></script><script type="text/javascript" async="" src="${pageContext.request.contextPath }/js/js3/webaccess.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath }/js/js3/jquery-1.7.2.min.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath }/js/js3/jquery.cookie.js"></script>
    </head>
    <body>
                <div class="header">
    <div class="t-b  t-b-w lh40 bgff f12 fst cl">
        <div class="w1200 h40 auto g6">
            <div class="right-side  r inline-block-debug">
                                <div id="topinfo" class="inline-block-debug c-poi-a"><span class="reg" style="color:#303030">欢迎您，</span><a href="${pageContext.request.contextPath }/account" rel="nofollow" class="reg">135pc王路_</a><span>|</span><a href="javascript:logout();">退出</a><span>|</span></div>
                <a target="_blank" href="http://info.tuandai.com/help/index.html" rel="nofollow">帮助中心</a>
                <span>|</span>
                <a target="_blank" href="#">社区</a><span>|</span>
            </div>
            <div class="left-side">
                <i class="icon dib phone vm  lh0">&nbsp;</i><span class="ml5">客服热线：1010-1218（9:00～22:00）</span>
            </div>
        </div>
    </div>
    <div class="nav-w bgfff">
        <div class="nav-box auto w1200 fix">
            <div class="r rel tc  slid z3">

                <dl class="abs i-b-d vt about-us r0" id="myaccountScroll"><dt><a href="${pageContext.request.contextPath }/account"><i class="account-icon i-b-d icon vm"></i>我的账户<i class="icon arrow i-b-d vm"></i></a></dt>
                	<dd><a href="${pageContext.request.contextPath }/Recharge.aspx">立即充值</a></dd>
                	<dd><a href="${pageContext.request.contextPath }/account_moneylist.aspx">资金统计</a></dd>
                	<dd><a href="${pageContext.request.contextPath }/account_weFTBAll.aspx">智能理财</a></dd>
                	<dd><a href="${pageContext.request.contextPath }/account_loaninbid.aspx">散标投资</a></dd>
                	<dd><a href="${pageContext.request.contextPath }/account_loanReturnPlanList.aspx">回款计划</a></dd>
                	<dd><a href="${pageContext.request.contextPath }/AutoTenderList.aspx">自动投标</a></dd>
                	<dd><a href="${pageContext.request.contextPath }/account_borrowReturnPlanList.aspx">还款安排</a></dd>
                	<dd><a href="${pageContext.request.contextPath }/account_borrowInBid.aspx">借款记录</a></dd>
                	<dd><a href="javascript:logout();">退出</a></dd></dl>
            </div>
            <div class="nav r">
                <ul>
                    <li class="nav-t">
                        <a href="http://www.tuandai.com/">首页</a>
                    </li>
                    <li class="nav-t w130">
                        <div style="margin-top:0px" class="r rel tc  slid z3 r ">
                            <dl class="abs i-b-d vt guarantee r0"><dt><a href="${pageContext.request.contextPath }/jsp/homepage/lntellgent.jsp" rel="nofollow">我要投资<i class="icon arrow i-b-d vm"></i></a></dt>
                                <dd style="overflow: hidden; height: 37px; display: none; margin-top: 0px; margin-bottom: 0px; padding-top: 0px; padding-bottom: 0px;">
                                    <a href="${pageContext.request.contextPath }/jsp/homepage/lntellgent.jsp" rel="nofollow">智能投资</a>
                                </dd>
                                <dd style="overflow: hidden; height: 37px; display: none; margin-top: 0px; margin-bottom: 0px; padding-top: 0px; padding-bottom: 0px;">
                                    <a href="${pageContext.request.contextPath }/jsp/homepage/LooseInvestment.jsp" rel="nofollow">散标专区</a>
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
                        <a href="http://www.tuandai.com/pages/borrow/index.aspx">我要借款</a>
                    </li>
                </ul>

            </div>
            <a href="http://www.tuandai.com/" class="logo dib l">
                <!--<img src="//js.tuandai.com/images/default/logo.png?v=" alt="团贷网"></a>-->
                <img src="${pageContext.request.contextPath }/static/img3/tuandai_logo_left.png" alt="团贷网"></a>
            <div class="index-bd">
                <ul class="index_slider" style="bottom: 0px">
                    <li>
                        <img src="${pageContext.request.contextPath }/static/img3/1502357148516.png" alt="网贷">
                    </li>
                </ul>
                <ul class="index_num" style="display: none;">
                    <li>
                        1
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div class="nav-w suspension   fixed z5 t0 l0 suspension suspension-up" style="width:100%">
        <div class="nav-box auto w1200  fix">
            <div class="r rel tc  slid z3">
                <dl id="myaccount" class="abs i-b-d vt about-us r0"><dt><a href="${pageContext.request.contextPath }/account"><i class="account-icon i-b-d icon vm"></i>我的账户<i class="icon arrow i-b-d vm"></i>
                	
                </a></dt><dd><a href="https://www.tuandai.com/member/Bank/Recharge.aspx">立即充值</a></dd>
                <dd><a href="https://www.tuandai.com/member/account_moneylist.aspx">资金统计</a></dd>
                <dd><a href="https://www.tuandai.com/member/account_weFTBAll.aspx">智能理财</a></dd>
                <dd><a href="https://www.tuandai.com/member/account_loaninbid.aspx">散标投资</a></dd>
                <dd><a href="https://www.tuandai.com/member/account_loanReturnPlanList.aspx">回款计划</a></dd>
                <dd><a href="https://www.tuandai.com/member/AutoTender/AutoTenderList.aspx">自动投标</a></dd>
                <dd><a href="https://www.tuandai.com/member/account_borrowReturnPlanList.aspx">还款安排</a></dd>
                <dd><a href="https://www.tuandai.com/member/account_borrowInBid.aspx">借款记录</a></dd>
                <dd><a href="javascript:logout();">退出</a></dd></dl>
            </div>
            <div class="nav r">
                <ul>
                    <li class="nav-t">
                        <a href="${pageContext.request.contextPath }/investmenthome.jsp">首页</a>
                    </li>
                    <li class="nav-t w130">
                        <div style="margin-top:0px" class="r rel tc  slid z3 r ">
                            <dl class="abs i-b-d vt guarantee r0"><dt><a href="${pageContext.request.contextPath }/jsp/homepage/lntellgent.jsp" rel="nofollow">我要投资<i class="icon arrow i-b-d vm"></i></a></dt>
                                <dd style="overflow: hidden; height: 37px; display: none; margin-top: 0px; margin-bottom: 0px; padding-top: 0px; padding-bottom: 0px;">
                                    <a href="${pageContext.request.contextPath }/jsp/homepage/lntellgent.jsp" rel="nofollow">智能投资</a>
                                </dd>
                                <dd style="overflow: hidden; height: 37px; display: none; margin-top: 0px; margin-bottom: 0px; padding-top: 0px; padding-bottom: 0px;">
                                    <a href="${pageContext.request.contextPath }/jsp/homepage/LooseInvestment.jsp" rel="nofollow">散标专区</a>
                                </dd>
                            </dl>
                        </div>
                    </li>

                    <li class="nav-t w130">
                        <div style="margin-top:0px" class="r rel tc  slid z3 r ">
                            <dl class="abs i-b-d vt guarantee r0"><dt><a rel="nofollow" href="${pageContext.request.contextPath }/platform">信息披露<i class="icon arrow i-b-d vm"></i></a></dt>
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
                        <a href="${pageContext.request.contextPath }/loadMoney">我要借款</a>
                    </li>
                </ul>
            </div>
            <a style="float:left" class="logo-s dib" href="${pageContext.request.contextPath }/investmenthome.jsp"><img style="width:149px;position:relative;top:-5px;" alt="团贷网" src="${pageContext.request.contextPath }/static/img3/tuandai_logo_left.png"></a>
            <div class="index_ad-s">
                <ul style="bottom: 0px" class="index_slider-s">
                    <li>
                        <img style="width:118px;" src="${pageContext.request.contextPath }/static/img3/1502357989261.png" alt="网贷">
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/css3/xinxi1.css">
<div class="containder w1200 auto cl fix">
    <div class="position">您当前所在的位置：<a href="${pageContext.request.contextPath }/investmenthome.jsp">团贷网</a> &gt; <a href="${pageContext.request.contextPath }/operational-data">运营数据</a> &gt;  运营数据</div>
<!--<div class="l left-side w218" id="left-side">
    <dl show="0" class="first">
        <dd><a class="left-selected" href="">关于平台</a></dd>
        <dd><a href="">安全保障</a></dd>
        <dd><a href="https://hd.tdw.cn/web/20161124Quality/index.aspx?tdsource=pcbanner" target="_blank">担保专款</a></dd>
        <dd><a href="">运营报表</a></dd>
        <dd><a href="http://hd.tuandai.com/web/20160330/Index.aspx?tdsource=pcbanner" target="_blank">平台数据</a></dd>
        <dd><a href="">管理团队</a></dd>
        <dd><a href="">团贷公告</a></dd>
        <dd><a href="">资质荣誉</a></dd>
        <dd><a href="">联系我们</a></dd>
        <dd><a href="">监管部门</a></dd>
        <dd><a href="">法律法规</a></dd>
    </dl>
</div>-->
<div class="l left-side w218" id="left-side">
    <dl show="0" >
        <dt>关于我们<i class="shareholder-icon left-arrow-up"></i></dt>
        <dd style="display: none;"><a class="" href="${pageContext.request.contextPath }/jsp/information/platform.jsp" target="_blank">平台简介</a></dd>
        <dd style="display: none;"><a href="${pageContext.request.contextPath }/jsp/information/basicinfo.jsp" target="_blank">基本信息</a></dd>
        <dd style="display: none;"><a href="${pageContext.request.contextPath }/jsp/information/team.jsp" target="_blank">管理团队</a></dd>
        <dd style="display: none;"><a href="${pageContext.request.contextPath }/jsp/information/shareholder.jsp" target="_blank">集团投资方</a></dd>
        <dd style="display: none;"><a href="${pageContext.request.contextPath }/jsp/information/aptitude.jsp" target="_blank" >资质证书</a></dd>
        <dd style="display: none;"><a href="${pageContext.request.contextPath }/jsp/information/index.jsp" target="_blank">银行存管</a></dd>
        <dd style="display: none;"><a href="${pageContext.request.contextPath }/jsp/information/history.jsp" target="_blank">发展历程</a></dd>
        <dd style="display: none;"><a href="${pageContext.request.contextPath }/jsp/information/guest.jsp" target="_blank">政府关怀</a></dd>
        <dd style="display: none;"><a href="${pageContext.request.contextPath }/jsp/information/honor.jsp" target="_blank">团贷荣誉</a></dd>
        <dd style="display: none;"><a href="${pageContext.request.contextPath }/jsp/information/partners.jsp" target="_blank">合作机构</a></dd>
    </dl>
    <dl show="0">
        <dt>对外公告<i class="shareholder-icon left-arrow-down"></i></dt>
        <dd style="display: none;"><a href="${pageContext.request.contextPath }/jsp/information/auditreport.jsp" target="_blank">审计报告</a></dd>
        <dd style="display: none;"><a href="${pageContext.request.contextPath }/jsp/information/bigissues.jsp" target="_blank">重大事项</a></dd>
        <dd style="display: none;"><a href="${pageContext.request.contextPath }/jsp/information/notict.jsp" target="_blank">团贷公告</a></dd>
    </dl>
    <dl show="0">
        <dt>业务介绍<i class="shareholder-icon left-arrow-down"></i></dt>
        <dd style="display: none;"><a href="${pageContext.request.contextPath }/jsp/information/consume.jsp" target="_blank" >消费金融</a></dd>
        <dd style="display: none;"><a href="${pageContext.request.contextPath }/jsp/information/dianshangy.jsp" target="_blank">电商供应链金融</a></dd>
        <dd style="display: none;"><a href="${pageContext.request.contextPath }/jsp/information/sannong.jsp" target="_blank">三农金融</a></dd>
        <dd style="display: none;"><a href="${pageContext.request.contextPath }/jsp/information/fangsudai.jsp" target="_blank">房贷</a></dd>
        <dd style="display: none;"><a href="${pageContext.request.contextPath }/jsp/information/cheyidai.jsp" target="_blank">车贷</a></dd>
    </dl>
    <dl show="0">
        <dt>运营数据<i class="shareholder-icon left-arrow-down"></i></dt>
       <dd style="display: block;"><a href=" ${pageContext.request.contextPath }/jsp/information/operational-data.jsp" target="_blank" class="left-selected">运营数据</a></dd>
        <dd style="display: block;"><a href=" ${pageContext.request.contextPath }/jsp/information/report.jsp" target="_blank">运营报表</a></dd>
    </dl>
    <dl show="0">
        <dt>安全保障<i class="shareholder-icon left-arrow-down"></i></dt>
        <dd style="display: none;"><a href=" ${pageContext.request.contextPath }/jsp/information/riskcontroller.jsp" target="_blank">风控流程</a></dd>
        <dd style="display: none;"><a href="${pageContext.request.contextPath }/jsp/information/safeguard.jsp" target="_blank">保障方式</a></dd>
        <dd style="display: none;"><a href="${pageContext.request.contextPath }/jsp/information/index4.jsp" target="_blank">担保专款</a></dd>
        <dd style="display: none;"><a href="${pageContext.request.contextPath }/jsp/information/technologysafe.jsp" target="_blank">技术安全</a></dd>
    </dl>
    <dl show="0">
        <dt>承诺书<i class="shareholder-icon left-arrow-down"></i></dt>
        <dd style="display: none;"><a href="${pageContext.request.contextPath }/jsp/information/commitment.jsp" target="_blank">法人承诺书</a></dd>
    </dl>
    <dl show="0">
        <dt>法律法规<i class="shareholder-icon left-arrow-down"></i></dt>
        <dd style="display: none;"><a href=" ${pageContext.request.contextPath }/jsp/information/regulatory.jsp" target="_blank">监管部门</a></dd>
        <dd style="display: none;"><a href="${pageContext.request.contextPath }/jsp/information/laws.jsp" target="_blank">法律法规</a></dd>
    </dl>
</div>

    <div class="r right-side w996">
		
		<%  
    java.text.SimpleDateFormat simpleDateFormat = new java.text.SimpleDateFormat(    
     "yyyy-MM-dd");    
   java.util.Date currentTime = new java.util.Date();    
   String time = simpleDateFormat.format(currentTime).toString();  
   time =time.replace("-", ""); 
   int  a=Integer.parseInt(time.substring(0, 4));//当前年数字表示
   int b=Integer.parseInt(time.substring(4, 6));//当前月数字表示
    int c=Integer.parseInt(time.substring(6, 8));//当前日数字表示
    
    
    
    
     %>  
		
		
        <!--这里写-->
        <div class="modular">
            <div class="ban">
                <img src="${pageContext.request.contextPath }/static/img3/Banner.png" alt="运营数据">
                <p>安全运营:
                                                                                <span class="sp1">5</span>
                                                                    年
                                                <span class="sp2">1</span>
                                                <span class="sp2">1</span>
                                                <span class="sp2">3</span>
                                        天
                                            <span class="sp2">1</span>
                                            <span class="sp2">0</span>
                                        小时
                </p>
            </div>

            <div class="titleBox"><div class="title">概况</div><div class="time">截至<span><%=a %></span>年<span><%=b %></span>月<span><%=c %></span>日</div></div>
            <div class="about-msg">
                                                                                    <div class="msg msg1">
                          	  撮合融资总额: <span id="zongjin"></span>万元
                           
                        </div>
                                                                    <div class="msg msg2">
                         	  撮合融资总笔数: <span id="bishu"></span>万笔
                            
                        </div>
                                                                    <div class="msg msg3">
                         	 累计为用户赚取预期收益:  <span id="yuqishouyi"></span>万元
                           
                        </div>
                                                                    <div class="msg msg4">
                            <span>借贷总余额:127亿9007万</span>
                           
                        </div>
                                                </div>
            <div class="all-money">
                <div class="mid">
                    <div class="money-tit">月度撮合融资额（亿元）</div>
                    <div id="month-all-money" _echarts_instance_="ec_1509847569647" style="-webkit-tap-highlight-color: transparent; user-select: none; position: relative; background: transparent;"><div style="position: relative; overflow: hidden; width: 780px; height: 400px; cursor: default;"><canvas width="1170" height="600" data-zr-dom-id="zr_0" style="position: absolute; left: 0px; top: 0px; width: 780px; height: 400px; user-select: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></canvas></div><div style="position: absolute; display: none; border-style: solid; white-space: nowrap; z-index: 9999999; transition: left 0.4s cubic-bezier(0.23, 1, 0.32, 1), top 0.4s cubic-bezier(0.23, 1, 0.32, 1); background-color: rgba(50, 50, 50, 0.7); border-width: 0px; border-color: rgb(51, 51, 51); border-radius: 4px; color: rgb(255, 255, 255); font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 14px; font-family: &quot;Microsoft YaHei&quot;; line-height: 21px; padding: 5px; left: 124.085px; top: 120px;">2017/04<br><span style="display:inline-block;margin-right:5px;border-radius:10px;width:9px;height:9px;background-color:#ff9f52"></span>撮合融资额 : 40.89</div></div>
                    <div class="year"></div>
                </div>
            </div>
            <div class="deal-time">
                <div class="mid">
                    <div class="money-tit">月度撮合融资笔数（万笔）</div>
                    <div id="deal-time" _echarts_instance_="ec_1509847569648" style="-webkit-tap-highlight-color: transparent; user-select: none; position: relative; background: transparent;"><div style="position: relative; overflow: hidden; width: 780px; height: 400px; cursor: default;"><canvas width="1170" height="600" data-zr-dom-id="zr_0" style="position: absolute; left: 0px; top: 0px; width: 780px; height: 400px; user-select: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></canvas></div><div style="position: absolute; display: none; border-style: solid; white-space: nowrap; z-index: 9999999; transition: left 0.4s cubic-bezier(0.23, 1, 0.32, 1), top 0.4s cubic-bezier(0.23, 1, 0.32, 1); background-color: rgba(50, 50, 50, 0.7); border-width: 0px; border-color: rgb(51, 51, 51); border-radius: 4px; color: rgb(255, 255, 255); font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 14px; font-family: &quot;Microsoft YaHei&quot;; line-height: 21px; padding: 5px; left: 358.527px; top: 114px;">2017/06<br><span style="display:inline-block;margin-right:5px;border-radius:10px;width:9px;height:9px;background-color:#85a2ff"></span>撮合融资笔数 : 15.12</div></div>
                    <div class="year"></div>
                </div>
            </div>
        </div>
        <div class="modular">
            <div class="titleBox"><div class="title">投资人信息</div><div id="time" class="time">截至<span><%=a %></span>年<span><%=b %></span>月<span><%=c %></span>日</div></div>
            <div class="invest-msg">
                                                                                    <div class="msg msg1">
                           	投资人总数: <span id="renshu"></span>万人
                            
                        </div>
                                                </div>
            <div class="invest-con">
                <div class="mid">
                    <div class="con-left">
                        <div class="invest-tit">投资人基本信息</div>
                        <ul>
                                            	                                                    <li>
                                        
                                        <div class="min">
                                          <div class="wai"><div class="nei n1 a-p4-left" style="width: 16.1%;"></div></div>25岁及以下: <span id="renshu125"></span>%
                                        </div>
                                    </li>
                                                                    <li>
                                        
                                        <div class="min">
                                            <div class="wai"><div class="nei n1 a-p4-left" style="width: 45.33%;"></div></div>26-35岁:<span id="renshu135"></span>%
                                        </div>
                                    </li>
                                                                    <li>
                                       
                                        <div class="min">
                                            <div class="wai"><div class="nei n1 a-p4-left" style="width: 19.52%;"></div></div>36-45岁:<span id="renshu145"></span>%
                                        </div>
                                    </li>
                                                                    <li>
                                        
                                        <div class="min">
                                            <div class="wai"><div class="nei n1 a-p4-left" style="width: 19.05%;"></div></div>46岁及以上:<span id="renshu146"></span>%
                                        </div>
                                    </li>
                                                                                    </ul>
                    </div>
                    <div class="con-right">
                        <div id="invest-pie" _echarts_instance_="ec_1509847569649" style="-webkit-tap-highlight-color: transparent; user-select: none; position: relative; background: transparent;"><div style="position: relative; overflow: hidden; width: 350px; height: 364px;"><canvas width="525" height="546" data-zr-dom-id="zr_0" style="position: absolute; left: 0px; top: 0px; width: 350px; height: 364px; user-select: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></canvas></div><div></div></div>
                    </div>

                </div>
            </div>
            <div class="invest-area">
                <div class="mid">
                    <div class="invest-tit">投资人地域分布</div>
                    <ul>
                                                                                    <li>
                                    
                                    <div class="min">
                                        <div class="wai"><div class="nei n1 a-p4-left" style="width: 15.54%;"></div></div>广东省:<span id="guangdongid"></span>%
                                    </div>
                                </li>
                                                            <li>
                                   
                                    <div class="min">
                                        <div class="wai"><div class="nei n1 a-p4-left" style="width: 9.02%;"></div></div>湖北省:<span id="hubeiid"></span>%
                                    </div>
                                </li>
                                                            <li>
                                    
                                    <div class="min">
                                        <div class="wai"><div class="nei n1 a-p4-left" style="width: 7.92%;"></div></div>湖南省:<span id="hunanid"></span>%
                                    </div>
                                </li>
                                                            <li>
                                    
                                    <div class="min">
                                        <div class="wai"><div class="nei n1 a-p4-left" style="width: 6.91%;"></div></div>云南省:<span id="yunnanid"></span>%
                                    </div>
                                </li>
                                                            <li>
                                    
                                    <div class="min">
                                        <div class="wai"><div class="nei n1 a-p4-left" style="width: 5.14%;"></div></div>西藏市:<span id="xizangid"></span>%
                                    </div>
                                </li>
                                
                                 
                                    <div class="min">
                                        <div class="wai"><div class="nei n1 a-p4-left" style="width: 5.14%;"></div></div>蒙古市:<span id="mengguid"></span>%
                                    </div>
                                </li>
                                
                                    <div class="min">
                                        <div class="wai"><div class="nei n1 a-p4-left" style="width: 5.14%;"></div></div>黑龙江:<span id="heilongid"></span>%
                                    </div>
                                </li>
                                
                                                                        </ul>
                </div>
            </div>

        </div>
        <div class="modular">
            <div class="titleBox"><div class="title">融资人信息</div><div class="time">截至<span><%=a %></span>年<span><%=b %></span>月<span><%=c %></span>日</div></div>
            <div class="get-msg">
                                                                                    <div class="msg msg1">
                          		 融资人总数: <span>32万6974人</span>
                            
                        </div>
                                        <!--
                                                    <div class="zb"><?/*=$v5['remark'];*/?></div>
                    -->                            </div>
            <!--<div class="no-promise clearfix">
                <div class="mid clearfix">
                    <p class="my-tit"><?/*=empty($financier_title1)?'':$financier_title1;*/?></p>
                    <table class="ta1">
                        <tbody>
                                                                                    <tr>
                                    <td><?/*=$v6['attribute']*/?></td>
                                    <td class="td-r"><?/*=$v6['value']*/?></td>
                                </tr>
                                                                            </tbody>
                    </table>
                    <table class="ta2">
                        <tbody>
                                                                                    <tr>
                                    <td><?/*=$v7['attribute']*/?></td>
                                    <td class="td-r"><?/*=$v7['value']*/?></td>
                                </tr>
                                                                            </tbody>
                    </table>
                </div>
            </div>-->
            <div class="get-base">
                <div class="mid">
                    <p class="my-tit">融资人地域分布</p>
                    <div class="con-left">
                        <ul>
                                                                                                <li>
                                        
                                        <div class="min">
                                            <div class="wai"><div class="nei n1 a-p4-left" style="width: 20.29%;"></div></div>25岁及以下:<span >20.29%</span>
                                        </div>
                                    </li>
                                                                    <li>
                                        
                                        <div class="min">
                                            <div class="wai"><div class="nei n1 a-p4-left" style="width: 34.66%;"></div></div>26-35岁:<span>34.66%</span>
                                        </div>
                                    </li>
                                                                    <li>
                                       
                                        <div class="min">
                                            <div class="wai"><div class="nei n1 a-p4-left" style="width: 27.59%;"></div></div>36-45岁:<span>27.59%</span>
                                        </div>
                                    </li>
                                                                    <li>
                                        
                                        <div class="min">
                                            <div class="wai"><div class="nei n1 a-p4-left" style="width: 17.46%;"></div></div>46岁及以上:<span>17.46%</span>
                                        </div>
                                    </li>
                                                                                    </ul>
                    </div>
                    <div class="con-right">
                        <div id="get-pie" _echarts_instance_="ec_1509847569650" style="-webkit-tap-highlight-color: transparent; user-select: none; position: relative; background: transparent;"><div style="position: relative; overflow: hidden; width: 350px; height: 365px; cursor: default;"><canvas width="525" height="547" data-zr-dom-id="zr_0" style="position: absolute; left: 0px; top: 0px; width: 350px; height: 365px; user-select: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></canvas></div><div></div></div>
                    </div>

                </div>
            </div>
            <div class="get-area">
                <div class="mid">
                    <div class="my-tit"></div>
                    <ul>
                                                                                    <li>
                                    
                                    <div class="min">
                                        <div class="wai"><div class="nei n1 a-p4-left" style="width: 11.99%;"></div></div>广东省:<span>11.99%</span>
                                    </div>
                                </li>
                                                            <li>
                                    
                                    <div class="min">
                                        <div class="wai"><div class="nei n1 a-p4-left" style="width: 9.48%;"></div></div>河南省:<span>9.48%</span>
                                    </div>
                                </li>
                                                            <li>
                                    
                                    <div class="min">
                                        <div class="wai"><div class="nei n1 a-p4-left" style="width: 9.21%;"></div></div>四川省:<span>9.21%</span>
                                    </div>
                                </li>
                                                            <li>
                                   
                                    <div class="min">
                                        <div class="wai"><div class="nei n1 a-p4-left" style="width: 5.59%;"></div></div>江苏省:<span>5.59%</span>
                                    </div>
                                </li>
                                                            <li>
                                    
                                    <div class="min">
                                        <div class="wai"><div class="nei n1 a-p4-left" style="width: 5.08%;"></div></div>湖南省:<span>5.08%</span>
                                    </div>
                                </li>
                                                                        </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    //    第一个柱状图，月度交易总额
    var arrBar1=[
                                    {month:'2017/04',value:'40.89'},
                            {month:'2017/05',value:'49.67'},
                            {month:'2017/06',value:'55.40'},
                            {month:'2017/07',value:'62.83'},
                            {month:'2017/08',value:'61.89'},
                            {month:'2017/09',value:'61.11'},
                        ];
    //    第二个柱状图，月度交易笔数
    var arrBar2=[
                        {month:'2017/04',value:'9.68'},
                {month:'2017/05',value:'12.48'},
                {month:'2017/06',value:'15.12'},
                {month:'2017/07',value:'15.62'},
                {month:'2017/08',value:'14.14'},
                {month:'2017/09',value:'12.82'},
                    ];
    //    第一个饼图，投资人基本信息,第一参数为女性的数值，第二参数为男性的数值
    var arrInvest=[
                        46.22,
                53.78,
                    ];

    //    第二个饼图，融资人基本信息,第一参数为女性的数值，第二参数为男性的数值
    var arrGet=[
                        25.31,
                74.69,
                    ];
</script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/js3/echarts.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/js3/operational_data.js"></script>
        <div class="footer fix">
    <div class="footer-content auto fix cl">
        <div class="fix">
            <div class="park-1   l fix">
                <div class="text l">
                    <dl>
                          <dt>新手帮助</dt>
                        <dd>
                            <a href="#">新手指引</a>
                        </dd>
                        <dd>
                            <a href="${pageContext.request.contextPath }/jsp/helppage/helppage.jsp">帮助中心</a>
                        </dd>
                        <dd>
                            <a href="${pageContext.request.contextPath }/jsp/helppage/help-price.jsp?mark=70">资费介绍</a>
                        </dd>
                    </dl>
                </div>
                <div class="text l">
                    <dl>
                        <dt>安全保障</dt>
                        <dd>
                            <a href="${pageContext.request.contextPath }/laws">法律法规</a>
                        </dd>
                        <dd>
                            <a href="${pageContext.request.contextPath }/guarantee">安全保障</a>
                        </dd>
                        <dd>
                            <a href="${pageContext.request.contextPath }/partners">合作机构</a>
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
                <div class="p-nm fa f40  g-orange2">1010-1218</div>
                <div class="server-time mt5">客服热线（服务时间：9:00-22:00）</div>
                <div class="server-icon rel">
                    <div class="mail-int-box" style="display:none">
                        <div class="mail-int   tl">
                            <i class="arrow arrow-int abs icon"></i>
                            <div class="f12 b g3">客服邮箱：</div>
                            <div class="f12">
                                <a>service@tuandai.com</a>
                            </div>
                            <div class="f12">
                                <a>或kefu@tuandai.com</a>
                            </div>
                        </div>
                    </div>
                    <div class="qq-int-box" style="display:none">
                        <div class="qq-int   tl">
                            <i class="arrow  arrow-qq abs icon"></i>
                            <div class="f12 b g3">群号：
                                439444714
                            </div>
                            <div class="f12">用于已投资用户交流；加群请备注手机号，并耐心等待管理员审核。</div>
                        </div>
                    </div>
                    <a class="online icon" href="http://www.sobot.com/chat/pc/index.html?sysNum=20ab7dce1e3346e8b90b649bd8baf591" target="_blank" title="在线服务" rel="nofollow"></a>
                    <a class="mail icon c-poi"></a>
                </div>
            </div>
        </div>
        <div class="address fa f12 tc mt15">2010-
            2017 版权所有 © 团贷网
            <a href="#" target="_blank" rel="nofollow">粤ICP备12043601号-1</a> <span style="width: 18px; height: 21px; vertical-align: middle; margin-left:5px; margin-right:5px; display: inline-block; background:url(//js.tuandai.com/images/default/links.png?v=20160629001) no-repeat; background-position: -523px -375px"></span>
            <a href="#" target="_blank">粤公网安备44190002000538号</a>&nbsp;东莞团贷网互联网科技服务有限公司 地址：东莞市南城街道莞太路111号民间金融大厦1号楼28楼  </div>
    </div>
    <div class="security tc">
        <a class="case1" rel="nofollow" href="#" target="_blank"></a>
        <a class="case2" rel="nofollow" href="#" target="_blank"></a>
        <a class="case3" rel="nofollow" href="#" target="_blank"></a>
        <a class="case4" rel="nofollow" href="#" target="_blank"></a>
        <a class="case5" rel="nofollow" href="#" target="_blank"></a>
        <a class="case6" rel="nofollow" href="#" target="_blank"></a>
        <a class="case7" rel="nofollow" href="#" target="_blank"></a>
        <a class="case8" rel="nofollow" id="_pingansec_bottomimagesmall_p2p" href="#"></a>
    </div>
</div>
<div class="tool">
    <div class="t-box rel" onclick="javascript:void(0);">
        <div class="dan-tip abs tc" style="display: none; opacity: 1;">市场有风险投资需谨慎<span class="triangle db"></span></div>
        <i class="t6"></i>
        <a href="javascript:;">风险提示</a>
    </div>
    <div class="t-box">
        <i class="t1"></i>
        <a href="javascript:;">在线客服</a>
    </div>
    <div class=" t-box"">
        <i class="t2"></i>
        <a href="javascript:;">帮助中心</a>
    </div>
    <div class=" t-box">
        <i class="t3"></i>
        <a class="" href="javascript:;">计算工具</a>
    </div>
    <div class="t-box to-top" onclick="javascript:;" style="display: none;">
        <i class="t5"></i>
        <a href="javascript:;" class="pt10">回到顶部</a>
    </div>
</div>
<script type="text/javascript">
                        var isWePlanProject = false; //标记是否在We计划详情页
</script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/js3/thirdlib.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/js3/public.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/js3/project_dialog.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/js3/about_us_left.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/js3/foot.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/js3/settdwcookie.js"></script>
<script>
    var shence_user_id = 'AbxExWdTpPyYC7dY8AWknLhbPfrDC2qHtf/ImmhZtPmTuXuVF883WA6fWWDLYcNC5IfYv04E16dVVJz27Cb0fw==';
    (function(para) {
        var p = para.sdk_url, n = para.name, w = window, d = document, s = 'script',x = null,y = null;
        w['sensorsDataAnalytic201505'] = n;
        w[n] = w[n] || function(a) {return function() {(w[n]._q = w[n]._q || []).push([a, arguments]);}};
        var ifs = ['track','quick','register','registerPage','registerOnce','clearAllRegister','trackSignup', 'trackAbtest', 'setProfile','setOnceProfile','appendProfile', 'incrementProfile', 'deleteProfile', 'unsetProfile', 'identify','login','logout','trackLink','clearAllRegister'];
        for (var i = 0; i < ifs.length; i++) {
            w[n][ifs[i]] = w[n].call(null, ifs[i]);
        }
        if (!w[n]._t) {
            x = d.createElement(s), y = d.getElementsByTagName(s)[0];
            x.async = 1;
            x.src = p;
            y.parentNode.insertBefore(x, y);
            w[n].para = para;
        }
    })({
        //参数设置
        sdk_url: '# ',
        name: 'sa',
        server_url:'#',
        //设置渠道来源参数
        source_channel: ['tdfrom'],
        //打通APP和网页
        use_app_track: true,
        //自动采集点击事件
        heatmap:{}
    });
    if(shence_user_id != ''){
        sa.login(shence_user_id);
    }
    sa.quick('autoTrack'); //神策系统必须是1.4最新版及以上
</script>
   <script type="text/javascript">
  
   
   
   
   function getRootPath(){
            //获取当前网址，如： http://localhost:8083/uimcardprj/share/meun.jsp
            var curWwwPath = window.document.location.href;
            //获取主机地址之后的目录，如： uimcardprj/share/meun.jsp
            var pathName = window.document.location.pathname;
            var pos = curWwwPath.indexOf(pathName);
            //获取主机地址，如： http://localhost:8083
            var localhostPaht = curWwwPath.substring(0, pos);
            //获取带"/"的项目名，如：/uimcardprj
            var projectName = pathName.substring(0, pathName.substr(1).indexOf('/') + 1);
            return (localhostPaht + projectName+"/");        
}


   var time=$(".time").val();
   var zongjin=$("#zongjin").val();
   var bishu=$("#bishu").val;
   var yuqishouyi=$("#yuqishouyi").val();
   var renshu=$("#renshu").val();
   var renshu125=$("#renshu125").val();
   var guangdongid=$("#guangdongid").val();
    var hubeiid=$("#hubeiid").val();
    var hunanid=$("#hunanid").val();
    var yunnanid=$("#yunnanid").val();
    var xizangid=$("#xizangid").val();
     var mengguid=$("#mengguid").val();
      var heilongid=$("#heilongid").val();
    var rootPath=getRootPath();
   var year=0; //
   var zongjin1=0;//总金额
   var bishu1=0;//笔数//
   var yuqishouyi1=0;//预期收益
   var renshu1=0.0;//总人数
   var renshu25=0.0;//25岁以下
   var renshu35=0.0;//25-35岁人数
   var renshu45=0.0;//35-45岁人数
   var renshu46=0.0;//46岁人数以上
   var renshu251=0.0;//25岁以下百分数
   var renshu351=0.0;//25-35岁人数百分数
   var renshu451=0.0;//35-45岁人数百分数
   var renshu461=0.0;//46岁人数以上百分数
   var guangdong=0.0;//广东人数
   var hubei=0.0;//湖北人数
   var hunan=0.0;//湖南人数
   var yunnan=0.0;//云南人数
   var xizang=0.0;//西藏人数
   var menggu=0.0;//蒙古人数
   var heilong=0.0//黑龙江人数
   var guangdong1=0.0;//广东人数百分比
   var hubei1=0.0;//湖北人数百分比
   var hunan1=0.0;//湖南人数百分比
   var yunnan1=0.0;//云南人数百分比
   var xizang1=0.0;//西藏人数百分比
   var menggu1=0.0;//蒙古人数百分比
   var heilong1=0.0//黑龙江人数百分比
   
   function load(){
   
  
   $.post(rootPath+"findStandInvestzongjin.do",function(data){
   for(var i=0;i<data.length;i++){
   	zongjin1=data[i].stotelMoney+zongjin1;
   	bishu1++;
   yuqishouyi1=	data[i].stotelMoney*data[i].srate+yuqishouyi1;
   }
    $("#zongjin").text(zongjin1)
     $("#bishu").text(bishu1)
      $("#yuqishouyi").text(yuqishouyi1)
   },"json")
   
  	$.post(rootPath+"findUsersAll.do",function(data){
  	for(var i=0;i<data.length;i++){
  		renshu1++;
  	}
  	$("#renshu").text(renshu1)
  	$.post(rootPath+"findAccountNumber.do",function(data){
   
   for(var i=0;i<data.length;i++){
   
   	if(data[i]<=25){
   	renshu25++;
   	}
  else 	if(data[i]>25&&data[i]<=35){
   	renshu35++;
   	}
  else 	if(data[i]>35&&data[i]<=45){
   	renshu45++;
   	}
  else 	if(data[i]>45){
   	renshu46++;
   	}
   }
  	
  	
   renshu251= renshu25*100/renshu1;
    renshu251=renshu251.toFixed(2);
    
   renshu351=renshu35*100/renshu1;
    renshu351=renshu351.toFixed(2);
    
    renshu451=renshu45*100/renshu1;
    renshu451=renshu451.toFixed(2);
    
     renshu461=renshu46*100/renshu1;
    renshu461=renshu461.toFixed(2);
 
   $("#renshu125").text(renshu251);
   $("#renshu135").text(renshu351);
   $("#renshu145").text(renshu451);
   $("#renshu146").text(renshu461);
   },"json")
   
    $.post(rootPath+"findBasicByAll.do",function(data){
   
   for(var i=0;i<data.length;i++){
  
   if(data[i].address=="湖北"){
   
   hubei++;
   }
  if(data[i].address=="湖南"){
   hunan++;
   }
   if(data[i].address=="广东"){
   guangdong++;
   }
   if(data[i].address=="云南"){
   yunnan++;
   }
   if(data[i].address=="西藏"){
   xizang++;
   }
   if(data[i].address=="蒙古"){
   menggu++;
   }
   if(data[i].address=="黑龙江"){
   heilong++;
   }
   }
  	guangdong1=guangdong*100/renshu1;
   	guangdong1=guangdong1.toFixed(2);
   	$("#guangdongid").text(guangdong1);
   	
   	hubei1=hubei*100/renshu1;
   	hubei1=hubei1.toFixed(2);
   	$("#hubeiid").text(hubei1);
   	
   	hunan1=hunan*100/renshu1;
   	hunan1=hunan1.toFixed(2);
   	$("#hunanid").text(hunan1);
   	
   	yunnan1=yunnan*100/renshu1;
   	yunnan1=yunnan1.toFixed(2);
   	$("#yunnanid").text(yunnan1);
   	
   	xizang1=xizang*100/renshu1;
   	xizang1=xizang1.toFixed(2);
   	$("#xizangid").text(xizang1);
   	
   	menggu1=menggu*100/renshu1;
   	menggu1=menggu1.toFixed(2);
   	$("#mengguid").text(menggu1);
   	
   	heilong1=heilong*100/renshu1;
   	heilong1=heilong1.toFixed(2);
   	$("#heilongid").text(heilong1);
   	
   
   },"json")
  	},"json")
  	  
  
   
   
   
   }
   window.onload=load();
   </script>         

<img src="${pageContext.request.contextPath }/static/img3/SingleLogin.ashx" style="display: none;"></body></html>