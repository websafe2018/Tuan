<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<!-- saved from url=(0048)http://info.tuandai.com/about/guest.jsp?mark=10 -->
<html lang="en-US"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><title>
            政府关怀 - 团贷网        </title><link rel="dns-prefetch" href="http://image.tuandai.com/"><link rel="dns-prefetch" href="http://js.tuandai.com/"><link rel="dns-prefetch" href="http://vip.tuandai.com/"><link rel="dns-prefetch" href="http://hd.tuandai.com/"><link rel="dns-prefetch" href="http://bbs.tuandai.com/"><meta name="renderer" content="webkit"><meta property="qc:admins" content="3542563377645164116375">
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
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/css3/news.css">
<div class="containder w1200 auto cl fix">
    <div class="position">您当前所在的位置：<a href="${pageContext.request.contextPath }/investmenthome.jsp">团贷网</a> &gt; <a href="${pageContext.request.contextPath }/history">企业文化</a> &gt;  政府关怀</div>

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
        <dd style="display: block;"><a href="${pageContext.request.contextPath }/jsp/information/guest.jsp" target="_blank" class="left-selected">政府关怀</a></dd>
        <dd style="display: block;"><a href="${pageContext.request.contextPath }/jsp/information/honor.jsp" target="_blank">团贷荣誉</a></dd>
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

    <div class="r right-side w996">
        <div class="modular ">
            <h2>政府关怀<i class="shareholder-icon h2-arrow"></i></h2>
            <div class="list">
                                <dl>
                    <dt><img src="${pageContext.request.contextPath }/static/img3/1500886066788.jpg" alt="广东省工商联副主席卢小周一行莅临团贷网集团调研指导 " width="275" height="173"></dt>
                    <dd>
                        <div class="title"> <span class="time">2017-06-14</span><a href="${pageContext.request.contextPath }/jsp/information/govermentAttention1.jsp" target="_blank">广东省工商联副主席卢小周一行莅临团贷网集团调研指导 </a></div>
                        <div class="intr">
                            6月14日下午，广东省工商联（总商会）党组成员、副主席卢小周一行，在东莞市工商联副主席梁德堂等的陪同下，到团贷网集团（登记主体为派生集团，以下简称团贷网）东莞总部调研指导。 <a href="${pageContext.request.contextPath }/jsp/information/govermentAttention1.jsp" target="_blank">[全文]
                            </a></div>
                    </dd>
                </dl>
                                <dl>
                    <dt><img src="${pageContext.request.contextPath }/static/img3/1502791158785.jpg" alt="中共达州市委常委、达川区委书记一行莅临团贷网集团" width="275" height="173"></dt>
                    <dd>
                        <div class="title"> <span class="time">2017-06-10</span><a href="${pageContext.request.contextPath }/jsp/information/govermentAttention2.jsp" target="_blank">中共达州市委常委、达川区委书记一行莅临团贷网集团</a></div>
                        <div class="intr">
                            游子听乡音容易感动，今天，唐总家乡——达州市达川区的十余位党政领导走进团贷网集团（以下简称团贷网）总部，“带着乡情看望、了解团贷网”。来访嘉宾包括中共达州市委常委、达川区委书记许国斌，区委副书记李祝荣，达州驻深圳办事处主任谭旭等领导。 <a href="${pageContext.request.contextPath }/jsp/information/govermentAttention2.jsp" target="_blank">[全文]
                            </a></div>
                    </dd>
                </dl>
                                <dl>
                    <dt><img src="${pageContext.request.contextPath }/static/img3/1502790873690.jpg" alt="佳木斯市东风区委书记一行莅临团贷网参观交流" width="275" height="173"></dt>
                    <dd>
                        <div class="title"> <span class="time">2017-05-09</span><a href="${pageContext.request.contextPath }/jsp/information/govermentAttention3.jsp" target="_blank">佳木斯市东风区委书记一行莅临团贷网参观交流</a></div>
                        <div class="intr">
                            5月19日，佳木斯市东风区委书记周政治一行在东莞市南城区相关领导的陪同下，到团贷网参观交流。派生集团总裁、团贷网联合创始人张林，总裁办公共事业部总监欧阳丹丹等接待了周书记一行，并开展了交流会。 <a href="${pageContext.request.contextPath }/jsp/information/govermentAttention3.jsp" target="_blank">[全文]
                            </a></div>
                    </dd>
                </dl>
                                <dl>
                    <dt><img src="${pageContext.request.contextPath }/static/img3/1502790483946.jpg" alt="民建东莞市委会周楚良主委一行莅临团贷网调研 " width="275" height="173"></dt>
                    <dd>
                        <div class="title"> <span class="time">2017-03-08</span><a href="${pageContext.request.contextPath }/jsp/information/govermentAttention4.jsp" target="_blank">民建东莞市委会周楚良主委一行莅临团贷网调研 </a></div>
                        <div class="intr">
                            3月8日上午，民建东莞市委会周楚良主委一行莅临团贷网调研，团贷网联合创始人兼总裁张林、企业文化中心总监李朋书、总裁办公共事业部总监欧阳丹丹等接待了调研组。
 <a href="${pageContext.request.contextPath }/govermentAttention4" target="_blank">[全文]
                            </a></div>
                    </dd>
                </dl>
                                <dl>
                    <dt><img src="${pageContext.request.contextPath }/static/img3/1489468316918.jpg" alt="东莞南城街道党委副书记梁寿如一行莅临团贷网调研" width="275" height="173"></dt>
                    <dd>
                        <div class="title"> <span class="time">2017-02-28</span><a href="${pageContext.request.contextPath }/jsp/information/govermentAttention5.jsp" target="_blank">东莞南城街道党委副书记梁寿如一行莅临团贷网调研</a></div>
                        <div class="intr">
                            2月28日上午，南城街道党委副书记、办事处主任梁寿如，街道办事处副主任霍永健、张见荣，以及金融办、商务办、党政办等领导莅临团贷网调研，团贷网联合创始人兼总裁张林、总裁办公共事业部总监欧阳丹丹等接待了调研组一行。 <a href="${pageContext.request.contextPath }/jsp/information/govermentAttention5.jsp" target="_blank">[全文]
                            </a></div>
                    </dd>
                </dl>
                                <dl>
                    <dt><img src="${pageContext.request.contextPath }/static/img3/d1.jpg" alt="国务院参事在东莞市领导陪同下考察指导团贷网" width="275" height="173"></dt>
                    <dd>
                        <div class="title"> <span class="time">2015-12-17</span><a href="${pageContext.request.contextPath }/jsp/information/govermentAttention6.jsp" target="_blank">国务院参事在东莞市领导陪同下考察指导团贷网</a></div>
                        <div class="intr">
                            16日下午，国务院参事汤敏、对外经济贸易大学金融学院院长丁志杰、香港工业总会主席钟志平和国务院参事室特约研究员左小蕾一行，在东莞市副市长喻丽君、南城街道办主任梁寿如及东莞相关部门负责人的陪同下，来到团贷网考察指导。 <a href="${pageContext.request.contextPath }/govermentAttention6" target="_blank">[全文]
                            </a></div>
                    </dd>
                </dl>
                                <dl>
                    <dt><img src="${pageContext.request.contextPath }/static/img3/20150728103258_1506.jpg" alt="市商务局携江西财大同学会走访团贷网" width="275" height="173"></dt>
                    <dd>
                        <div class="title"> <span class="time">2015-07-28</span><a href="${pageContext.request.contextPath }/jsp/information/govermentAttention7.jsp" target="_blank">市商务局携江西财大同学会走访团贷网</a></div>
                        <div class="intr">
                            7月19日上午，东莞商务局携江西财经大学港澳博士同学会进行商务交流与课程活动。随行同学会了解到东莞市委市政府多次关注走访本地互联网金融企业团贷网，在市委书记徐建华的建议下，首站走进团贷网交流探讨。 <a href="${pageContext.request.contextPath }/govermentAttention7" target="_blank">[全文]
                            </a></div>
                    </dd>
                </dl>
                            </div>
            
<div class="page">
            <span class="prev">上一页</span>
    
                <span class="current">1</span>
        <!--当前页大于3，总页数大于7，就显示...-->
    
        <!--总页数 减去 当前页，大于4就显示...-->
        <!--如果只有一页就不显示最后一页-->
                        <a href="${pageContext.request.contextPath }/guest" style="margin-right:5px;">2</a>
            
            <a class="next" href="${pageContext.request.contextPath }/guest">下一页</a>
        <span class="words">转到</span>
    <input type="text" class="pagenum" name="" id="pagenum" value=""><span class="words">页</span><a href="javascript:void(0);" id="goto" data-url="${pageContext.request.contextPath }/guest">确定</a>
</div>
<!-- <script>
    function goto(){
        var url = $("#goto").data("url");
        var pagenum = $("#pagenum").val();
        pagenum = pagenum.replace(/<\/?[^>]*>/g,''); //去除HTML tag
        window.location.href = url+'&page='+pagenum+'&pagenum='+pagenum;
    }
</script>    -->     </div>
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
    <div class="t-box" >
        <i class="t1"></i>
        <a href="javascript:;">在线客服</a>
    </div>
    <div class=" t-box" >
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