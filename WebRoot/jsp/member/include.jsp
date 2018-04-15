<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"><head>
    <title>
    </title>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/css1/base.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/css1/public.css">
    <link href="${pageContext.request.contextPath }/css/css1/account-public.css" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath }/css/css1/shouye.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/css1/user.css">
     <script type="text/javascript" src="${pageContext.request.contextPath }/js/homepage/jquery-1.8.3.js"></script>
    <script src="${pageContext.request.contextPath }/js/js/hm.js"></script><script type="text/javascript" src="${pageContext.request.contextPath }/js/js1/jquery-1.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/js1/base.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/js1/account.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/js1/SuperSlide.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/js1/common.js"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <style type="text/css">
        .refresh span {
            width: 13px;
            height: 13px;
            display: inline-block;
            vertical-align: -2px;
            margin-left: 6px;
            background: url(//js2.tdw.cn/images/member/index/refresh.png) no-repeat;
        }

        .refresh .rotates {
            -webkit-animation: rotates 1.6s linear infinite both;
            animation: rotates 1.6s linear infinite both;
        }

        @-webkit-keyframes rotates {
            0% {
                -webkit-transform: rotate(0deg);
            }
            100% {
                -webkit-transform: rotate(360deg);
            }
        }

        @keyframes rotates {
            0% {
                transform: rotate(0deg);
            }
            100% {
                transform: rotate(360deg);
            }
        }
    </style>
    <script type="text/javascript">
        var _hmt = _hmt || [];
        (function() {
            var hm = document.createElement("script");
            hm.src = "https://hm.baidu.com/hm.js?e5885737885060b19f50ba5ed78c9802";
            var s = document.getElementsByTagName("script")[0];
            s.parentNode.insertBefore(hm, s);
        })();
    </script>
</head>

<body>
<form method="post" action="./include.aspx" id="form1">
    <div class="aspNetHidden">
        <input name="__VIEWSTATE" id="__VIEWSTATE" value="iZnau1XQKVO6KOYUlYI9THcarJAZSVCwNeFtaFlm/Axbt9QHUyR1GNe8SyGj2pUzYVG0UUk7ZPiM9TJ1Df8K7KagHTVAjq9+FT5C3zZY3RSOxW8U0t1aLILXJHI=" type="hidden">
    </div>
    <div class="aspNetHidden">
        <input name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="D26ABE79" type="hidden">
    </div>
    <div class="Classified ">
        <div class="clfi_left" style="z-index:1; position:relative">
            <div class="calendar" id="calendar" style="width: 594px; height:405px;background: #fff;">
                <div style="height:35px; overflow:hidden;background: #fff;border:1px solid #ddd;border-bottom:none;padding-top:10px;">
                    <i style="background:#FFAEB9;padding:0px 10px;margin-left:22px;margin-right:10px; margin-top:10px;">&nbsp;</i>还款日
                    <i style="background:#B4EEB4;padding:0px 10px;margin-left:11px;margin-right:10px;margin-top:10px;">&nbsp;</i>回款日
                    <i style="background:#C6E2FF;padding:0px 10px;margin-left:11px;margin-right:10px;margin-top:10px;">&nbsp;</i>还款/回款日
                    <i style="padding:0px 57px;margin-top:10px;">&nbsp;</i>
                    <a id="minus" class="button" href="javascript:;" style="text-decoration: none;margin-left:10px;margin-top:10px;" title="上个月">◀</a>
                    <span class="title">2017年09月</span>
                    <a id="plus" class="button" href="javascript:;" style="text-decoration: none;margin-top:10px;" title="下个月">▶</a>
                </div>
                <table class="tab" cellspacing="0" cellpadding="0">
                    <thead>
                    <tr id="tab-header">
                        <th>星期日</th>
                        <th>星期一</th>
                        <th>星期二</th>
                        <th>星期三</th>
                        <th>星期四</th>
                        <th>星期五</th>
                        <th>星期六</th>
                    </tr>
                    </thead>
                    <tbody id="tabContent"><tr><td style="color: rgb(221, 221, 221); background: rgb(255, 255, 255) none repeat scroll 0% 0%; height: 59px;">27</td><td style="color: rgb(221, 221, 221); background: rgb(255, 255, 255) none repeat scroll 0% 0%; height: 59px;">28</td><td style="color: rgb(221, 221, 221); background: rgb(255, 255, 255) none repeat scroll 0% 0%; height: 59px;">29</td><td style="color: rgb(221, 221, 221); background: rgb(255, 255, 255) none repeat scroll 0% 0%; height: 59px;">30</td><td style="color: rgb(221, 221, 221); background: rgb(255, 255, 255) none repeat scroll 0% 0%; height: 59px;">31</td><td style="background: rgb(255, 255, 255) none repeat scroll 0% 0%; color: black; height: 59px;" type="0">1</td><td style="background: rgb(255, 255, 255) none repeat scroll 0% 0%; color: black; height: 59px;" type="0">2</td></tr><tr><td style="background: rgb(255, 255, 255) none repeat scroll 0% 0%; color: black; height: 59px;" type="0">3</td><td style="background: rgb(255, 255, 255) none repeat scroll 0% 0%; color: black; height: 59px;" type="0">4</td><td style="background: rgb(255, 255, 255) none repeat scroll 0% 0%; color: black; height: 59px;" type="0">5</td><td style="background: rgb(255, 255, 255) none repeat scroll 0% 0%; color: black; height: 59px;" type="0">6</td><td style="background: rgb(255, 255, 255) none repeat scroll 0% 0%; color: black; height: 59px;" type="0">7</td><td style="background: rgb(255, 255, 255) none repeat scroll 0% 0%; color: black; height: 59px;" type="0">8</td><td style="background: rgb(255, 255, 255) none repeat scroll 0% 0%; color: black; height: 59px;" type="0">9</td></tr><tr><td style="background: rgb(255, 255, 255) none repeat scroll 0% 0%; color: black; height: 59px;" type="0">10</td><td style="background: rgb(255, 255, 255) none repeat scroll 0% 0%; color: black; height: 59px;" type="0">11</td><td style="background: rgb(255, 255, 255) none repeat scroll 0% 0%; color: black; height: 59px;" type="0">12</td><td style="background: rgb(255, 255, 255) none repeat scroll 0% 0%; color: black; height: 59px;" type="0">13</td><td style="background: rgb(255, 255, 255) none repeat scroll 0% 0%; color: black; height: 59px;" type="0">14</td><td style="background: rgb(255, 255, 255) none repeat scroll 0% 0%; color: black; height: 59px;" type="0">15</td><td style="background: rgb(255, 255, 255) none repeat scroll 0% 0%; color: black; height: 59px;" type="0">16</td></tr><tr><td style="background: rgb(255, 255, 255) none repeat scroll 0% 0%; color: black; height: 59px;" type="0">17</td><td style="background: rgb(255, 255, 255) none repeat scroll 0% 0%; color: black; height: 59px;" type="0">18</td><td style="background: rgb(255, 255, 255) none repeat scroll 0% 0%; color: black; height: 59px;" type="0">19</td><td style="background: rgb(255, 255, 255) none repeat scroll 0% 0%; color: black; height: 59px;" type="0">20</td><td style="background: rgb(255, 255, 255) none repeat scroll 0% 0%; color: black; height: 59px;" type="0">21</td><td style="background: rgb(255, 255, 255) none repeat scroll 0% 0%; color: black; height: 59px;" type="0">22</td><td style="background: rgb(255, 255, 255) none repeat scroll 0% 0%; color: black; height: 59px;" type="0">23</td></tr><tr><td style="background: rgb(255, 255, 255) none repeat scroll 0% 0%; color: black; height: 59px;" type="0">24</td><td style="background: rgb(255, 255, 255) none repeat scroll 0% 0%; color: black; height: 59px;" type="0">25</td><td style="background: rgb(255, 255, 255) none repeat scroll 0% 0%; color: black; height: 59px;" type="0">26</td><td style="background: rgb(255, 255, 255) none repeat scroll 0% 0%; color: black; height: 59px;" type="0">27</td><td style="background: rgb(255, 255, 255) none repeat scroll 0% 0%; color: black; height: 59px;" type="0">28</td><td style="background: rgb(255, 255, 255) none repeat scroll 0% 0%; color: black; height: 59px;" type="0">29</td><td style="background: rgb(255, 255, 255) none repeat scroll 0% 0%; color: black; height: 59px;" type="0">30</td></tr></tbody>
                </table>
            </div>
        </div>
        <div class="clfi_right">
            <div class="ranking">
                <a href="http://hd.tuandai.com/web/tuandaiAppNew/index.aspx" target="_blank">
                    <img class="db" src="${pageContext.request.contextPath }/static/img1/download-app.jpg" alt="下载APP">
                </a>
            </div>
            <div id="ganbeng" class="margin-top-10">
                <div class="hd">
                    <h3 id="biaoti"><a href="https://bbs.tuandai.com/thread-304060-1-1.html" target="_blank" style="color:#fff;">关注微信</a></h3>
                    <ul>
                        <li val="邀请有礼" ref="https://hd.tuandai.com/web/invite_friends/index.aspx" class=""></li>
                        <li val="团贷会员" ref="http://vip.tuandai.com/?from_center" class=""></li>
                        <li val="关注微信" ref="https://bbs.tuandai.com/thread-304060-1-1.html" class="on"></li>
                    </ul>
                </div>
                <div class="tupian">
                    <div class="tempWrap" style="overflow:hidden; position:relative; width:242px"><ul style="width: 2178px; position: relative; overflow: hidden; padding: 0px; margin: 0px; left: -743.239px;">
                        <a href="http://vip.tuandai.com/?from_center" target="_blank" style="float: left; width: 242px;"><img src="${pageContext.request.contextPath }/static/img1/1502360805342.jpg" style="width:242px;height:205px;" onerror="this.src='//js2.tdw.cn/images/member/index/default.jpg';" alt="团贷会员"></a><a href="https://bbs.tuandai.com/thread-304060-1-1.html" target="_blank" style="float: left; width: 242px;"><img src="${pageContext.request.contextPath }/static/img6/1502360832732.jpg" style="width:242px;height:205px;" onerror="this.src='//js2.tdw.cn/images/member/index/default.jpg';" alt="关注微信"></a>
                    <a href="https://hd.tuandai.com/web/invite_friends/index.aspx" target="_blank" style="float: left; width: 242px;"><img src="${pageContext.request.contextPath }/static/img1/1502360738205.jpg" style="width:242px;height:205px;" onerror="this.src='//js2.tdw.cn/images/member/index/default.jpg';" alt="邀请有礼"></a><a href="http://vip.tuandai.com/?from_center" target="_blank" style="float: left; width: 242px;"><img src="${pageContext.request.contextPath }/static/img6/1502360805342.jpg" style="width:242px;height:205px;" onerror="this.src='//js2.tdw.cn/images/member/index/default.jpg';" alt="团贷会员"></a><a href="https://bbs.tuandai.com/thread-304060-1-1.html" target="_blank" style="float: left; width: 242px;">
                    <img src="${pageContext.request.contextPath }/static/img6/1502360832732.jpg" style="width:242px;height:205px;" onerror="this.src='//js2.tdw.cn/images/member/index/default.jpg';" alt="关注微信"></a><a href="https://hd.tuandai.com/web/invite_friends/index.aspx" target="_blank" style="float: left; width: 242px;">
                    <img src="${pageContext.request.contextPath }/static/img6/1502360738205.jpg" style="width:242px;height:205px;" onerror="this.src='//js2.tdw.cn/images/member/index/default.jpg';" alt="邀请有礼"></a><a href="http://vip.tuandai.com/?from_center" target="_blank" style="float: left; width: 242px;">
                    <img src="${pageContext.request.contextPath }/static/img6/1502360805342.jpg" style="width:242px;height:205px;" onerror="this.src='//js2.tdw.cn/images/member/index/default.jpg';" alt="团贷会员"></a><a href="https://bbs.tuandai.com/thread-304060-1-1.html" target="_blank" style="float: left; width: 242px;">
                    <img src="${pageContext.request.contextPath }/static/img6/1502360832732.jpg" style="width:242px;height:205px;" onerror="this.src='//js2.tdw.cn/images/member/index/default.jpg';" alt="关注微信"></a><a href="https://hd.tuandai.com/web/invite_friends/index.aspx" target="_blank" style="float: left; width: 242px;"><img src="${pageContext.request.contextPath }/static/img6/1502360738205.jpg" style="width:242px;height:205px;" onerror="this.src='//js2.tdw.cn/images/member/index/default.jpg';" alt="邀请有礼"></a></ul></div>
                </div>
            </div>
        </div>
    </div>
    <div id="tooltip" class="tooltip"></div>
</form>
<script>
    /*<![CDATA[*/
    var __p2pWebsiteUrl = "https:\/\/www.tuandai.com";
    var __DQWebsiteUrl = "https:\/\/dq.tdw.cn";
    var __ZXWebsiteUrl = "https:\/\/www.tdw.cn";
    /*]]>*/
</script>
<script src="${pageContext.request.contextPath }/js/homepage/account_include.js" type="text/javascript"></script>
<script type="text/javascript">
    jQuery("#ganbeng").slide({ mainCell: ".tupian ul", effect: "leftLoop", autoPlay: true, interTime: 3000, trigger: "click" });
    if ($.isFunction(window.parent.hideIframeMask)) {
        if (window.parent != window)
            window.parent.hideIframeMask(1);
    }
    $(function () {
        $('.refresh').on('click', function () {
            $(this).find('span').addClass('rotates');
        });
    })
</script>


</body></html>