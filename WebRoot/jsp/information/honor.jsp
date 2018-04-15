<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<!-- saved from url=(0048)http://info.tuandai.com/about/honor.jsp?mark=23 -->
<html lang="en-US" class=""><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><title>
            团贷荣誉 - 团贷网        </title><link rel="dns-prefetch" href="http://image.tuandai.com/"><link rel="dns-prefetch" href="http://js.tuandai.com/"><link rel="dns-prefetch" href="http://vip.tuandai.com/"><link rel="dns-prefetch" href="http://hd.tuandai.com/"><link rel="dns-prefetch" href="http://bbs.tuandai.com/"><meta name="renderer" content="webkit"><meta property="qc:admins" content="3542563377645164116375">
        <link rel="shortcut icon" href="${pageContext.request.contextPath }/css/css3/favicon.ico?v=201709201456">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/css/css3/base20151225.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/css/css3/public20151225.css">
        <link href="${pageContext.request.contextPath }/css/css3/about_public.css" rel="stylesheet">
        <script async="" src="${pageContext.request.contextPath }/js/js3/sensorsdata.min.js"></script>
        <script src="${pageContext.request.contextPath }/js/js3/hm.js"></script>
        <script type="text/javascript" async="" src="${pageContext.request.contextPath }/js/js3/webaccess.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath }/js/js3/jquery-1.7.2.min.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath }/js/js3/jquery.cookie.js"></script>
    <style type="text/css">.fancybox-margin{margin-right:16px;}</style></head>
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
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/css3/aptitude.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/css3/jquery.fancybox.css">
<div class="containder w1200 auto cl fix">
    <div class="position">您当前所在的位置：<a href="${pageContext.request.contextPath }/investmenthome.jsp">团贷网</a> &gt; <a href="${pageContext.request.contextPath }/history">企业文化</a> &gt;  团贷荣誉</div>

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
        <dd style="display: block;"><a href="${pageContext.request.contextPath }/jsp/information/honor.jsp" target="_blank" class="left-selected">团贷荣誉</a></dd>
        <dd style="display: block;"><a href="${pageContext.request.contextPath }/jsp/information/partners.jsp" target="_blank">合作机构</a></dd>
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

    <script type="text/javascript" src="${pageContext.request.contextPath }/js/js3/jquery.fancybox.pack.js"></script>
    <div class="r right-side w996">
        <div class="modular">
            <h2>团贷荣誉<i class="shareholder-icon h2-arrow"></i></h2>
            <div class="td_aptitude">
                <div class="aptitude">
                    <ul id="rong-little">
                                                                                <li><img src="${pageContext.request.contextPath }/static/img3/1498117617593.png" data-original="${pageContext.request.contextPath }/static/img3/1498117617593.png" alt="2016-2017年度东莞诚信服务示范单位" style="display: inline;">
                                                                <p class="lh20">2016-2017年度东莞诚信服务示范单位</p>
                            </li>
                                                                                <li><img src="${pageContext.request.contextPath }/static/img3/1498117640665.png" data-original="${pageContext.request.contextPath }/static/img3/1498117640665.png" alt="2016年度最佳网贷平台" style="display: inline;">
                                                                <p>2016年度最佳网贷平台</p>
                            </li>
                                                                                <li><img src="${pageContext.request.contextPath }/static/img3/1504171759213.jpg" data-original="${pageContext.request.contextPath }/static/img3/1504171759213.jpg" alt="东莞市第九届团贷网杯全民健身观音山万人登山大赛热心公益单位" style="display: inline;">
                                                                <p class="lh20">东莞市第九届团贷网杯全民健身观音山万人登山大赛热心公益单位</p>
                            </li>
                                                    
                                                                                 <li><img src="${pageContext.request.contextPath }/static/img3/1490170754580.jpg" data-original="${pageContext.request.contextPath }/static/img3/1490170754580.jpg" alt="团贷网获得“爱心企业奖”荣誉" style="display: inline;">
                                                                <p>团贷网获得“爱心企业奖”荣誉</p>
                            </li>
                                                                                <li><img src="${pageContext.request.contextPath }/static/img3/1484618953107.jpg" data-original="${pageContext.request.contextPath }/static/img3/1484618953107.jpg" alt="团贷网获评东莞最具社会公益性互联网金融机构" style="display: inline;">
                                                                <p class="lh20">团贷网获评东莞最具社会公益性互联网金融机构</p>
                            </li>
                                                                                <li><img src="${pageContext.request.contextPath }/static/img3/1484618846350.jpg" data-original="${pageContext.request.contextPath }/static/img3/1484618846350.jpg" alt="团贷网荣获2016“广东省自主创新标杆企业”荣誉" style="display: inline;">
                                                                <p class="lh20">团贷网荣获2016“广东省自主创新标杆企业”荣誉</p>
                            </li>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            <li class="hidden"><img src="./团贷荣誉 - 团贷网_files/wait_img.jpg" data-original="http://infoimage.tuandai.com/weihu/aptitude/1484618768905.jpg" alt="团贷网荣获2016最具社会责任感企业荣誉">
                                                                <p class="lh20">团贷网荣获2016最具社会责任感企业荣誉</p>
                            </li>
                                                                                <li class="hidden"><img src="${pageContext.request.contextPath }/static/img3/aptitude/wait_img.jpg" data-original="${pageContext.request.contextPath }/static/img3/aptitude/1476424524987.jpg" alt="团贷网荣获“热心公益企业”称号">
                                                                <p>团贷网荣获“热心公益企业”称号</p>
                            </li>
                                                                                <li class="hidden"><img src="${pageContext.request.contextPath }/static/img3/aptitude/wait_img.jpg" data-original="${pageContext.request.contextPath }/static/img3/aptitude/1472551927692.jpg" alt="团贷网荣膺“2016年互联网金融行业影响力品牌”">
                                                                <p class="lh20">团贷网荣膺“2016年互联网金融行业影响力品牌”</p>
                            </li>
                                                                                <li class="hidden"><img src="${pageContext.request.contextPath }/static/img3/aptitude/wait_img.jpg" data-original="${pageContext.request.contextPath }/static/img3/aptitude/1472552114740.jpg" alt="团贷网荣获2016年度普惠金融卓越品牌">
                                                                <p>团贷网荣获2016年度普惠金融卓越品牌</p>
                            </li>
                                                                                <li class="hidden"><img src="${pageContext.request.contextPath }/static/img3/aptitude/wait_img.jpg" data-original="${pageContext.request.contextPath }/static/img3/aptitude/1472610822526.jpg" alt="团贷网荣获中国互联网金融最佳责任典范奖">
                                                                <p>团贷网荣获中国互联网金融最佳责任典范奖</p>
                            </li>
                                                                                <li class="hidden"><img src="${pageContext.request.contextPath }/static/img3/aptitude/wait_img.jpg" data-original="${pageContext.request.contextPath }/static/img3/aptitude/1472610859526.jpg" alt="团贷网荣获“双优企业”暨“2014-2015年度东莞市优秀企业”">
                                                                <p class="lh20">团贷网荣获“双优企业”暨“2014-2015年度东莞市优秀企业”</p>
                            </li>
                                                                                <li class="hidden"><img src="${pageContext.request.contextPath }/static/img3/aptitude/wait_img.jpg" data-original="${pageContext.request.contextPath }/static/img3/aptitude/1472611136842.jpg" alt="团贷网荣获深媒会网贷专业委员会副会长单位">
                                                                <p class="lh20">团贷网荣获深媒会网贷专业委员会副会长单位</p>
                            </li>
                                                                                <li class="hidden"><img src="${pageContext.request.contextPath }/static/img3/aptitude/wait_img.jpg" data-original="${pageContext.request.contextPath }/static/img3/aptitude/1472611681817.jpg" alt="团贷网荣获第六届互联网金融与支付创新“2015年度卓越P2P平台奖”">
                                                                <p class="lh20">团贷网荣获第六届互联网金融与支付创新“2015年度卓越P2P平台奖”</p>
                            </li>
                                                                                <li class="hidden"><img src="${pageContext.request.contextPath }/static/img3/aptitude/wait_img.jpg" data-original="${pageContext.request.contextPath }/static/img3/aptitude/1472612763261.jpg" alt="团贷网荣膺中国网络信贷行业诚信金融服务机构">
                                                                <p class="lh20">团贷网荣膺中国网络信贷行业诚信金融服务机构</p>
                            </li>
                                                <div class="cl"></div>
                    </ul>
                </div>
                <a class="ap_duo" href="javascript:;">查看更多 <i></i></a>
                <a class="ap_shao" href="javascript:;">点击收缩 <i></i></a>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/js3/honor.js"></script>

<script>
    $(function () {
        $("img").lazyload({
            threshold: 10,
            effect : "fadeIn"
        });
    });
</script>
<script src="${pageContext.request.contextPath }/js/js3/jquery.lazyload.js" type="application/javascript"></script>        <div class="footer fix">
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
                    <a class="mail icon c-poi""></a>
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
    <div class="t-box" >
        <i class="t1"></i>
        <a href="javascript:;">在线客服</a>
    </div>
    <div class=" t-box">
        <i class="t2"></i>
        <a href="${pageContext.request.contextPath }/jsp/helppage/helppage.jsp">帮助中心</a>
    </div>
    <div class=" t-box" >
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