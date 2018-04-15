<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<!-- saved from url=(0058)http://info.tuandai.com/about/technology-safe.jsp?mark=20 -->
<html lang="en-US"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><title>
            技术安全 - 团贷网        </title><link rel="dns-prefetch" href="http://image.tuandai.com/"><link rel="dns-prefetch" href="http://js.tuandai.com/"><link rel="dns-prefetch" href="http://vip.tuandai.com/"><link rel="dns-prefetch" href="http://hd.tuandai.com/"><link rel="dns-prefetch" href="http://bbs.tuandai.com/"><meta name="renderer" content="webkit"><meta property="qc:admins" content="3542563377645164116375">
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
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/css3/aboutus_add.css">
<div class="containder w1200 auto cl fix">
    <div class="position">您当前所在的位置：<a href="${pageContext.request.contextPath }/investmenthome.jsp">团贷网</a> &gt; <a href="${pageContext.request.contextPath }/risk-controller">安全保障</a> &gt;  技术安全</div>

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
       <dd style="display: none;"><a href=" ${pageContext.request.contextPath }/jsp/information/operational-data.jsp" target="_blank">运营数据</a></dd>
        <dd style="display: none;"><a href=" ${pageContext.request.contextPath }/jsp/information/report.jsp" target="_blank">运营报表</a></dd>
    </dl>
    <dl show="0">
        <dt>安全保障<i class="shareholder-icon left-arrow-down"></i></dt>
        <dd style="display: block;"><a href=" ${pageContext.request.contextPath }/jsp/information/riskcontroller.jsp" target="_blank">风控流程</a></dd>
        <dd style="display: block;"><a href="${pageContext.request.contextPath }/jsp/information/safeguard.jsp" target="_blank">保障方式</a></dd>
        <dd style="display: block;"><a href="${pageContext.request.contextPath }/jsp/information/index4.jsp" target="_blank">担保专款</a></dd>
        <dd style="display: block;"><a href="${pageContext.request.contextPath }/jsp/information/technologysafe.jsp" target="_blank" class="left-selected">技术安全</a></dd>
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
            <div class="banner"><img src="${pageContext.request.contextPath }/static/img3/banner7.jpg"></div>
            <div class="wrapbox mt5 mb5">
                <div class="intr">
                    <p>团贷网运用业内领先的安全技术，保护用户在团贷网账户中存储的个人信息安全。并采用SSL传输加密、多机房灾备、三层防火墙等数十种安全服务的保护措施，7*24小时不间断地确保交易数据安全。</p>
                </div>
            </div>
        </div>
        <div class="modular">
            <h2>信息安全认证<i class="shareholder-icon h2-arrow"></i></h2>
                            <div class="wrapbox mt5 mb5">
     <div class="intr">
             <p>团贷网每年都聘请有资质的外部测试认证机构——广州华南信息安全测评中心对信息安全实施测评认证，以充分保障投资者的交易及信息安全。经专业测评机构认证：</p>
             <p>系统在建设过程中对系统定级、方案设计、产品采购、软件开发、工程实施、测试验收、系统交付等阶段进行了科学的实施和规范的管理。基础设施齐全且物理环境良好，网络整体结构合理，能根据各部门的工作职能、重要性和所涉及信息的重要程度等因素，划分不同的Vlan。在数据保护方面建立双机储存阵列，实现实时备份，并且已建立异地灾备中心，通过VPN实时备份，异地灾备。安全运维方面，被测系统机房为托管机房（电信IDC机房）能够对被测信息系统实施有效、完善的维护管理，从而保证系统的安全运行。机房有专人负责日常的巡检工作及安全管理人员。总体而言，东莞团贷网互联网科技服务有限公司团贷网系统总体安全保护状况良好。</p>
      </div>
      <div class="notice">
            <p>注：广州华南信息安全测评中心成立于2007年3月，业务主管单位为广州市公安局。本测评中心是我国建立信息安全等级保护制度，构建华南信息安全保障体系而成立的第三方中立、权威服务机构（等级保护验收测评机构），同时也是公安部科技信息化局授权在全国公安系统开展内网安全项目测评工作的测评机构（全国仅两家）。</p>
       </div>
</div>                    </div>
        <div class="modular td_license">
            <h2>测评报告<i class="shareholder-icon h2-arrow"></i></h2>
            <ul class="report_js clearfix" "="">
                                                                    <li><img src="${pageContext.request.contextPath }/static/img3/1505283201841.png" data-original="${pageContext.request.contextPath }/static/img3/1505283201841.png"></li>
                                                        <li><img src="${pageContext.request.contextPath }/static/img3/1505283221142.png" data-original="${pageContext.request.contextPath }/static/img3/1505283221142.png"></li>
                                                        <li><img src="${pageContext.request.contextPath }/static/img3/1505283248745.png" data-original="${pageContext.request.contextPath }/static/img3/1505283248745.png"></li>
                                                        <li><img src="${pageContext.request.contextPath }/static/img3/1505283259352.png" data-original="${pageContext.request.contextPath }/static/img3/1505283259352.png"></li>
                                                        <li><img src="${pageContext.request.contextPath }/static/img3/1505283275173.png" data-original="${pageContext.request.contextPath }/static/img3/1505283275173.png"></li>
                                        </ul>
        </div>
    </div>
    <div id="show-pics" style="display:none;">
        <i class="close"></i>
        <div id="win-arrow-box">
            <div class="btn-box-warp">
                <i class="pre"></i>
                <i class="next"></i>
            </div>
        </div>
        <div class="img-box-warp">
            <div class="img-box">
                <img class="nochange" src="technology-safe.jsp?mark=20"></div>
        </div>
    </div>
    <div id="area-layer" style="display:none;"></div>
</div>
<script>
    $(function () {
        $("img").lazyload({
            threshold: 10,
            effect : "fadeIn"
        });
    });
    $(document).ready(function(){
        var curSrc;
        var curNum;
        var num=0;
        var $parent;
        var winW=$(window).width();
        var winH=$(window).height();
        var imgboxW=$('.img-box-warp').width();
        var imgboxH=$('.img-box-warp').height();
        var myleft=(winW-imgboxW)/2;
        var mytop=(winH-imgboxH)/2;
        function into()
        {
            curSrc='';
            curNum=0;
            num=0;
            imgLeft=0;
            imgTop=0;
        }

        listenClick($('.td_license ul li'));


        function listenClick(obj)
        {
            obj.click(function () {
                into();
                $parent=$(this).parent();
                curSrc=$(this).find('img').attr('src');
                curNum=$(this).index();
                num=$(this).siblings('li').length;
                console.log(curSrc);
                console.log(curNum);
                console.log(num);
                $('#area-layer').fadeIn(200);
                $('#show-pics').fadeIn(50);
                $('.img-box-warp').css({'left':myleft,'top':mytop});
                showPic();
            });
        }
        function showPic() {
            $('.img-box').find('img').attr("src",curSrc);
            $('.img-box-warp img').css({'left':0,'top':0});
        }

        $('#win-arrow-box').find('.pre').click(function () {
            if (curNum< 0) {
                curNum=num-1;
            } else {
                curNum--;
            }
            curSrc=$parent.find('li').eq(curNum).find('img').attr('src');
            showPic();
        });
        $('#win-arrow-box').find('.next').click(function () {

            if (curNum == num) {
                curNum=0;
            } else {
                curNum++;
            }
            curSrc=$parent.find('li').eq(curNum).find('img').attr('src');
            showPic();
        });

        $('#area-layer').click(function () {
            $('#show-pics').fadeOut(100);
            $('#area-layer').fadeOut(100);
        });
        $('#show-pics .close').click(function () {
            $('#show-pics').fadeOut(100);
            $('#area-layer').fadeOut(100);
        });
    })
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
                    <a class="mail icon c-poi" ></a>
                </div>
            </div>
        </div>
        <div class="address fa f12 tc mt15">2010-
            2017 版权所有 © 团贷网
            <a href="http://www.miitbeian.gov.cn/" target="_blank" rel="nofollow">粤ICP备12043601号-1</a> <span style="width: 18px; height: 21px; vertical-align: middle; margin-left:5px; margin-right:5px; display: inline-block; background:url(//js.tuandai.com/images/default/links.png?v=20160629001) no-repeat; background-position: -523px -375px"></span>
            <a href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=44190002000538" target="_blank">粤公网安备44190002000538号</a>&nbsp;东莞团贷网互联网科技服务有限公司 地址：东莞市南城街道莞太路111号民间金融大厦1号楼28楼  </div>
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