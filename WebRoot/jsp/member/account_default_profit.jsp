<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"><head>
    <title>
    </title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/css1/base.css">
    <link href="${pageContext.request.contextPath }/css/css1/public.css">
    <link href="${pageContext.request.contextPath }/css/css1/account-public.css" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath }/css/css1/shouye.css" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath }/css/css1/user.css">
     <script type="text/javascript" src="${pageContext.request.contextPath }/js/homepage/jquery-1.8.3.js"></script>
    <script src="${pageContext.request.contextPath }/js/js/hm.js"></script><script type="text/javascript">
        var _hmt = _hmt || [];
        (function() {
            var hm = document.createElement("script");
            hm.src = "https://hm.baidu.com/hm.js?e5885737885060b19f50ba5ed78c9802";
            var s = document.getElementsByTagName("script")[0];
            s.parentNode.insertBefore(hm, s);
        })();
    </script>
<script data-require-id="echarts/chart/bar" src="${pageContext.request.contextPath }/js/js1/bar.js" async=""></script></head>
<body>
    <div class="box-padding margin-top-10">
        <div style="height: 34px; padding: 3px 7px 3px 9px; border-bottom: 1px solid #ddd; margin-top: 5px; font-size: 14px;">
            <div class="l">
                <span style="color: Orange; font-size: 17px; padding-left: 7px; margin-right: 15px;">投资收益统计</span> 累计已收收益：
                <span style="color: Orange; font-size: 16px; margin-right: 20px;" id="recAmount">￥
                	<c:out value="${income  }" default="0.00"></c:out>
                </span> 累计待收收益：
                <span style="color: Orange; font-size: 16px;" id="dueAmount">￥
                <c:out value="${income-backIncome  }" default="0.00"></c:out>
                </span>
            </div>
            <div class="r">
                <a class="button minus" href="javascript:;" style="text-decoration: none; margin-left: 10px;">◀</a>
                <span style="font-size: 16px; color: Orange;" id="ddlYear">2017</span>&nbsp;<span style="font-size: 15px; color: Orange;">年</span>
                <a class="button plus" href="javascript:;" style="text-decoration: none;">▶</a>
            </div>
        </div>
        <div class="total-index chartbox" id="total-index" style="width: 780px; height: 360px; background: rgba(0, 0, 0, 0) none repeat scroll 0% 0%; padding: 10px; -moz-user-select: none;" _echarts_instance_="1506130671302"><div style="position: relative; overflow: hidden; width: 780px; height: 360px;"><div style="position: absolute; left: 0px; top: 0px; width: 780px; height: 360px; -moz-user-select: none;" data-zr-dom-id="bg"></div><canvas style="position: absolute; left: 0px; top: 0px; width: 780px; height: 360px; -moz-user-select: none;" width="780" height="360" data-zr-dom-id="0"></canvas><canvas style="position: absolute; left: 0px; top: 0px; width: 780px; height: 360px; -moz-user-select: none;" width="780" height="360" data-zr-dom-id="1"></canvas><canvas style="position: absolute; left: 0px; top: 0px; width: 780px; height: 360px; -moz-user-select: none;" width="780" height="360" data-zr-dom-id="_zrender_hover_"></canvas></div></div>
    </div>
    <script src="${pageContext.request.contextPath }/js/js1/jquery-1.js"></script>
    <script src="${pageContext.request.contextPath }/js/js1/common.js"></script>
    <script src="${pageContext.request.contextPath }/js/js1/echarts.js"></script>
    <script src="${pageContext.request.contextPath }/js/js1/account_default_profit.js" type="text/javascript"></script>

    <script type="text/javascript">
        if ($.isFunction(window.parent.hideIframeMask)) {
            if (window.parent != window)
                window.parent.hideIframeMask(2);
        }
    </script>

</body></html>