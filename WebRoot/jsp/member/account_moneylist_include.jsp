<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="${pageContext.request.contextPath }/css/css/account-public.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/css/css1/account_invest.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/css/css1/shouye.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/css1/user.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/css1/public2014.css">
<script type="text/javascript" src="${pageContext.request.contextPath }/js/js1/jquery-1.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/js1/account.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/js1/SuperSlide.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/js1/echarts.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/js1/common.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/js1/moneylist_include.js"></script>
<style type="text/css">
        #leftMenu {
            border: 1px solid #e6e6e6;
        }

        .dv_r_5, .dv_r_5_1, .dv_r_5_2 {
            padding-left: 40px;
            height: 42px;
            line-height: 40px;
            background: url(//js.tuandai.com/images/member/baktag.jpg) no-repeat;
            background-repeat: no-repeat;
            font-family: 宋体;
            font-size: 14px;
            text-align: left;
            background-position: 0 0;
            border: 1px solid #e6e6e6;
            cursor: pointer;
            position: relative;
        }

        .dv_r_5_1, .dv_r_5_2, .dv_r_5_3, .dv_r_5_4, .dv_r_5_5, .dv_r_5_6, .dv_r_5_7 {
            border-top: 0;
        }

        .dv_r_5_1 {
            background-position: 0 -42px;
        }

        .dv_r_5_2 {
            background-position: 0 -84px;
        }

        .dv_r_5_3 {
            background-position: 0 -126px;
        }

        .dv_r_5_4 {
            background-position: 0 -126px;
        }

        .dv_r_5_5 {
            background-position: 0 -126px;
        }

        .dv_r_5_6 {
            background-position: 0 -168px;
        }

        .dv_r_6 {
            height: 100%;
            overflow: hidden;
            line-height: 25px;
            text-align: left;
        }

            .dv_r_6 ul {
                margin: 0px;
                padding: 0px;
                list-style: none;
                background-color: #fff;
                padding-bottom: 0px;
                padding-top: 0px;
                border: 1px solid #e6e6e6;
                border-top: none;
            }

                .dv_r_6 ul li {
                    height: 38px;
                    line-height: 34px;
                    padding-left: 35px;
                    background: url(//js.tuandai.com/images/member/bakdotted.jpg);
                    background-position: bottom;
                    background-repeat: no-repeat;
                }

                .dv_r_6 ul .over {
                    background: #f5f5f5;
                }

                .dv_r_6 ul li a {
                    text-decoration: none;
                }

                .dv_r_6 ul li.last {
                    padding-left: 35px;
                    background: none;
                }

                    .dv_r_6 ul li.last:hover {
                        background: #f5f5f5;
                    }

                .dv_r_6 ul li a {
                    margin-left: 8px;
                    color: #666;
                    font-size: 14px;
                }

                .dv_r_6 ul li div {
                    padding-left: 3px;
                    clear: both;
                    width: 180px;
                    color: #000;
                    line-height: 20px;
                    text-indent: 17px;
                }

                .dv_r_6 ul li a.red {
                    color: #DD8800;
                }

        #leftMenu .dv_r_5 strong {
            font-family: "微软雅黑", "宋体", Arial;
            color: #333;
            font-size: 16px;
            font-weight: normal;
        }

        #leftMenu .dv_r_5_1 strong, #leftMenu .dv_r_5_2 strong, #leftMenu .dv_r_5_3 strong, #leftMenu .dv_r_5_4 strong {
            color: #333;
        }

        .current {
            font-weight: bold;
        }

        .otherline .li1 strong {
            font-weight: normal;
        }

        #leftMenu .hidden {
            display: none;
        }

        #leftMenu .up {
            width: 14px;
            height: 7px;
            display: inline-block;
            cursor: pointer;
            background: url(//js.tuandai.com/images/member/gr_arrow_01.gif);
            position: absolute;
            right: 20px;
            top: 18px;
        }

        #leftMenu .down {
            width: 14px;
            height: 7px;
            display: inline-block;
            cursor: pointer;
            background: url(//js.tuandai.com/images/member/gr_arrow_02.gif);
            position: absolute;
            right: 20px;
            top: 18px;
        }

        #menu_autoTender {
            position: relative;
            z-index: 200;
        }

        #menu_myWePlan {
            position: relative;
            z-index: 200;
        }

        .account-left .emClass, .account-left.emClass {
            width: 18px;
            height: 18px;
            display: block;
            left: 16px;
            top: 50%;
            margin-top: -10px;
            position: absolute;
            background: url("//js.tuandai.com/images/default/we-financing.png") -191px -23px;
        }

        .account-left .tip-box {
            position: absolute;
            left: 110px;
            top: -4px;
            width: 357px;
            height: 126px;
            cursor: default;
        }

        .account-left .tip {
            width: 357px;
            position: relative;
            background: #fef8e0;
            padding: 15px;
            padding-bottom: 0;
            font-size: 14px;
            line-height: 22px;
            border: 1px solid #e4e4e4;
            z-index: 1;
        }

            .account-left .tip p {
                text-align: right;
            }

                .account-left .tip p a {
                    margin-left: 10px;
                    color: #CC6600;
                }

                    .account-left .tip p a:hover {
                        color: #EA7E00;
                    }

            .account-left .tip .arrow {
                width: 9px;
                height: 14px;
                display: block;
                position: absolute;
                background: url("//js.tuandai.com/images/member/icon.png?v=20150808001") 0 -605px;
                left: -9px;
            }

            .account-left .tip .close {
                width: 9px;
                height: 9px;
                display: block;
                position: absolute;
                background: url("//js.tuandai.com/images/member/icon.png?v=20150808001") 0 -621px;
                right: 8px;
                top: 8px;
                cursor: pointer;
            }

        .left-new {
            position: absolute;
            width: 20px;
            height: 14px;
            background: url("//js.tuandai.com/images/member/left-new.gif") 0 0 no-repeat;
            right: 24px;
            top: 4px;
        }


        .ny .tip-box {
            position: absolute;
            left: 110px;
            top: -4px;
            width: 357px;
            height: 126px;
            cursor: default;
        }

        .ny .tip {
            width: 446px;
            position: relative;
            background: #fef8e0;
            padding: 10px;
            font-size: 14px;
            line-height: 22px;
            border: 1px solid #e4e4e4;
            z-index: 1;
        }

            .ny .tip p {
                text-align: right;
            }


            .ny .tip .arrow {
                width: 9px;
                height: 14px;
                display: block;
                position: absolute;
                background: url("//js.tuandai.com/images/member/icon.png?v=20150808001") 0 -605px;
                left: -9px;
            }

            .ny .tip .close {
                width: 9px;
                height: 9px;
                display: block;
                position: absolute;
                background: url("//js.tuandai.com/images/member/icon.png?v=20150808001") 0 -621px;
                right: 8px;
                top: 8px;
                cursor: pointer;
            }
    </style>
<style type="text/css">
     body{background:#fff}
		 .column-title {border-bottom: 1px solid #E5E5E5;height: 35px;line-height: 35px;}
          .column-type .column-title span {
            float: left;
            padding: 0 10px;
            margin-right:0px;
        }
          
          .column-type .column-title .selected {
            border-bottom: 2px solid #ff8c00;
            display: block;
            font-weight:normal;
            height: 35px;
            line-height: 35px;
        }
        .column-type .column-title .selected1 
        {
            
            cursor:pointer;
            border-bottom: 2px solid #ff8c00;
            display: block;
            font-weight: normal;
            height: 35px;
            line-height: 35px;
        }
        .column-type .column-title .selected1 a
        {
            color:#ff8c00;
        }
          
          
        .column-type .column-title .selected a {
            color: #ff8c00;
            font-size: 16px;
            text-decoration: none;
        }
          
          .column-title  a {font-size: 16px;}
          .column-title a:hover {text-decoration: none;color: #ff8c00;}
          
          .ranking-type .ranking-title span
          {
              cursor:pointer;
              border-bottom: 2px solid #ff8c00;
            display: block;
            font-weight:normal;
            height: 35px;
            line-height: 35px;
            color:#ff8c00
          }
          
         .button {padding:0px 9px 3px;;margin: 0px 3px;text-align: center;font-size: 16px;color: Gray;text-decoration: none;}
         .button:hover{color: #ff9900;}
         .spyear{font-size:14px;}
         .column-tag p span{font-weight:bold;color:Orange;width:250px;}
         .statistic{list-style:none;}
         .statistic li{float:left;width:160px;height:29px;line-height:27px;font-size:14px;}
         .fl_r a:hover{color:#ff9900;text-decoration: none;}
         .column-index li img,.ranking-index  li img{margin-left:-18px;display:none;height:38px; border: 0;  vertical-align:-11px;   *vertical-align:-13px;          }
        .chartbox{border: 1px solid #e3e3e3;-moz-border-radius: 5px; -webkit-border-radius: 5px;border-radius:5px;-webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .05);box-shadow: inset 0 1px 1px rgba(0, 0, 0, .05);margin:10px 0 0 0;}
    
        .nav_top {
            border-bottom: 1px solid #e5e5e5;
            height: 46px;
            margin: 0 auto;
            overflow: hidden;
            padding: 0;
            position: relative;
            width: 800px;
        }

        /*选项卡*/
.nav_title{ float:left;   height:44px; line-height:44px;}
.nav_title li{float:left; margin:0px;   font-size:16px; width: 100px; }
.nav_title li:hover{border-bottom: 2px solid #ff8c00;}
.nav_title li:hover a{color: #ff8c00;}

/*选项卡*/
.tab_title_a a:link,.tab_title_a a:visited,.tab_title_a a:hover,.tab_title_a a:active{ font-size:16px;text-decoration: none; color: #ff8c00; }
.tab_title_b a:link,.tab_title_b a:visited,.tab_title_b a:hover,.tab_title_b a:active {color: #000;text-decoration: none; font-size:16px;}
.tab_title_a {  height:44px; line-height:44px; border-bottom:#ff8c00 solid 2px; text-align:center; cursor:pointer;}
.tab_title_b { height:44px; line-height:44px; border-bottom:#fff solid 2px; text-align:center; cursor:pointer;}

.tab2_title_a a:link,.tab2_title_a a:visited,.tab2_title_a a:hover,.tab2_title_a a:active{ font-size:16px;text-decoration: none; color: #000; }
.tab2_title_b a:link,.tab2_title_b a:visited,.tab2_title_b a:hover,.tab2_title_b a:active {color: #000;text-decoration: none; font-size:16px;}
.tab2_title_a {width:100px; height:44px; line-height:44px; border-bottom:#ffa200 solid 4px; text-align:center; cursor:pointer;}
.tab2_title_b {width:100px; height:44px; line-height:44px; border-bottom:#fff solid 4px; text-align:center; cursor:pointer;}

	</style>
<title>
</title><script data-require-id="echarts/theme/blue" src="${pageContext.request.contextPath }/js/homepage/blue.js" async=""></script>
<script data-require-id="echarts/chart/bar" src="${pageContext.request.contextPath }/js/homepage/bar.js" async=""></script></head>
<body>
<div class="column-type">
<p class="column-title">
<span class="selected" onmouseover="MenuSpanOver(this);" onmouseout="MenuSpanOut(this);"><a href="javascript:;">收益统计</a></span>
<span onmouseover="MenuSpanOver(this);" onmouseout="MenuSpanOut(this);"><a href="javascript:;">支出统计</a></span>
</p>
<div class="column-tag">
<div style="margin:15px 0 10px 0;">
<div style="font-size:14px;margin-top:5px;height:60px;margin-left: 5px;">
<ol class="statistic" style="width:818px;top:70px;">
<li style="width:274px">收益总计：<b class="font-orange font-14 d2">￥
<c:out value="${income  }" default="0.00"></c:out>
</b></li>
<li style="color:rgb(179, 177, 177);width:520px;text-align:right;">收益总计=已收收益+待收收益+逾期收益</li>
<li>已收收益：<span class="font-orange d2">￥
<c:out value="${backIncome }" default="0.00"></c:out>
</span> </li>
<li>待收收益：<span class="font-orange d2">￥
<c:out value="${income-backIncome }" default="0.00"></c:out>
</span> </li>
<li>逾期收益：<span class="font-orange d2">￥0.00</span> </li>
<li style="display:none">活动收益：<span class="font-orange d2">￥0</span> </li>
</ol>
</div>
</div>
<div class="chartbox" style="width:797px; background:#fff">
<div class="column" id="column" style="width: 530px; padding-top: 10px; height: 330px; -moz-user-select: none; background-color: rgba(0, 0, 0, 0);" _echarts_instance_="1508416631007"><div style="position: relative; overflow: hidden; width: 530px; height: 330px;"><div style="position: absolute; left: 0px; top: 0px; width: 530px; height: 330px; -moz-user-select: none;" data-zr-dom-id="bg"></div><canvas style="position: absolute; left: 0px; top: 0px; width: 530px; height: 330px; -moz-user-select: none;" width="530" height="330" data-zr-dom-id="0"></canvas><canvas style="position: absolute; left: 0px; top: 0px; width: 530px; height: 330px; -moz-user-select: none;" width="530" height="330" data-zr-dom-id="1"></canvas><canvas style="position: absolute; left: 0px; top: 0px; width: 530px; height: 330px; -moz-user-select: none;" width="530" height="330" data-zr-dom-id="_zrender_hover_"></canvas></div></div>
<div style="position:absolute;right:312px;top:130px;z-Index:100;">
<a class="button minus" href="javascript:;" style="text-decoration: none;margin-left:-10px;">◀</a>
<span style="  font-size: 16px;color: Orange;" id="sYear"></span>&nbsp;<span style="  font-size: 15px;color: Orange;">年收益</span>
<a class="button plus" href="javascript:;" style="text-decoration: none;">▶</a>
</div>
<div class="column-data">
<ul class="column-index" style="width:260px;top:177px; right:201px;">
<li class="selected" style="padding-left:0px;margin-left:20px;">
<img src="${pageContext.request.contextPath }/static/account/u43.png" alt="" style="display: inline;"><label class="spyear"></label>2017年收益总计：<span class="s1">￥
<c:out value="${income2017}" default="0.00"></c:out>
</span></li>
<li style="padding-left:0px;margin-left:20px;"><img src="${pageContext.request.contextPath }/static/account/u43.png" alt=""><label class="spyear"></label>2017年已收收益：<span class="s2">￥
<c:out value="${realIncome2017}" default="0.00"></c:out>
</span></li>
<li style="padding-left:0px;margin-left:20px;"><img src="${pageContext.request.contextPath }/static/account/u43.png" alt=""><label class="spyear"></label>2018年收益总计：<span class="s3">￥
<c:out value="${income2018}" default="0.00"></c:out>
</span></li>
<li style="padding-left:0px;margin-left:20px;"><img src="${pageContext.request.contextPath }/static/account/u43.png" alt=""><label class="spyear"></label>2018年已收收益：<span class="s4">￥
<c:out value="${realIncome2018}" default="0.00"></c:out>
</span></li>
<li style="padding-left:0px;margin-left:20px;display:none"><img src="${pageContext.request.contextPath }/static/account/u43.png" alt=""><label class="spyear">2017</label>年活动收益：<span class="s5">￥0.00</span></li>
</ul>
</div>
</div>
</div>
<div class="column-tag" style="display: none;">
<div style="margin:15px 0 10px 0;">
<div style="font-size:14px;margin-top:5px;height:60px; margin-left: 5px;">
<ol class="statistic" style="width:818px;">
<li style="width:274px;">支出总计：<b class="font-orange font-16 d2">￥
<c:out value="${justIncom}" default="0.00"></c:out>
</b></li>
<li style="color:rgb(179, 177, 177);width:520px;text-align:right;">支出总计=已还利息+待还利息+支付会员费+提现手续费+支付佣金</li>
<li>已还利息：<span class="font-orange d2">￥
<c:out value="${justIncom-mustIncom}" default="0.00"></c:out>
</span> </li>
<li>待还利息：<span class="font-orange d2">￥
<c:out value="${mustIncom }" default="0.00"></c:out>
</span></li>
<li>支付会员费：<span class="font-orange d2">￥0.00</span></li>
<li>提现手续费：<span class="font-orange d2">￥0.00</span></li>
<li>支付佣金：<span class="font-orange d2">￥0.00</span></li>
</ol>
</div>
</div>
<div class="chartbox" style="width:797px; background:#fff">
<div class="column" id="payout" style="width:540px;padding-top:10px;height:330px;"></div>
<div style="position:absolute;right:321px;top:158px;z-Index:100;">
<a class="button minus" href="javascript:;" style="text-decoration: none;margin-left:-10px;">◀</a>
<span style="  font-size: 16px;color: Orange;" id="sYear2"></span>&nbsp;<span style="  font-size: 15px;color: Orange;">年支出</span>
<a class="button plus" href="javascript:;" style="text-decoration: none;">▶</a>
</div>
<div class="column-data">
<ul class="column-index" style="width:260px;top:202px; right:201px;">
<li class="selected" style="padding-left:0px;margin-left:20px;">
<img src="${pageContext.request.contextPath }/static/account/u43.png" alt="" style="display: inline;"><label class="spyear"></label>2017年已还利息：<span class="s6">￥
<c:out value="${realBack2017   }" default="0.00"></c:out>
</span></li>
<li style="padding-left:0px;margin-left:20px;"><img src="${pageContext.request.contextPath }/static/account/u43.png" alt="" ><label class="spyear"></label>2017年待还利息：<span class="s7">￥
<c:out value="${back2017-realBack2017   }" default="0.00"></c:out>
</span></li>
<li style="padding-left:0px;margin-left:20px;">
<img src="${pageContext.request.contextPath }/static/account/u43.png" alt="" ><label class="spyear" ></label>2018年已还利息：<span class="s6">￥
<c:out value="${realBack2018}" default="0.00"></c:out>
</span></li>
<li style="padding-left:0px;margin-left:20px;">
<img src="${pageContext.request.contextPath }/static/account/u43.png" alt="" ><label class="spyear"></label>2018年待还利息：<span class="s7">￥
<c:out value="${back2018-realBack2018}" default="0.00"></c:out>
</span></li>
</ul>
</div>
</div>
</div>
</div>
<script type="text/javascript">
    function MenuSpanOver(obj) {
        if ($(obj).attr("class") != "selected") {
            $(obj).addClass("selected1");
        }
    }

    function MenuSpanOut(obj) {
        if ($(obj).attr("class") != "selected") {
            $(obj).removeClass("selected1");
        }
    }
    </script>


</body></html>