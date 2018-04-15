<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<!-- saved from url=(0052)http://info.tuandai.com/about/basic-info.jsp?mark=2 -->
<html lang="en-US"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><title>
            基本信息 - 团贷网        </title><link rel="dns-prefetch" href="http://image.tuandai.com/"><link rel="dns-prefetch" href="http://js.tuandai.com/"><link rel="dns-prefetch" href="http://vip.tuandai.com/"><link rel="dns-prefetch" href="http://hd.tuandai.com/"><link rel="dns-prefetch" href="http://bbs.tuandai.com/"><meta name="renderer" content="webkit"><meta property="qc:admins" content="3542563377645164116375">
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
    <body>
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
                                <div id="topinfo" class="inline-block-debug c-poi-a"><a href="javascript:login();" class="reg">登录</a><span>|</span><a rel="nofollow" href="javascript:register();" class="reg">注册</a><span>|</span></div>
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
                        <img src="${pageContext.request.contextPath }/static/img3/tuandai_logo_right.png" alt="">
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
                        <img style="width:118px;" src="${pageContext.request.contextPath }/static/img3/tuandai_logo_right.png" alt="">
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/css3/aboutus_add.css">
<div class="containder w1200 auto cl fix">
    <div class="position">您当前所在的位置：<a href="${pageContext.request.contextPath }/investmenthome.jsp">团贷网</a> &gt; <a href="${pageContext.request.contextPath }/platform">关于我们</a> &gt;  基本信息</div>

<div class="l left-side w218" id="left-side">
    <dl show="0" >
        <dt>关于我们<i class="shareholder-icon left-arrow-up"></i></dt>
        <dd style="display: block;"><a class="" href="${pageContext.request.contextPath }/jsp/information/platform.jsp" target="_blank">平台简介</a></dd>
        <dd style="display: block;"><a href="${pageContext.request.contextPath }/jsp/information/basicinfo.jsp" target="_blank" class="left-selected">基本信息</a></dd>
        <dd style="display: block;"><a href="${pageContext.request.contextPath }/jsp/information/team.jsp" target="_blank">管理团队</a></dd>
        <dd style="display: block;"><a href="${pageContext.request.contextPath }/jsp/information/shareholder.jsp" target="_blank">集团投资方</a></dd>
        <dd style="display: block;"><a href="${pageContext.request.contextPath }/jsp/information/aptitude.jsp" target="_blank" >资质证书</a></dd>
        <dd style="display: block;"><a href="${pageContext.request.contextPath }/jsp/information/index.jsp" target="_blank">银行存管</a></dd>
        <dd style="display: block;"><a href="${pageContext.request.contextPath }/jsp/information/history.jsp" target="_blank">发展历程</a></dd>
        <dd style="display: block;"><a href="${pageContext.request.contextPath }/jsp/information/guest.jsp" target="_blank">政府关怀</a></dd>
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
                <div class="modular">
            <h2>基本资料<i class="shareholder-icon h2-arrow"></i></h2>
            <div class="wrapbox">
                <table class="aboutus_table">
                                        <tbody><tr style="background: rgb(248, 248, 248);">
                        <td class="zuo">全称及简称</td>
                        <td class="g3">东莞团贷网互联网科技服务有限公司（简称：团贷网丨网贷投资平台）</td>
                    </tr>
                                        <tr>
                        <td class="zuo">注册资本</td>
                        <td class="g3">人民币：1亿293万3334元整</td>
                    </tr>
                                        <tr style="background: rgb(248, 248, 248);">
                        <td class="zuo">注册地址</td>
                        <td class="g3">东莞市南城街道莞太路111号民间金融大厦1号楼28楼</td>
                    </tr>
                                        <tr>
                        <td class="zuo">成立时间</td>
                        <td class="g3">2016-02-04</td>
                    </tr>
                                        <tr style="background: rgb(248, 248, 248);">
                        <td class="zuo">法定代表人</td>
                        <td class="g3">张林</td>
                    </tr>
                                        <tr>
                        <td class="zuo">经营范围</td>
                        <td class="g3">从事网络信息科技领域内的技术开发、技术咨询、技术服务、技术转让，互联网信息服务（增值电信业务经营），项目投资管理，股权投资，企业管理，投资咨询，资产管理，经济信息咨询服务，电子结算系统的开发，数据处理，个人征信服务，企业征信服务，企业策划，商务信息咨询，销售、安装：导航设备；设计、制作、发布、代理国内外广告，企业营销推广服务。（依法须经批准的项目，经相关部门批准后方可开展经营活动。）</td>
                    </tr>
                                        <tr style="background: rgb(248, 248, 248);">
                        <td class="zuo">网站或平台地址</td>
                        <td class="g3">https://www.tuandai.com</td>
                    </tr>
                                        <tr>
                        <td class="zuo">平台名称</td>
                        <td class="g3">团贷网丨网贷投资</td>
                    </tr>
                                        <tr style="background: rgb(248, 248, 248);">
                        <td class="zuo">平台上线运营时间</td>
                        <td class="g3">2012-07-15</td>
                    </tr>
                                        <tr>
                        <td class="zuo">统一社会信用代码</td>
                        <td class="g3">91441900MA4ULXKB38</td>
                    </tr>
                                    </tbody></table>
            </div>
        </div>
                <div class="modular">
            <h2>股权结构<span>(截至2017年9月14日）</span><i class="shareholder-icon h2-arrow"></i></h2>
            <div class="wrapbox">
                <img src="${pageContext.request.contextPath }/static/img3/info01.png">
            </div>
        </div>
        <div class="modular">
            <h2>组织架构<span>(截至2017年8月31日）</span><i class="shareholder-icon h2-arrow"></i></h2>
            <div class="wrapbox">
                <img src="${pageContext.request.contextPath }/static/img3/info02.png">
            </div>
        </div>
        <div class="modular">
            <h2>员工情况<i class="shareholder-icon h2-arrow"></i></h2>
            <div class="wrapbox">
                <div class="tc"><img src="${pageContext.request.contextPath }/static/img3/info03.png"></div>
                <div class="f12 g9 tl">截至2017年8月31日，公司总人数达900人。</div>
            </div>
        </div>
        <div class="modular">
            <h2>联系我们<i class="shareholder-icon h2-arrow"></i></h2>
            <div class="wrapbox contactInfo clearfix">
                <dl>
                    <dt>东莞团贷网互联网科技服务有限公司</dt>
                    <dd class="lh24">
                        地址：东莞市南城街道莞太路111号民间金融大厦1号楼28楼<br>
                        电话：1010-1218<br>
                        传真：0769-21683380                     </dd>
                </dl>
                <dl class="mr0">
                    <dt>客户服务 <span class="f12 g3">如果您在使用过程中有任何疑问，请您与客服人员联系。</span></dt>
                    <dd class="lh24">
                        客服电话：1010-1218 (工作时间9:00-22:00)<br>
                        在线帮助：<a class="a_ffb700 online_kf" href="#" target="_blank">（点击与客服进行即时在线沟通）</a><br>
                        客服邮箱：<a class="a_999" href="mailto:kefu@tuandai.com">kefu@tuandai.com</a>
                    </dd>
                </dl>
                <dl class="mb0">
                    <dt>媒体采访</dt>
                    <dd>
                        <div class="lh18">如果有媒体采访需求，请将您的媒体名称、采访提纲、联系方式发送至此邮箱，我们会尽快与您联系！</div>
                        <div class="mt15">客服邮箱：<a class="a_999" href="mailto:PR@tuandai.com">PR@tuandai.com</a></div>
                    </dd>
                </dl>
                <dl class="mr0 mb0">
                    <dt>商务合作</dt>
                    <dd>
                        <div class="lh18">如果您希望与我们建立商务合作关系，请将合作意向进行<br>简要描述并发送邮件至此邮箱，我们将尽快与您联系。</div>
                        <div class="mt15">客服邮箱：<a class="a_999" href="mailto:bd@tuandai.com">bd@tuandai.com</a></div>
                    </dd>
                </dl>
            </div>
        </div>
        <div class="modular">
            <h2>关注我们<i class="shareholder-icon h2-arrow"></i></h2>
            <div class="wrapbox">
                <div class="f12">如果您想了解更多团贷网网贷投资平台资讯，可添加或扫描下列二维码关注后了解。</div>
                <div class="seeInfo clearfix mt30">
                    <dl><dt><img src="${pageContext.request.contextPath }/static/img3/weima01.jpg"></dt><dd>订阅号</dd></dl>
                    <dl><dt><img src="${pageContext.request.contextPath }/static/img3/weima02.jpg"></dt><dd>团贷网服务平台</dd></dl>
                    <dl><dt><img src="${pageContext.request.contextPath }/static/img3/weima03.jpg"></dt><dd>新浪微博</dd></dl>
                    <dl class="mr0"><dt><img src="${pageContext.request.contextPath }/static/img3/weima04.jpg"></dt><dd>手机APP下载</dd></dl>
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    $(function () {
        $(".aboutus_table tr:even").css({"background": "#f8f8f8"});
    });
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
                     <a class="mail icon c-poi" onmouseover="showServers('.mail', '.mail-int-box')"></a>
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
    <div class=" t-box" >
        <i class="t2"></i>
        <a href="${pageContext.request.contextPath }/jsp/helppage/helppage.jsp">帮助中心</a>
    </div>
    <div class=" t-box" >
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
            

<img src="SingleLogin.jsp" style="display: none;"></body></html>