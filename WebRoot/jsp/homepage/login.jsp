<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html><head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta charset="UTF-8">
    <link rel="shortcut icon" href="#">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>团贷网 - 登录</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/css/login.css">
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/js/jquery-1.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/homepage/login.js"></script>
   <%--  <script src="${pageContext.request.contextPath }/static/js/jquery-1.js"></script> --%>
    <!--[if lt IE 9]>
    <script src="/js/html5shiv.min.js?v=20170512"></script>
    <![endif]-->
</head>
<body>
<header>
    <div class="page-wrap">
        <a href="${pageContext.request.contextPath }/jsp/homepage/investmenthome.jsp" class="pt5 dib l">
                <img src="${pageContext.request.contextPath }/static/img/logo.png">
        </a>
        <div class="logo-gyx" style=" padding-top: 20px;">
            <img src="${pageContext.request.contextPath }/static/img/1502247046932.jpg" alt=""></div>
    </div>
</header>
<div class="container" style="background:url(//image.tuandai.com/newfile/image/2016/20161220/20161220152921_8833.jpg) no-repeat center;">
    <a target="_blank" class="banner-link abs " href="http://hd.tuandai.com/web/invitation_4th/Index.aspx?tdsource=pclogon">&nbsp;</a>
</div>
<section class="login-frame">
    <div class="login-box">
        <div class="login-box-title">
            <span>还没账号？<a href="${pageContext.request.contextPath }/jsp/homepage/register.jsp" class="g-blue reg-now">马上注册</a></span>
            <h2>登录</h2>
        </div>
        <div class="input-box">
            <input class="input-text" id="condition" name="telno" placeholder="请输入账户名/手机号/邮箱" type="text">
            <div class="input-tip" id="uNameMsg" >
               
            </div>
        </div>
        <div class="input-box">
            <input class="input-text" id="password" name="password" placeholder="请输入密码" type="password">
            <div class="input-tip" id="passMsg" >
               
            </div>
        </div>
        <div style="height:14px; color: red; display: block;font-size: 14px" id="loginMsg" ></div>
        <div class="input-setting">
            <a href="${pageContext.request.contextPath }/jsp/homepage/ResetPwd_Telno.jsp">忘记密码</a>
            <input class="input-check" name="isRemember" id="isRemember" type="checkbox">
            <label for="isRemember">记住账号</label>
        </div>
        <button name="submit" id="login_shouye" style="background-color: #48d6a2;height: 50px;color: white;width: 300px;font-style:微软雅黑 ;margin: auto;border: 0;font-size: 16px;">登录</button>
    </div>
    <!-- /* business code */ -->
    <div style="width: 0px;height: 0px;" id="myCode">
    </div>
</section>
<footer>
    2010-2016 版权所有 © 团贷网
    <a href="http://www.miitbeian.gov.cn/" target="_blank" class="g6">粤ICP备12043601号-1</a> 地址：东莞市南城街道莞太路111号民间金融大厦1号楼28楼 <br> 东莞团贷网互联网科技服务有限公司
</footer>

<%-- <script type="text/javascript" src="${pageContext.request.contextPath }/js/js/jquery-1.js"></script> --%>
</body></html>