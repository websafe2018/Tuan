<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<!-- saved from url=(0051)http://info.tuandai.com/about/partners.jsp?mark=24 -->
<html lang="en-US"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><title>
            团贷网- P2P理财、P2P网贷首选网站,安全可靠的互联网金融平台！        </title><link rel="dns-prefetch" href="http://image.tuandai.com/"><link rel="dns-prefetch" href="http://js.tuandai.com/"><link rel="dns-prefetch" href="http://vip.tuandai.com/"><link rel="dns-prefetch" href="http://hd.tuandai.com/"><link rel="dns-prefetch" href="http://bbs.tuandai.com/"><meta name="renderer" content="webkit"><meta property="qc:admins" content="3542563377645164116375">
        <link rel="shortcut icon" href="${pageContext.request.contextPath }/css/css3/favicon.ico?v=201709201456">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/css/css3/base20151225.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/css/css3/public20151225.css">
        <link href="${pageContext.request.contextPath }/css/css3/about_public.css" rel="stylesheet">
        <script async="" src="${pageContext.request.contextPath }/js/js3/sensorsdata.min.js"></script>
        <script src="${pageContext.request.contextPath }/js/js3/hm.js"></script>
        <script type="text/javascript" async="" src="${pageContext.request.contextPath }/js/js3/webaccess.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath }/js/js3/jquery-1.7.2.min.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath }/js/js3/jquery.cookie.js"></script>
    </head>
    <body waid71fa0d88-5390-4b5b-a2f4-e45fa93d85e2="SA password protect entry checker">
                <div class="header">
    <div class="t-b  t-b-w lh40 bgff f12 fst cl">
        <div class="w1200 h40 auto g6">
            <div class="right-side  r inline-block-debug">
                <div class="inline-block-debug c-poi-a">
                    <a href="${pageContext.request.contextPath }/investmenthome.jsp" class="red">
                        <i class="icon dib hous-icon"></i>前往团贷网
                    </a>
                    <span>|</span>
                </div>
                                <div id="topinfo" class="inline-block-debug c-poi-a">
                                            <a href="javascript:login();" class="reg">登录</a><span>|</span><a href="javascript:register();" class="reg">注册</a><span>|</span>
                                    </div>
                <a target="_blank" href="${pageContext.request.contextPath }/jsp/helppage/helppage.jsp" rel="nofollow">帮助中心</a>
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

                <dl class="abs i-b-d vt about-us r0" id="myaccountScroll"><dt><a href="${pageContext.request.contextPath }/account"><i class="account-icon i-b-d icon vm"></i>我的账户</a></dt></dl>
            </div>
            <div class="nav r">
                <ul>
                    <li class="nav-t">
                        <a href="${pageContext.request.contextPath }/investmenthome.jsp">首页</a>
                    </li>
                    <li class="nav-t w130">
                        <div class="r rel tc  slid z3 r ">
                            <dl class="abs i-b-d vt guarantee r0">
                                <dt><a href="${pageContext.request.contextPath }/jsp/homepage/lntellgent.jsp">我要投资<i class="icon arrow i-b-d vm"></i></a></dt>
                                <dd style="overflow: hidden; height: 37px; display: none; margin-top: 0px; margin-bottom: 0px; padding-top: 0px; padding-bottom: 0px;">
                                    <a href="${pageContext.request.contextPath }/jsp/homepage/lntellgent.jsp" target="_blank">智能投资</a>
                                </dd>
                                <dd style="overflow: hidden; height: 37px; display: none; margin-top: 0px; margin-bottom: 0px; padding-top: 0px; padding-bottom: 0px;">
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
                        <a href="${pageContext.request.contextPath }/loadMoney">我要借款</a>
                    </li>
                </ul>

            </div>
            <a href="${pageContext.request.contextPath }/investmenthome.jsp" class="logo dib l">
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
    <div class="nav-w suspension   fixed z5 t0 l0 suspension" style="width:100%">
        <div class="nav-box auto w1200  fix">
            <div class="r rel tc  slid z3">
                <dl id="myaccount" class="abs i-b-d vt about-us r0"><dt><a href="${pageContext.request.contextPath }/account"><i class="account-icon i-b-d icon vm"></i>我的账户</a></dt></dl>
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
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/css3/partners.css">
<div class="containder w1200 auto cl fix">
    <div class="position">您当前所在的位置：<a href="${pageContext.request.contextPath }/investmenthome.jsp">团贷网</a> &gt; <a href="${pageContext.request.contextPath }/history.jsp">企业文化</a> &gt;  合作机构</div>

<div class="l left-side w218" id="left-side">
   <dl show="0" >
        <dt>关于我们<i class="shareholder-icon left-arrow-up"></i></dt>
        <dd style="display: block;"><a class="" href="${pageContext.request.contextPath }/jsp/information/platform.jsp" target="_blank">平台简介</a></dd>
        <dd style="display: block;"><a href="${pageContext.request.contextPath }/jsp/information/basicinfo.jsp" target="_blank">基本信息</a></dd>
        <dd style="display: block;"><a href="${pageContext.request.contextPath }/jsp/information/team.jsp" target="_blank">管理团队</a></dd>
        <dd style="display: block;"><a href="${pageContext.request.contextPath }/jsp/information/shareholder.jsp" target="_blank">集团投资方</a></dd>
        <dd style="display: block;"><a href="${pageContext.request.contextPath }/jsp/information/aptitude.jsp" target="_blank" >资质证书</a></dd>
        <dd style="display: block;"><a href="${pageContext.request.contextPath }/jsp/information/index.jsp" target="_blank">银行存管</a></dd>
        <dd style="display: block;"><a href="${pageContext.request.contextPath }/jsp/information/history.jsp" target="_blank">发展历程</a></dd>
        <dd style="display: block;"><a href="${pageContext.request.contextPath }/jsp/information/guest.jsp" target="_blank">政府关怀</a></dd>
        <dd style="display: block;"><a href="${pageContext.request.contextPath }/jsp/information/honor.jsp" target="_blank">团贷荣誉</a></dd>
        <dd style="display: block;"><a href="${pageContext.request.contextPath }/jsp/information/partners.jsp" target="_blank" class="left-selected">合作机构</a></dd>
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
       <dd style="display: none;"><a href=" ${pageContext.request.contextPath }/jsp/information/operational-data.jsp" target="_blank">运营数据</a></dd>
        <dd style="display: none;"><a href=" ${pageContext.request.contextPath }/jsp/information/report.jsp" target="_blank">运营报表</a></dd>
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
        <div class="modular">
            <h2>战略合作<i class="shareholder-icon h2-arrow"></i></h2>
            <div class="strategic">
                <ul>
                                        <li class="str1">
                        <a href="javascript:;">
                            <img src="${pageContext.request.contextPath }/static/img3/1499047855642.png" alt="民生资本">
                        </a>
                    </li>
                                        <li class="str2">
                        <a href="javascript:;">
                            <img src="${pageContext.request.contextPath }/static/img3/1499047872906.png" alt="盈生创新">
                        </a>
                    </li>
                                        <li class="str3">
                        <a href="javascript:;">
                            <img src="${pageContext.request.contextPath }/static/img3/1499047885418.png" alt="海慧科技">
                        </a>
                    </li>
                                        <li class="str4">
                        <a href="javascript:;">
                            <img src="${pageContext.request.contextPath }/static/img3/1499048102124.png" alt="北海宏泰">
                        </a>
                    </li>
                                        <li class="str5">
                        <a href="javascript:;">
                            <img src="${pageContext.request.contextPath }/static/img3/1499048113220.png" alt="巨人投资">
                        </a>
                    </li>
                                        <li class="str6">
                        <a href="javascript:;">
                            <img src="${pageContext.request.contextPath }/static/img3/1499048123346.png" alt="厦门银行">
                        </a>
                    </li>
                                        <li class="str7">
                        <a href="javascript:;">
                            <img src="${pageContext.request.contextPath }/static/img3/1499048138785.png" alt="分众传媒">
                        </a>
                    </li>
                                        <li class="str8">
                        <a href="javascript:;">
                            <img src="${pageContext.request.contextPath }/static/img3/1499048159293.png" alt="芝麻信用">
                        </a>
                    </li>
                                        <li class="str9">
                        <a href="javascript:;">
                            <img src="${pageContext.request.contextPath }/static/img3/1500361547278.png" alt="正合普惠">
                        </a>
                    </li>
                                        <li class="str10">
                        <a href="javascript:;">
                            <img src="${pageContext.request.contextPath }/static/img3/1499048364744.png" alt="俊拓金融">
                        </a>
                    </li>
                                        <li class="str11">
                        <a href="javascript:;">
                            <img src="${pageContext.request.contextPath }/static/img3/1499048376490.png" alt="达商小贷">
                        </a>
                    </li>
                                        <li class="str12">
                        <a href="javascript:;">
                            <img src="${pageContext.request.contextPath }/static/img3/1505829605358.png" alt="沐金农">
                        </a>
                    </li>
                                        <li class="str13">
                        <a href="javascript:;">
                            <img src="${pageContext.request.contextPath }/static/img3/1499048386892.png" alt="一点车贷">
                        </a>
                    </li>
                                        <li class="str14">
                        <a href="javascript:;">
                            <img src="${pageContext.request.contextPath }/static/img3/1505829624374.png" alt="拿下分期">
                        </a>
                    </li>
                                    </ul>
                <div class="cl"></div>
            </div>
        </div>
        <div class="modular">
            <h2>业务合作<i class="shareholder-icon h2-arrow"></i></h2>
            <div class="business">
                <ul>
                                        <li class="str1">
                        <p class="name">东莞市广众按揭代理有限公司</p>
                        <p class="number">注册号：441900001343131</p>
                        <div class="tanchang">
                            <p class="ming">东莞市广众按揭代理有限公司</p>
                            <p class="haoma">注册号：441900001343131&nbsp;&nbsp;&nbsp;&nbsp;中介机构</p>
                            <p class="jieshao">东莞市广众按揭代理有限公司是专业的信贷服务中介机构，凭借多年积累的资源优势，一方面依托金融机构，源源不断向其推荐优良客户, 配合做好各项金融创新业务，还经多年市场调研和严格筛选，建立起广泛的企业、个人客户群, 起到了金融机构与广大客户间纽带、桥梁之作用。广众按揭作为专业信贷中介机构, 运作规范, 严格把关，为企业和个人提供包括融资方案设计、融资项目操作等全面的融资咨询及融资服务。并通过与金融机构的长期合作，并建立了牢固的合作关系，通过不断的业务往来，形成了良好的信誉基础，并已成为东莞本土市场中介机构的佼佼者。</p>
                            <div class="guanbi"></div>
                        </div>
                    </li>
                                        <li class="str2">
                        <p class="name">东莞市江辉非融资性担保有限公司</p>
                        <p class="number">注册号：441900002586487</p>
                        <div class="tanchang">
                            <p class="ming">东莞市江辉非融资性担保有限公司</p>
                            <p class="haoma">注册号：441900002586487&nbsp;&nbsp;&nbsp;&nbsp;中介机构</p>
                            <p class="jieshao">东莞市江辉非融资性担保有限公司，注册资金2000万元人民币，公司秉承“安全、稳健、诚信、服务”的原则，坚持“信誉至上，务实创新”的经营理念，以担保为核心，配合投资及金融咨询业务等各种手段为客户提供系列化、个性化的优质配套服务。现拥有一支高素质、专业化的员工队伍为广大客户提供有效的融资担保业务。</p>
                            <div class="guanbi"></div>
                        </div>
                    </li>
                                        <li class="str3">
                        <p class="name">东莞市协融企业投资策划有限公司</p>
                        <p class="number">注册号：441900001603505</p>
                        <div class="tanchang">
                            <p class="ming">东莞市协融企业投资策划有限公司</p>
                            <p class="haoma">注册号：441900001603505&nbsp;&nbsp;&nbsp;&nbsp;中介机构</p>
                            <p class="jieshao">东莞市协融企业投资策划有限公司，成立于2013年5月，注册资金100万元人民币，是一家专业从事投资管理策划的金融服务机构。公司拥有专业的投融、金融、银行、财务专家团队，能为企业与投资人一站式专业化服务，业务种类涵盖企业投资策划、投资管理、资产管理、实业投资、项目投资、投资咨询、理财咨询、代办银行贷款手续、代办环保项目申报手续、代办科技项目申办手续等，协融坚持以坚实稳健的步伐与时俱进。</p>
                            <div class="guanbi"></div>
                        </div>
                    </li>
                                        <li class="str4">
                        <p class="name">东莞市志诚非融资性担保有限公司</p>
                        <p class="number">注册号：441900002548430</p>
                        <div class="tanchang">
                            <p class="ming">东莞市志诚非融资性担保有限公司</p>
                            <p class="haoma">注册号：441900002548430&nbsp;&nbsp;&nbsp;&nbsp;中介机构</p>
                            <p class="jieshao">东莞市志诚非融资性担保有限公司，注册资金1000万元人民币，是一家专业为企业和个人提供商业性担保的公司。目前公司的组织架构完善，运作流程严谨，公司自有一套完整的业务规章管理制度、内部风险控制制度和担保业务操作流程。自成立以来，一直与多家金融以及非金融机构建立了长期合作互信的战略联盟关系。已经为多家中小企业提供了非融资性担保。</p>
                            <div class="guanbi"></div>
                        </div>
                    </li>
                                        <li class="str5">
                        <p class="name">东莞市赤道投资管理咨询有限公司</p>
                        <p class="number">注册号：441900001833965 </p>
                        <div class="tanchang">
                            <p class="ming">东莞市赤道投资管理咨询有限公司</p>
                            <p class="haoma">注册号：441900001833965 &nbsp;&nbsp;&nbsp;&nbsp;中介机构</p>
                            <p class="jieshao">东莞市赤道投资发展有限公司，成立于2014年1月，注册资金50万元人民币，是一家专注与从事投资管理的第三方金融服务机构。公司以服务社会为宗旨，坚持立足东莞，致力于实业投资、股权投资、投资管理、融资担保、受托资金管理、资本运作等专业化的金融服务。赤道投资坚持企业化管理、市场化运作、经济规律化运营，并始终将风险管控做为公司的基本理念贯彻到投资运作的每个环节，本着对客户服务至上、诚信保障，实现金融管理稳定持续性成长。</p>
                            <div class="guanbi"></div>
                        </div>
                    </li>
                                        <li class="str6">
                        <p class="name">绵竹汇通典当有限责任公司</p>
                        <p class="number">注册号：510683000035952</p>
                        <div class="tanchang">
                            <p class="ming">绵竹汇通典当有限责任公司</p>
                            <p class="haoma">注册号：510683000035952&nbsp;&nbsp;&nbsp;&nbsp;中介机构</p>
                            <p class="jieshao">绵竹汇通典当有限责任公司注册资本为人民币2000万元，经营范围包括：动产质押典当业务；财产权利质押典当业务；房地产抵押典当业务；限额内绝当物品的变卖；鉴定评估及咨询服务；商务部依法批准的其他典当业务。四川绵竹汇通典当有限责任公司主要创立人员来自于房地产行业、银行业、担保业、实体企业，背景实力强大，资金实力雄厚。公司主要成员均拥有丰富的金融典当及相关行业经验，目前汇通典当正在筹建成都分公司，业务范围将辐射整个四川地区。</p>
                            <div class="guanbi"></div>
                        </div>
                    </li>
                                        <li class="str7">
                        <p class="name">东莞市联胜非融资性担保有限公司</p>
                        <p class="number">注册号：441900000615044</p>
                        <div class="tanchang">
                            <p class="ming">东莞市联胜非融资性担保有限公司</p>
                            <p class="haoma">注册号：441900000615044&nbsp;&nbsp;&nbsp;&nbsp;中介机构</p>
                            <p class="jieshao">东莞市联胜非融资性担保有限公司，成立于2009年8月，注册资金5000万元人民币，是一家专业为企业和个人提供商业性担保的公司。公司组织机构完善，内部管理严密，业务人员工作经验丰富，已建立起一套完整的业务规章管理制度、内部风险控制制度和担保业务操作流程。自成立以来，公司一直与多家金融以及非金融机构建立了长期合作互信的战略联盟关系，已经为多家中小企业提供了担保，帮助他们解决了难题，有效的促进了区域中小企业的健康发展，取得了良好的社会效益。公司将紧紧围绕“诚信、合作、共赢”的核心价值观，突出以人为本，资源资本化，为客户创造价值，以及客户利益至上的宗旨，竭诚为企业及个人服务。</p>
                            <div class="guanbi"></div>
                        </div>
                    </li>
                                        <li class="str8">
                        <p class="name">达州市通川区达商小额贷款有限公司</p>
                        <p class="number">注册号：511702000049960</p>
                        <div class="tanchang">
                            <p class="ming">达州市通川区达商小额贷款有限公司</p>
                            <p class="haoma">注册号：511702000049960&nbsp;&nbsp;&nbsp;&nbsp;中介机构</p>
                            <p class="jieshao">达州市通川区达商小额贷款有限公司于2014年6月正式营业，公司注册资本5.25亿元人民币，公司系成都达州商会直属企业。达商小贷成立后严格按照“依靠政策 注重实际 效率优先循序渐进”的发展战略，坚定“达信于德商誉至上”的经营理念，坚持“立足小微企业 服务区域经济”的经营方针，秉承“忠诚拼搏 艰苦创业”的经营思想，积极主动开拓市场，发展客户，在成立的短短两年间，业务突飞猛进，迅速发展为四川信贷行业的龙头企业。</p>
                            <div class="guanbi"></div>
                        </div>
                    </li>
                                    </ul>
                <div class="cl"></div>
            </div>
        </div>
        <div class="modular">
            <h2>商务合作<i class="shareholder-icon h2-arrow"></i></h2>
                        <div class="cooperation">
                <div class="tu"><img src="${pageContext.request.contextPath }/static/img3/1472639121340.jpg" alt="优米网"></div>
                <div class="details">
                                        <p class="umiwi">优米网 — — www.umiwi.com</p>
                    <p class="wz">北京优视米网络科技有限公司成立于2010年3月17日，是由著名制片人王利芬女士创办的，是经国家广播电影电视总局批准拥有视频节目制作权和视频试听许可证的民营机构。优米公司面向创业者提供多维度的服务，优米网是公司旗下的视频网站 …… <a href="http://info.tuandai.com/about/www.umiwi.com">[查看详情]</a></p>
                    <a href="http://www.umiwi.com/" target="_blank" class="youmi"></a>
                </div>
                <div class="cl"></div>
            </div>
                    </div>
        <div class="modular">
            <h2>媒体合作<i class="shareholder-icon h2-arrow"></i></h2>
            <div class="strategic media">
                <ul>
                                        <li class="str1">
                        <a href="#" target="_blank" style="text-align: center;">
                            <img src="${pageContext.request.contextPath }/static/img3/1472614350161.jpg" alt="央视网">
                            <p>查看更多<i></i></p>
                        </a>
                    </li>
                                        <li class="str2">
                        <a href="#" target="_blank" style="text-align: center;">
                            <img src="${pageContext.request.contextPath }/static/img3/1472614363161.jpg" alt="和讯">
                            <p>查看更多<i></i></p>
                        </a>
                    </li>
                                        <li class="str3">
                        <a href="#" target="_blank" style="text-align: center;">
                            <img src="${pageContext.request.contextPath }/static/img3/1472614375852.jpg" alt="中国经济网">
                            <p>查看更多<i></i></p>
                        </a>
                    </li>
                                        <li class="str4">
                        <a href="#" target="_blank" style="text-align: center;">
                            <img src="${pageContext.request.contextPath }/static/img3/1472614387690.jpg" alt="中国证券网">
                            <p>查看更多<i></i></p>
                        </a>
                    </li>
                                        <li class="str5">
                        <a href="#" target="_blank" style="text-align: center;">
                            <img src="${pageContext.request.contextPath }/static/img3/1472614400598.jpg" alt="网易">
                            <p>查看更多<i></i></p>
                        </a>
                    </li>
                                        <li class="str6">
                        <a href="#" target="_blank" style="text-align: center;">
                            <img src="${pageContext.request.contextPath }/static/img3/1472614425392.jpg" alt="第1财经">
                            <p>查看更多<i></i></p>
                        </a>
                    </li>
                                        <li class="str7">
                        <a href="#" target="_blank" style="text-align: center;">
                            <img src="${pageContext.request.contextPath }/static/img3/1472614459118.jpg" alt="腾讯网">
                            <p>查看更多<i></i></p>
                        </a>
                    </li>
                                        <li class="str8">
                        <a href="#" target="_blank" style="text-align: center;">
                            <img src="${pageContext.request.contextPath }/static/img3/1472614472118.jpg" alt="新快报">
                            <p>查看更多<i></i></p>
                        </a>
                    </li>
                                        <li class="str9">
                        <a href="#" target="_blank" style="text-align: center;">
                            <img src="${pageContext.request.contextPath }/static/img3/1472614503392.jpg" alt="南方都市报">
                            <p>查看更多<i></i></p>
                        </a>
                    </li>
                                        <li class="str10">
                        <a href="#" target="_blank" style="text-align: center;">
                            <img src="${pageContext.request.contextPath }/static/img3/1472614790967.jpg" alt="羊城晚报">
                            <p>查看更多<i></i></p>
                        </a>
                    </li>
                                        <li class="str11">
                        <a href="#" target="_blank" style="text-align: center;">
                            <img src="${pageContext.request.contextPath }/static/img3/1472614492392.jpg" alt="人民网">
                            <p>查看更多<i></i></p>
                        </a>
                    </li>
                                        <li class="str12">
                        <a href="#" target="_blank" style="text-align: center;">
                            <img src="${pageContext.request.contextPath }/static/img3/1472614519967.jpg" alt="光明网">
                            <p>查看更多<i></i></p>
                        </a>
                    </li>
                                        <li class="str13">
                        <a href="#" target="_blank" style="text-align: center;">
                            <img src="${pageContext.request.contextPath }/static/img3/1472614775967.jpg" alt="南方日报">
                            <p>查看更多<i></i></p>
                        </a>
                    </li>
                                        <li class="str14">
                        <a href="#" target="_blank" style="text-align: center;">
                            <img src="${pageContext.request.contextPath }/static/img3/1472614538392.jpg" alt="网贷之家">
                            <p>查看更多<i></i></p>
                        </a>
                    </li>
                                        <li class="str15">
                        <a href="#" target="_blank" style="text-align: center;">
                            <img src="${pageContext.request.contextPath }/static/img3/1472614804900.jpg" alt="第一财经日报">
                            <p>查看更多<i></i></p>
                        </a>
                    </li>
                                    </ul>
                <div class="cl"></div>
            </div>
        </div>
    </div>
    <div class="beijing"></div>
</div>
<!--<script src="/dist/scripts/about_us/about_us_public.js?v=20160726001"></script>-->
<script type="text/javascript">

    $(".business ul li").click(function () {
        $(".beijing").show();
        $(this).find('.tanchang').show();
    })
    $(".guanbi").click(function (even) {
        $(".beijing").hide();
        $(".tanchang").hide();
        even.stopPropagation();
    })

</script>        <div class="footer fix">
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
                            <a href="${pageContext.request.contextPath }/risk-controller">安全保障</a>
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
                    <a class="online icon" href="#" target="_blank" title="在线服务" rel="nofollow"></a>
                    <a class="mail icon c-poi" ></a>
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
        <div class="dan-tip abs tc" style="display:none">市场有风险投资需谨慎<span class="triangle db"></span></div>
        <i class="t6"></i>
        <a href="javascript:;">风险提示</a>
    </div>
    <div class="t-box">
        <i class="t1"></i>
        <a href="javascript:;">在线客服</a>
    </div>
    <div class=" t-box">
        <i class="t2"></i>
        <a href="${pageContext.request.contextPath }/jsp/helppage/helppage.jsp">帮助中心</a>
    </div>
    <div class=" t-box">
        <i class="t3"></i>
        <a class="" href="${pageContext.request.contextPath }/jsp/homepage/IntelligentCalculator.jsp">计算工具</a>
    </div>
    <div class="t-box to-top" onclick="javascript:;" style="display: block;">
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
    var shence_user_id = '';
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
        sdk_url: '${pageContext.request.contextPath }/js/js3/sensorsdata.min.js ',
        name: 'sa',
        server_url:'https://sensorslog.tdw.cn/sa?project=default',
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
            

<img src="SingleLogin.jsp" style="display: none;"></body></html>