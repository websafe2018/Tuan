<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3" class="hb-loaded"><head>
    <title>团贷网 - 综合金融服务平台,让金融更简单！</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="alternate" media="only screen and (max-width: 640px)" href="">
    <link rel="dns-prefetch" href="">
    <link rel="dns-prefetch" href="">

    <link rel="shortcut icon" href="">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/css1/base.css">
    <meta name="keywords" content="投资理财，互联网金融，P2P网站，P2P网贷，P2P理财">
    <meta name="description" content="团贷网(tdw.cn)是派生科技集团股份有限公司（以下简称“派生集团”）旗下的综合金融服务平台,致力于为广大投资用户提供基金、保险、证券、网络借贷等互联网投资一站式综合服务.">

    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/css1/public.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/css1/xiamen-bank.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/css1/cgt.css">


    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/css1/new.css">
    <script type="text/javascript" async="" src="${pageContext.request.contextPath }/js/js1/webaccess.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/homepage/jquery-1.8.3.js"></script>
   <script src="${pageContext.request.contextPath }/js/homepage/account_userdetailinfo.js"></script>
    <script type="text/javascript">
   	 var _hmt = _hmt || [];
        (function() {
            var hm = document.createElement("script");
            hm.src = "https://hm.baidu.com/hm.js?e5885737885060b19f50ba5ed78c9802";
            var s = document.getElementsByTagName("script")[0];
            s.parentNode.insertBefore(hm, s);
        })(); 
    </script>
    
    
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/css1/account-new.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/css1/account-public.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/css1/xiamen-bank.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/css1/cgt20161107.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/css1/bind_bank.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/css1/information.css">   
</head>
<body>
   <div class="header">
        <!-- top bar STAR -->
        <div class="t-b  t-b-w lh40 bgff f12 fst cl">
            <div class="w1200 h40 auto g6">
                <div class="right-side  r inline-block-debug">
                    <div class="inline-block-debug c-poi-a" id="">
                    <span class="reg" style="color:#303030">欢迎您,</span>
                    <a href="#" rel="nofollow" class="reg">${myBody.b_nickname }</a><span>|</span><a href="javascript:logout();">退出</a><span>|</span></div>
                    <a rel="nofollow" href="javascript:;" target="_blank">帮助中心</a><span>|</span>

                    <a href="javascript:;" target="_blank">社区</a><span>|</span>
                    <span class="rel member-list z1">
                        <i class="down-arrow arrow"></i>
                        <ul class="abs z1  ">
                            <li>
                                <a rel="nofollow" href="javascript:;" target="_blank" style="display: block" class="member-link"><i class="icon a"></i>会员中心</a>
                            </li>
                            <li class="mission " style="display: none"><a rel="nofollow" href="javascript:;" target="_blank">团币任务</a></li>
                        </ul>
                    </span>
                    <!-- <span>|</span> -->
                    <div class="inline-block-debug rel app-ewm-box"><a rel="nofollow" class="app  icon  mr10  inline-block-debug">&nbsp;</a>
                        &nbsp;
                        <div class="app-ewm   pt20 abs z5" style="display: none">
                            <i class="arrow icon abs db zx2"></i>
                        </div>
                    </div>
                   
                    <div class="weixin icon   mr10  rel z5   inline-block-debug c-poi">
                        &nbsp;
							<div class="ewm   p20 abs z5" style="display: none">
                                <i class="arrow icon abs db zx2"></i>
                            </div>
                    </div>
                    <div class="sina icon   inline-block-debug c-poi" onclick="javascript:window.open('http://weibo.com/tuandai');"></div>
                </div>
                <div class="left-side">
                    <i class="icon dib phone vm  lh0">&nbsp;</i><span class="ml5">客服热线：1010-1218（9:00～22:00）</span>
                </div>
            </div>
        </div>
    
        <div class="nav-w bgfff">
            <div class="nav-box auto w1200 fix">
                <div class="r rel tc  slid z3" style="display: none">
                    <dl class="abs i-b-d vt about-us r0" id=""><dt><a href="${pageContext.request.contextPath }/account_default.html"><i class="account-icon i-b-d icon vm"></i>我的账户<i class="icon arrow i-b-d vm"></i></a></dt><dd><a href="${pageContext.request.contextPath }/jsp/member/RechargeNew2016.jsp">立即充值</a></dd><dd><a href="${pageContext.request.contextPath }/jsp/member/account_moneylist.jsp">资金统计</a></dd><dd><a href="${pageContext.request.contextPath }/jsp/member/account_weFTBAll.jsp">智能理财</a></dd><dd><a href="${pageContext.request.contextPath }/jsp/member/account_loaninbid.jsp">散标投资</a></dd><dd><a href="${pageContext.request.contextPath }/jsp/member/account_loanReturnPlanList.jsp">回款计划</a></dd><dd><a href="${pageContext.request.contextPath }/jsp/member/AutoTenderList.jsp">自动投标</a></dd><dd><a href="${pageContext.request.contextPath }/jsp/member/account_borrowReturnPlanList.jsp">还款安排</a></dd><dd><a href="${pageContext.request.contextPath }/jsp/member/account_borrowInBid2.jsp">借款记录</a></dd><dd><a href="javascript:logout();">退出</a></dd></dl>
                </div>
                <div class="nav r">
                    <ul>
                        <li class="nav-t">
                            <a href="${pageContext.request.contextPath }/jsp/homepage/investmenthome.jsp">首页</a>
                        </li>
						<li class="nav-t ">
                            <a href="javascript:;">网贷</a>  
						</li>
                        <li class="nav-t ">
                            <a href="javascript:;">会员交易</a>
                        </li>
<li class="nav-t ">
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
<a href="${pageContext.request.contextPath }/jsp/homepage/borrow_money.jsp">我要借款</a>
</li>

                    </ul>

                </div>
                <a href="${pageContext.request.contextPath }/jsp/homepage/investmenthome.jsp" class="logo dib l">
                    <img src="${pageContext.request.contextPath }/static/img1/logo.png" alt="团贷网"></a>
                <div class="index-bd">
                    <ul class="index_slider" style="bottom: 0px">                    

                   <li>
                             <img src="${pageContext.request.contextPath }/static/img1/1500523393353.png" alt="让金融更简单">
                        </li>

                    </ul>

                </div>
            </div>
        </div>

    </div>
     	   <!--  头部END  右侧计算器  -->
        <div class="tool">
            <div class="t-box rel" onclick="javascript:void(0);">
                <div class="dan-tip abs tc" style="display: none">市场有风险投资需谨慎<span class="triangle db"></span></div>
                <i class="t6"></i>
                <a href="javascript:;">风险提示</a>
            </div>
            <div class="t-box" onclick="javascript:window.open('http://www.sobot.com/chat/pc/index.html?sysNum=20ab7dce1e3346e8b90b649bd8baf591');"><i class="t1"></i><a href="javascript:;">在线客服</a></div>
            <div class=" t-box" onclick="javascript:window.open('//info.tdw.cn/help/index.html')"><i class="t2"></i><a href="javascript:;">帮助中心</a></div>
            <div class=" t-box" onclick="javascript:window.open('//news.tdw.cn/tool/int_fina.aspx');"><i class="t3"></i><a class="" href="javascript:;">计算工具</a></div>
            <div class="t-box to-top" onclick="javascript:;" style="display: block;"><i class="t5"></i><a href="javascript:;" class="pt10">回到顶部</a></div>
        </div>

    <!-- 中间内容STAR -->                 
    <!-- 中间内容STAR -->
    
    <div class="account-container clearfloat">
        <form style="*margin-top:10px" action="updateUserInfo" method="post"> 
            <div class="account-leftBox clearfloat">
                <div class="account-left">
                    <div>
                            <div class="home border-bottom-0">
                                <p><i class="dt-1"></i><a href="${pageContext.request.contextPath }/jsp/member/account_default.jsp">账户首页</a></p>
                            </div>

                            <dl>
                                <dt><i class="dt-2"></i>我的资金 <i class="arrow"></i></dt>
                                
                                <dd id=""><a href="${pageContext.request.contextPath }/jsp/member/account_moneylist.jsp">资金统计</a></dd>
                                <dd id=""><a href="${pageContext.request.contextPath }/jsp/member/account_moneyhistory.jsp">交易记录</a></dd>
                                <dd id=""><a href="${pageContext.request.contextPath }/jsp/member/RechargeNew2016.jsp">充值</a></dd>
                                <dd id=""><a href="${pageContext.request.contextPath }/jsp/member/drawmoney.jsp" onclick="return left_CheckAllowDraw();" target="_blank">提现</a></dd>
                            </dl>
                            <div>
                            	<dl>
                                <dt><i class="dt-3"></i>P2P<i class="arrow"></i></dt>
                                <dd id=""><a href="${pageContext.request.contextPath }/jsp/member/AutoTenderList.jsp">自动投标</a>
                                </dd>
                                <dd id=""> <div class="left-new"></div><a href="${pageContext.request.contextPath }/jsp/member/account_weFTBAll.jsp">智能投资</a>
                                	
                                </dd>
                                <dd id=""><a href="${pageContext.request.contextPath }/jsp/member/account_loaninbid.jsp">散标投资</a></dd>
                                
                                
                                <dd id=""><a href="${pageContext.request.contextPath }/jsp/member/account_loanReturnPlanList.jsp">回款计划</a></dd>
                                
                            </dl>
                          
                            <dl>
							<dt><i class="dt-4"></i>我的借款<i class="arrow"></i></dt>
							<dd id=""><a href="${pageContext.request.contextPath }/loadPersonShenHe">借入人审核</a></dd>
							<dd id=""><a href="${pageContext.request.contextPath }/propertyQu">资产标区</a></dd>
							<dd id="" >
							<a href="${pageContext.request.contextPath }/jsp/member/account_borrowInBid2.jsp">借款记录</a>
							</dd>
							<dd id=""><a href="${pageContext.request.contextPath }/jsp/member/account_borrowReturnPlanList.jsp">还款安排</a></dd>
							</dl>
                            </div>
                    </div>
                    <div>
                    <dl>
                        <dt><i class="dt-5"></i>个人设置<i class="arrow"></i></dt>
                        <dd id="" class="currentMenu"><a href="${pageContext.request.contextPath }/jsp/member/account_userdetailinfo.jsp">基本信息 </a></dd>
                        <dd id=""><a href="${pageContext.request.contextPath }/Validat_eindex.html">安全中心</a></dd> 
                        <dd id=""><a href="#">团贷会员</a></dd>
                        <dd id=""><a href="${pageContext.request.contextPath }/jsp/member/account_notice.jsp">消息中心</a></dd>
                    </dl>
                   </div>     
               </div>
            </div>
            
    <div class="account-rightBox clearfloat">
        <div class="box-padding">
            <div class="information">
                <div class="name">
                    <p class="font-14 font-333 fw"><span id="text1"></span><span class="yonghuming font-orange2">
                    ${myBody.b_nickname }</span><span id="text2"></span></p>
                </div>
                <div class="name_information">
                    <div class="name_left" style="border-right:none;">
                    
                    
                    
                    
                        <div class="touxiang_tu">
                            <c:choose>
                            	<c:when test="${empty BasicinfoheadPic}">
                            	<img src="${pageContext.request.contextPath }/static/img5/bav_head.png" id="baseBody_body_body_headimg" alt="团贷网">
                            	</c:when>
                            	<c:otherwise>
                            	<img src="${ BasicinfoheadPic}" id="baseBody_body_body_headimg" alt="团贷网">
                            	</c:otherwise>
                            </c:choose>
                            <p class="font-14 font-orange tx_t"><a href="${pageContext.request.contextPath }/jsp/member/account_useravatar.jsp" class="font-14 font-orange">[更换头像]</a></p>
                        </div>
                        <div class="information_liebiao">
                            <ul>
                                <li class="font-14 font-9993">昵&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;称：
                                ${myBody.b_nickname }</li>
                                <li class="font-14 font-9993">会员等级：普通会员</li>
                                <li class="font-14 font-9993">会员期限：终身</li>
                                <li class="font-14 font-9993 no1">
                                 	   安全认证：
                                    <a href="${pageContext.request.contextPath }/Validat_eindex.jsp">
                                        
                                        <i style="background: url('//js2.tdw.cn/images/member/icon.png') 0px 0px;" title="实名认证"></i>
                                        
                                        <b style="background: url('//js2.tdw.cn/images/member/icon.png') -24px 0px;" title="邮件认证"></b>
                                        
                                        <s style="background: url('//js2.tdw.cn/images/member/icon.png') -48px 0px;" title="安全问题设置"></s>
                                        
                                        <em style="background: url('//js2.tdw.cn/images/member/icon.png') -72px 0px;" title="银行卡绑定"></em>
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <div class="connection">
                            <ul>
                                <li><a href="${pageContext.request.contextPath }/jsp/member/account_changenickname.jsp" class="font-14 font-orange">[修改昵称]</a></li>
                                <li><a href="http://vip.tuandai.com/" class="font-14 font-orange">[我的成长]</a></li>
                                <li><a href="${pageContext.request.contextPath }/account_touplevel.jsp" class="font-14 font-orange">[<span>购买超级会员</span>]</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="box-padding margin-top-10">
            <div class="nav_top">
                <ul class="nav_title">
                    <li class="tab_title_a">
                        <a href="javascript:;">个人信息</a>
                    </li>
                    <li class="tab_title_b" >
                        <a href="${pageContext.request.contextPath }/jsp/member/account_useravatar.jsp">头像设置</a>
                    </li>
                    <li class="tab_title_b" >
                        <a href="${pageContext.request.contextPath }/jsp/member/account_changenickname.jsp">修改昵称</a>
                    </li>
                </ul>
            </div>
            <div class="top-tip margin-top-20 clearfloat">
               	 温馨提示：亲爱的用户，为了节约您的宝贵时间，请认真准确填写以下信息，方便您在团贷网借款和礼品的收取！
            </div>
            <div class="inf-item margin-top-40 clearfloat">
            <input type="text" id="uid" value="${users.id }" hidden="hidden"/>
                <p class="i-1">真实姓名：
                 <input name="university" maxlength="32"  class="input-text2" type="text" id="nickname" value="${myBody.b_nickname }" style="position: absolute;margin-left: 13px"></p>
                <p class="i-2"></p>
            </div>
            <div class="inf-item clearfloat">
                <p class="i-1">最高学历：</p>
                <div class="simulation-list">
                    <div class="text-box z-index-2" style="position: static;">
                        <span id="Graduation" class="text fl_l">${basicInfo.education }</span>
                        <input name="hidGraduation" id="baseBody_body_body_hidGraduation" class="hidden" type="hidden">
                        <ul style="display: none;">
                            <li>请选择</li>
                            <li>高中或以下</li>
                            <li>大专</li>
                            <li>本科</li>
                            <li>研究生或以上</li>
                        </ul>
                        <i class="arrow"></i>
                    </div>
                </div>
            </div>
            <div class="inf-item clearfloat">
                <p class="i-1"> 毕业学校：</p>
                <p class="i-2" style="width: 470px;">
                    <input name="university" maxlength="32" id="University" class="input-text2" type="text" value="${basicInfo.school }">
                    <span id="baseBody_body_body_RegularExpressionValidator1" style="color:Red;visibility:hidden;">只能输入中文和字母</span>
                </p>
            </div>
            <div class="inf-item clearfloat">
                <p class="i-1">婚姻状况：</p>
                <div class="simulation-list">
                    <div class="text-box z-index-2" style="position: static;">
                        <span id="Marriage" class="text fl_l">${basicInfo.marriage }</span>
                        <input name="hidMarriage" id="baseBody_body_body_hidMarriage" class="hidden" type="hidden">
                        <ul style="display: none;">
                            <li>请选择</li>
                            <li>未婚</li>
                            <li>已婚</li>
                        </ul>
                        <i class="arrow"></i>
                    </div>
                </div>
            </div>
            <div class="inf-item clearfloat">
                <p class="i-1">
                    居住地址：</p>
                <p class="i-2" style="width: 470px;">
                    <input name="address" maxlength="32" id="Address" class="input-text2" type="text" value="${basicInfo.address }">
                    <span id="baseBody_body_body_RegularExpressionValidator2" style="color:Red;visibility:hidden;">只能输入中文、数字、字母</span>
                </p>
            </div>
            <div class="inf-item clearfloat">
                <p class="i-1">
                    公司行业：</p>
                <div class="simulation-list">
                    <div class="text-box z-index-2">
                        <span id="OfficeDomain" class="text fl_l">${basicInfo.industry }</span>
                        <input name="hidOfficeDomain" id="baseBody_body_body_hidOfficeDomain" class="hidden" type="hidden">
                        <ul style="display: none;height: 200px;overflow-y: scroll;">
                            <li>请选择</li>
                            <li>制造业</li>
                            <li>IT</li>
                            <li>政府机关</li>
                            <li>媒体/广告</li>
                            <li>零售/批发</li>
                            <li>教育/培训</li>
                            <li>公共事业</li>
                            <li>交通运输业</li>
                            <li>房地产业</li>
                            <li>能源业</li>
                            <li>金融/法律</li>
                            <li>餐饮/旅游业</li>
                            <li>医疗/卫生/保健</li>
                            <li>建筑工程</li>
                            <li>农业</li>
                            <li>娱乐服务业</li>
                            <li>体育/艺术</li>
                            <li>公益组织</li>
                            <li>其他</li>
                        </ul>
                        <i class="arrow"></i>
                    </div>
                </div>
            </div>
            <div class="inf-item clearfloat">
                <p class="i-1">
                    公司规模：</p>
                <div class="simulation-list">
                    <div class="text-box z-index-2">
                        <span id="OfficeScale" class="text fl_l">${basicInfo.scale }</span>
                        <input name="hidOfficeScale" id="baseBody_body_body_hidOfficeScale" class="hidden" type="hidden" >
                        <ul style="display: none">
                            <li>请选择</li>
                            <li>10人以下</li>
                            <li>10-100人</li>
                            <li>100-500人</li>
                            <li>500人以上</li>
                        </ul>
                        <i class="arrow"></i>
                    </div>
                </div>
            </div>
            <div class="inf-item clearfloat">
                <p class="i-1">
                    职位：</p>
                <p class="i-2" style="width: 470px;">
                    <input name="position" maxlength="32" id="Position" class="input-text2" type="text" value="${basicInfo.position }">
                    <span id="baseBody_body_body_RegularExpressionValidator3" style="color:Red;visibility:hidden;">只能输入中文、数字、字母</span>
                </p>
            </div>
            <div class="inf-item clearfloat">
                <p class="i-1">
                    月收入：</p>
                <div class="simulation-list">
                    <div class="text-box z-index-2">
                        <span id="Salary" class="text fl_l" name="Salary">${basicInfo.income }</span>
                        <input name="hidSalary" id="baseBody_body_body_hidSalary" class="hidden" type="hidden" >
                        <ul style="display: none">
                            <li>请选择</li>
                            <li>1000元以下</li>
                            <li>1001-2000元</li>
                            <li>2000-5000元</li>
                            <li>5000-10000元</li>
                            <li>10000-20000元</li>
                            <li>20000-50000元</li>
                            <li>50000元以上</li>
                        </ul>
                        <i class="arrow"></i>
                    </div>
                </div>
            </div>
            <div class="inf-item clearfloat">
                <p class="i-1">
                    是否购房：</p>
                <div class="simulation-list" id="simulation">
                    <div class="text-box z-index-2">
                        <span id="IsHaveHouse" class="text fl_l" name="IsHaveCar">${basicInfo.ishouse }</span>
                        <input name="hidIsHaveHouse" id="baseBody_body_body_hidIsHaveHouse" class="hidden" type="hidden">
                        <ul style="display: none">
                            <li>请选择</li>
                            <li>有</li>
                            <li>没有</li>
                        </ul>
                        <i class="arrow"></i>
                    </div>
                </div>
            </div>
            <div class="inf-item clearfloat">
                <p class="i-1">
                    是否购车：</p>
                <div class="simulation-list">
                    <div class="text-box z-index-2">
                        <span id="IsHaveCar" class="text fl_l" name="IsHaveCar">${basicInfo.iscar }</span>
                        <input name="hidIsHaveCar" id="baseBody_body_body_hidIsHaveCar" class="hidden" type="hidden">
                        <ul style="display: none">
                            <li>请选择</li>
                            <li>有</li>
                            <li>没有</li>
                        </ul>
                        <i class="arrow"></i>
                    </div>
                </div>
            </div>
            <div class="inf-item clearfloat">
                <p class="i-1">
                    紧急联系人姓名：</p>
                <p class="i-2" style="width: 470px;">
                    <input name="contactName" maxlength="32" id="EmergencyContactName" class="input-text2" type="text" value="${basicInfo.emergecontact }">
                    <span id="baseBody_body_body_RegularExpressionValidator4" style="color:Red;visibility:hidden;">只能输入中文、字母</span>
                </p>
            </div>
            <div class="inf-item clearfloat">
                <p class="i-1">
                    紧急联系人电话：</p>
                <p class="i-2" style="width: 470px;">
                    <input name="contactTelNo" maxlength="32" id="EmergencyContactPhone" class="input-text2" type="text" value="${basicInfo.telno }">
                    <span id="baseBody_body_body_RegularExpressionValidator5" maxlenght="11" style="color:Red;visibility:hidden;">只能输入11位手机号码</span>
                </p>
            </div>
            <div class="inf-item clearfloat">
                <p class="i-1">
                    紧急联系人关系：</p>
                <div class="simulation-list">
                    <div class="text-box z-index-2">
                        <span id="EmergencyContactRelationShip" class="text fl_l" name="EmergencyContactRelationShip">${basicInfo.relation }</span>
                        <input name="hidEmergencyContactRelationShip" id="baseBody_body_body_hidEmergencyContactRelationShip" class="hidden" value="请选择" type="hidden" >
                        <ul style="display: none">
                            <li>请选择</li>
                            <li>配偶</li>
                            <li>父母</li>
                            <li>兄弟姐妹</li>
                            <li>子女</li>
                            <li>朋友</li>
                            <li>其他</li>
                        </ul>
                        <i class="arrow"></i>
                    </div>
                </div>
            </div>
            <div class="inf-item clearfloat">
                <p class="i-1">${str }</p>
                <p class="i-2">
                     <input name="ctl00$ctl00$ctl00$baseBody$body$body$btnSave" onclick="updatesub()"  value="保存"  class="submit-btn" type="button"></p>
            </div>
        </div>
    </div>
    
    <div id="showNotice" style="display: none;" class="dial-window dial-window-w3 z103">
        <div class="title rel">团贷网提醒您：<i class="close-x icon db abs"></i></div>
        <div class="body" id="showNoticeBody">
            <div class="prompt-box" style="width: 358px;">
                <p style="text-align: center;" id="showNoticeContent">完善信息完善信息完善信息</p>
            </div>
        </div>
        <div style="text-align: center;">
            <div class="btn-group mt10" style="display: inline-block; *display: inline; *zoom: 1; margin: 5px auto 0;">
                <span class="td-btn-1 td-btn-1-or btnReg2 f18 handCursor" id="closeNotice">确定</span>
            </div>
        </div>
    </div>
    <div id="diallayer" style="display: none;"></div>
 </form>
        
        <div id="dahei" style="display: none; height: 635px;"></div>
        <div id="tooltip" class="tooltip"></div>
    </div>
    <!-- 开通免密功能 -->
    <div style="display: none;" class="dial-window xm-window passwordAlt">
        <div class="title1 rel">温馨提示：<i class="close-x cgt-close-x icon db abs"></i></div>
        <div class="body">
            <div class="">
                <p class="p1">开启自动投标前，请您先进行以下授权：</p>
                <p class="p2" id="mm_toubiao"><em></em>自动投标<span>（适用于设置自动投标的用户）</span></p>
                <p class="p2" id="mm_zhaiquan"><em></em>自动购买收益权<span>（适用于购买WE计划的用户）</span></p>
                <p class="p2" id="mm_huankuan"><em></em>自动还款<span>（适用于有借款的用户）</span></p>
                <p class="p2" id="mm_tixian"><em></em>自动提现<span>（适用于企业及业务相关用户）</span></p>
            </div>
        </div>
        <div class="bottom">
            <div class="btn-group">
                <a target="_blank" id="btn_showquan" class="btn">立即开通</a>
            </div>
        </div>
    </div>
    <!-- 厦门银行托管 -->
    <div class="xm-mask" style="display: none;"></div>
    <div class="xiamen-pop" style="display: none;">
        <div class="close"></div>
        <div class="pop-tit">
                <h3></h3>
                <h4>团贷网联手厦门银行</h4>
                <p>个人账户升级为厦门银行存管账户</p>
        </div>
        <div class="pop-body">
                <p><span id="sp_open" style="display:none;">您尚未开通厦门银行资金存管账户，请先开通</span><span id="sp_active" style="display:none;">您的账号已升级为厦门银行资金存管账户，请您激活账户</span></p>
                <a href="https://www.tuandai.com/member/Bank/XM_BankBind.aspx" id="aOpen" class="btn">马上开通</a>
                <a href="javascript:void(0);" id="aActived" class="btn">马上激活</a>
                <a href="https://www.tuandai.com/member/Bank/XM_BankBind_Complete.aspx" id="aBankBind" class="btn">绑定银行卡</a>
        </div>
    </div>
    
    
    <!-- 温馨提示弹窗 -->
    <div id="bankBindAlert" style="display: none; margin-left: -212px;" class="dial-window xm-window bankBindAlert">
        <div class="title rel">温馨提示：<i class="close-x cgt-close-x icon db abs"></i></div>
        <div class="body">
            <div class="" style="text-align:center;">
                <p class="p1">请您在新打开的页面完成<span id="sp_title"></span></p>
                <p class="p2"><span id="sp_title2"></span>完成前请不要关闭此窗口，根据完成结果，选择下面的操作</p>
            </div>
        </div>
        <div class="bottom">
            <div class="btn-group">
                <a href="https://www.tdw.cn/member/account_default2.aspx" id="remind_aa" class="btn"><span id="aa_title"></span></a>
            </div>
            <a class="question" href="javascript:void(0);" target="_blank"><span id="sp_title3"></span>遇到问题</a>
        </div>
    </div>
    <!-- 香港澳门开通存管账户提示 -->
    <div id="gangaoAlert" style="display: none;" class="dial-window xm-window hongkong">
        <div class="title rel">温馨提示：<i class="close-x cgt-close-x icon db abs"></i></div>
        <div class="body">
            <div class="" style="text-align:center;">
                <p><b>由于您的证件为<span id="sp_cardTypeName">港澳通行证</span>，您还需完成以下操作才能进行正常理财：</b></p>
                <p>
                    1、添加专属服务<a id="a_qq" target="_blank" href="http://wpa.qq.com/msgrd?v=3&amp;uin=2880323191&amp;site=qq&amp;menu=yes">2880761023</a>为好友。<br>
                    2、<span id="sp_2Content">QQ联系客服专员，提交以下申请色半身照【保<br>证证件号码清晰且不能是镜面照】港澳台通行证背面彩色  13:30-18:00，周六日与法定节假日除外。</span><br>
                    3、资料提交后，平台及银行将会进行双重审核，一般时长为2天，审核通过后即可进行投资理财，届时会有短信通知。<br>
                    4、若已提交过资料给客服，则不需要重复提交，且可进行正常投资理财。
                </p>
            </div>
            <div class="bottom">
                <div class="btn-group">
                    <a id="hkBtn" href="javascript:;" class="btn">我知道了</a>
                </div>
            </div>
        </div>
    </div>
    
    <!-- 三要素弹窗 -->
    <div id="TheadAlert" style="display: none;" class="dial-window xm-window forgetPhone">
        <div class="title rel" style="display:block;">温馨提示：<i class="close-x cgt-close-x icon db abs"></i></div>
        <div class="body">
            <div class="">
                <p class="p1" style="width:350px; height:72px;"><span id="sp_newcontent">如果您忘记银行卡预留手机号，请与您的发卡银行客服联系，咨询预留手机号</span></p>
            </div>
        </div>
        <div class="bottom">
            <div id="btn_03" class="btn-group">
                <a id="qiyeBtn" href="javascript:;" class="btn">我知道了</a>
            </div>
            <div id="btn_04" class="count" style="display:none;">
                <a class="td-btn-1 td-btn-1-or btn" href="${pageContext.request.contextPath }/Validat_eindex.jsp">我要修改预留手机号</a>
            </div>
        </div>
    </div>

    <!-- 页脚 -->
    <div class="footer fix">
        <div class="footer-content auto fix cl">
            <div class="address fa f12 tc mt15">
                2010-<span>2017</span> 版权所有 © 团贷网 <a href="http://www.miitbeian.gov.cn/" target="_blank">粤ICP备16104116号-1</a> 派生科技集团股份有限公司 地址：东莞市南城区新城鸿福路102号汇成大厦102A号
            </div>
        </div>
        <div class="security tc">
            <a class="case1" rel="nofollow" href="http://www.beianbeian.com/beianxinxi/b3d821c3-95ad-49a0-8be4-157b33f3317f.html" target="_blank"></a>
            <a class="case2" rel="nofollow" href="http://www.gddg110.gov.cn/publicfiles/business/htmlfiles/dgjch/index.htm" target="_blank"></a>
        </div>
    </div>

        <!-- 中间内容END -->

        <!-- 提示弹出窗口 -->
        <div id="dial-window" style="display: none;" class="z103">
            <div class="title">
                加载中 <i class="close close-x icon abs"></i>
            </div>
            <div class="">
                <img src="${pageContext.request.contextPath }/static/img1/loading.gif" alt="加载中">
            </div>
            <div id="dial-window-btns" class="btns tc">
                <a href="javascript:void(0)" class="td-btn-1 td-btn-1-or dete " id="dial-window-okbtn">确定</a>
                <a href="javascript:void(0)" class="td-btn-1 td-btn-1-gar  cancle " id="dial-window-canclebtn">取消</a>
            </div>
        </div>
        <!--遮罩层-->
        <div id="diallayer" style="display: none;"></div>
       <script type="text/javascript" src="${pageContext.request.contextPath }/js/js1/jquery-1.js"></script> 
        <script type="text/javascript" src="${pageContext.request.contextPath }/js/js1/jquery.js"></script>
        <!--引用Jquery-->
        <script src="${pageContext.request.contextPath }/js/js1/thirdlib.js"></script>
        <script src="${pageContext.request.contextPath }/js/js1/public.js"></script>
        <script src="${pageContext.request.contextPath }/js/js1/common_002.js"></script>
        <script src="${pageContext.request.contextPath }/js/js1/settuandaicookie.js"></script>
   	 	<script src="${pageContext.request.contextPath }/js/js1/userbank.js"></script>
    	<script src="${pageContext.request.contextPath }/js/js1/common.js"></script>
    	<script src="${pageContext.request.contextPath }/js/js1/account.js"></script> 
    	<script charset="GB2312" type="text/javascript" src="${pageContext.request.contextPath }/js/js1/cgt_common.js"></script>
    	 
    <script>
    /* <![CDATA[ */
    	var Id =  "C2E065DE";
        var isEnterAutoInvestSetPage = getCookie( Id+ "isEnterAutoInvestSetPage");//是否进入自动投标设置
        var isClosedYellowTip2 = getCookie(Id + "isClosedYellowTip");//手动点击关闭黄标签
        var isDefaultShowed = getCookie(Id + "_account_default");//是否首页显示
        var IsOpenCGT = "1";

        var tuandaiw = getCookie("tuandaiw");
        $(function () {
            try {
                 getRandomValue();
            } catch (e) { }
        });

        $(function () {
            $('#menu_autoTender').hover(function () {
                    $('#YellowTips').fadeIn(150);
                },
                function () {
                    $('#YellowTips').stop().fadeOut();
                }
            );

            $('#menu_myWePlan').hover(function () {
                $('#YellowTips2').fadeIn(150);
            },
                function () {
                    $('#YellowTips2').stop().fadeOut();
                }
            );

            $("#menu_withdraw,#menu_borrowMiniEdit,#menu_recharge").click(function () {
                try {
                    if (IsOpenCGT == "1" && !checkIsOpen("chongzhi")) {
                        return false;
                    }
                }
                catch (e) {
                }
            });

            $("#menu_zxNewProject").click(function () {
                try {
                    if (IsOpenCGT == "1" && !checkIsOpen()) {
                        return false;
                    }
                }
                catch (e) {
                }
            });


            $("#menu_borrowMiniEdit,#menu_autoTender,#menu_userservice").click(function () {
                try {
                    if (IsOpenCGT == "1" && !checkIsOpen())
                        return false;
                }
                catch (e) {
                }
            });

            if (isEnterAutoInvestSetPage != null && isEnterAutoInvestSetPage != "") {
                isEnterAutoInvestSetPage = "1";
            }
            if (isClosedYellowTip2 != null && isClosedYellowTip2 != "") {
                isClosedYellowTip2 = "1";
            }
            if (isDefaultShowed != null && isDefaultShowed != "") {
                isDefaultShowed = "1";
            }

            if (isEnterAutoInvestSetPage != "1") {

                $('#menu_autoTender').find('em').addClass("emClass");
            }

            if (window.location.href.indexOf("member/account_default.aspx") < 0) {
                //不是主页,自动提示
                if (isClosedYellowTip2 != "1" && isEnterAutoInvestSetPage != "1") {
                    $('#YellowTips').fadeIn();
                }
            } else {
                //是主页,如果大黑不显示自动提示
                if (isClosedYellowTip2 != "1" && isEnterAutoInvestSetPage != "1" && isDefaultShowed != "1") {
                    $('#YellowTips').fadeIn();
                }
            }

            $('#menu_autoTender').find('.close').click(function () {
                $('#YellowTips').fadeOut();
                setCloseYellowTips();
            });
        });
        function setCloseYellowTips() {
            setCookie(Id + "isClosedYellowTip", "1");
        }
    </script>
    <script>
        /*<![CDATA[*/
        var left_newTitle = '团贷网提醒您：';
        var left_IsValidateMobile = "true";
        var left_IsValidateIdentity = "false";
        var left_IsSetPayPwd = "false";
        var IsbindBankNo = "false";

        function left_CheckAllowDraw() {
            if (IsOpenCGT != "1") {
                if (left_IsValidateMobile != 'true' || 
left_IsValidateIdentity != 'true' || left_IsSetPayPwd != 'true') {
                    userbank.tips(left_IsValidateMobile, 
left_IsValidateIdentity, left_IsSetPayPwd, "提现");
                    return false;
                } else if (IsbindBankNo == "false") {
                    $.ajax({
                        async: false,
                        type: "get",
                        url: 
"https:\/\/www.tdw.cn\/member\/Bank\/CompleteBank.aspx?ReturnUrl=https:\/\/www.tdw.cn\/member\/Bank\/drawmoney.aspx",

                        success: function(data) {
                            if ($("#bindBankWindows").length > 0) {
                               
$("#bindBankWindows,#diallayer").remove();
                            }
                            $("body").append(data);
                        },
                        cache: false
                    });
                }
                return true;
            }
        }

        function left_CheckAllowBindBank() {
            if (left_IsValidateMobile != 'True' || 
left_IsValidateIdentity != 'True') {
                userbank.tips(left_IsValidateMobile, 
left_IsValidateIdentity);
                return false;
            }

            return true;
        }

        /* ]]> */
    </script>
    
    <script>
        /*<![CDATA[*/
        var Page_Validators = new 
Array(document.getElementById("baseBody_body_body_RegularExpressionValidator1"),
 
document.getElementById("baseBody_body_body_RegularExpressionValidator2"),
 
document.getElementById("baseBody_body_body_RegularExpressionValidator3"),
 
document.getElementById("baseBody_body_body_RegularExpressionValidator4"),
 
document.getElementById("baseBody_body_body_RegularExpressionValidator5"));


        var baseBody_body_body_RegularExpressionValidator1 = 
document.all ? 
document.all["baseBody_body_body_RegularExpressionValidator1"] : 
document.getElementById("baseBody_body_body_RegularExpressionValidator1");

        baseBody_body_body_RegularExpressionValidator1.controltovalidate
 = "University";
        baseBody_body_body_RegularExpressionValidator1.errormessage = 
"只能输入中文和字母";
        
baseBody_body_body_RegularExpressionValidator1.evaluationfunction = 
"RegularExpressionValidatorEvaluateIsValid";
        
baseBody_body_body_RegularExpressionValidator1.validationexpression = 
"^[\\u4e00-\\u9fa5a-zA-Z]+$";
        var baseBody_body_body_RegularExpressionValidator2 = 
document.all ? 
document.all["baseBody_body_body_RegularExpressionValidator2"] : 
document.getElementById("baseBody_body_body_RegularExpressionValidator2");

        baseBody_body_body_RegularExpressionValidator2.controltovalidate
 = "Address";
        baseBody_body_body_RegularExpressionValidator2.errormessage = 
"只能输入中文、数字、字母";
        
baseBody_body_body_RegularExpressionValidator2.evaluationfunction = 
"RegularExpressionValidatorEvaluateIsValid";
        
baseBody_body_body_RegularExpressionValidator2.validationexpression = 
"^[\\u4e00-\\u9fa5a-zA-Z0-9]+$";
        var baseBody_body_body_RegularExpressionValidator3 = 
document.all ? 
document.all["baseBody_body_body_RegularExpressionValidator3"] : 
document.getElementById("baseBody_body_body_RegularExpressionValidator3");

        baseBody_body_body_RegularExpressionValidator3.controltovalidate
 = "Position";
        baseBody_body_body_RegularExpressionValidator3.errormessage = 
"只能输入中文、数字、字母";
        
baseBody_body_body_RegularExpressionValidator3.evaluationfunction = 
"RegularExpressionValidatorEvaluateIsValid";
        
baseBody_body_body_RegularExpressionValidator3.validationexpression = 
"^[\\u4e00-\\u9fa5a-zA-Z0-9]+$";
        var baseBody_body_body_RegularExpressionValidator4 = 
document.all ? 
document.all["baseBody_body_body_RegularExpressionValidator4"] : 
document.getElementById("baseBody_body_body_RegularExpressionValidator4");

        baseBody_body_body_RegularExpressionValidator4.controltovalidate
 = "EmergencyContactName";
        baseBody_body_body_RegularExpressionValidator4.errormessage = 
"只能输入中文、字母";
        
baseBody_body_body_RegularExpressionValidator4.evaluationfunction = 
"RegularExpressionValidatorEvaluateIsValid";
        
baseBody_body_body_RegularExpressionValidator4.validationexpression = 
"^[\\u4e00-\\u9fa5a-zA-Z]+$";
        var baseBody_body_body_RegularExpressionValidator5 = 
document.all ? 
document.all["baseBody_body_body_RegularExpressionValidator5"] : 
document.getElementById("baseBody_body_body_RegularExpressionValidator5");

        baseBody_body_body_RegularExpressionValidator5.controltovalidate
 = "EmergencyContactPhone";
        baseBody_body_body_RegularExpressionValidator5.errormessage = 
"只能输入11位手机号码";
        
baseBody_body_body_RegularExpressionValidator5.evaluationfunction = 
"RegularExpressionValidatorEvaluateIsValid";
        
baseBody_body_body_RegularExpressionValidator5.validationexpression = 
"^(13|14|15|17|18)[0-9]{9}$";

        var Page_ValidationActive = false;
        if (typeof (ValidatorOnLoad) == "function") {
            ValidatorOnLoad();
        }
        function ValidatorOnSubmit() {
            if (Page_ValidationActive) {
                return ValidatorCommonOnSubmit();
            }
            else {
                return true;
            }
        }
    function save() {
            var p = {graduation: $("#Graduation").html()};
            if (p.graduation == "请选择" || p.graduation == "") {
                noticeWindow("团贷网提醒您：", "请选择最高学历！", "确定", closeLoadingWindows);
                return false;
            }
            
            p['university'] = $("#University").val();

            if (p.university == "") {
                //noticeWindow("请输入毕业学校！");
                noticeWindow("团贷网提醒您：", "请输入毕业学校！", "确定", closeLoadingWindows);
                return false;
            }
            p['marriage'] = $("#Marriage").html();
            if (p.marriage == "请选择" || p.marriage == "") {
                //noticeWindow("请选择婚姻状况！");
                noticeWindow("团贷网提醒您：", "请选择婚姻状况！", "确定", closeLoadingWindows);
                return false;
            }
            p['address'] = $("#Address").val();
            if (p.address == "") {
                //noticeWindow("请输入居住地址！");
                noticeWindow("团贷网提醒您：", "请输入居住地址！", "确定", closeLoadingWindows);
                return false;
            }
            p['officeDomain'] = $("#OfficeDomain").html();
            if (p.officeDomain == "请选择" || p.officeDomain == "") {
                //noticeWindow("请选择公司行业！");
                noticeWindow("团贷网提醒您：", "请选择公司行业！", "确定", closeLoadingWindows);
                return false;
            }
            p['officeScale'] = $("#OfficeScale").html();
            if (p.officeScale == "请选择" || p.officeScale == "") {
                //noticeWindow("请选择公司规模！");
                noticeWindow("团贷网提醒您：", "请选择公司规模！", "确定", closeLoadingWindows);
                return false;
            }
            p['position'] = $("#Position").val();
            if (p.position == "") {
                //noticeWindow("请输入职位！");
                noticeWindow("团贷网提醒您：", "请输入职位！", "确定", closeLoadingWindows);
                return false;
            }
            p['salary'] = $("#Salary").html();
            if (p.salary == "请选择" || p.salary == "") {
                //noticeWindow("请选择月收入！");
                noticeWindow("团贷网提醒您：", "请选择月收入！", "确定", closeLoadingWindows);
                return false;
            }
            var isHaveHouse = $('#IsHaveHouse').text();
            if (isHaveHouse == "请选择" || isHaveHouse == "") {
                //noticeWindow("请选择是否购房！");
                noticeWindow("团贷网提醒您：", "请选择是否购房！", "确定", closeLoadingWindows);
                return false;
            }
            p['isHaveHouse'] = isHaveHouse == '有';
            var isHaveCar = $('#IsHaveCar').text();
            if (isHaveCar == "请选择" || isHaveCar == "") {
                //noticeWindow("请选择是否购车！");
                noticeWindow("团贷网提醒您：", "请选择是否购车！", "确定", closeLoadingWindows);
                return false;
            }
            p['isHaveCar'] = isHaveCar == '有';

            p['contactName'] = $("#EmergencyContactName").val().trim();
            if (p.contactName == "") {
                //noticeWindow("请输入紧急联系人姓名！");
                noticeWindow("团贷网提醒您：", "请输入紧急联系人姓名！", "确定", closeLoadingWindows);
                return false;
            }

            p['contactTelNo'] = $("#EmergencyContactPhone").val().trim();
            if (p.contactTelNo == "") {
                //noticeWindow("请输入紧急联系人电话！");
                noticeWindow("团贷网提醒您：", "请输入紧急联系人电话！", "确定", closeLoadingWindows);
                return false;
            }
            var telNo = "15829440849";
            if (telNo == $("#EmergencyContactPhone").val().trim()) {
                noticeWindow("团贷网提醒您：", "紧急联系人电话不能和本人的手机号码一致", "确定", closeLoadingWindows);
                return false;
            }
            p['contactRelationShip'] = $("#EmergencyContactRelationShip").html();
            if (p.contactRelationShip == "请选择" || p.contactRelationShip == "") {
                //noticeWindow("请输入紧急联系人关系！");
                noticeWindow("团贷网提醒您：", "请输入紧急联系人关系！", "确定", closeLoadingWindows);
                return false;
            }

			/* if(verifyChinese(p['contactName'],"#baseBody_body_body_RegularExpressionValidator4")
 			&& verifyEmergencyContactPhone(p['contactTelNo'])&& 
			verifyChinese(p['university'],"#baseBody_body_body_RegularExpressionValidator1")){

                $.common.post('updateUserInfo',p,function (data) {
                    noticeWindow("团贷网提醒您：", "信息修改成功", "确定", closeLoadingWindows);
                }, function (json) {if(json.error) {
                        return noticeWindow("团贷网提醒您：", "修改个人信息失败，请联系客服！", "确定", closeLoadingWindows);
                    }
                });
            } */

        }
        
        $(function () {
             $(".simulation-list").find('.arrow').click(function () {
                $(this).parent().find('li').click(function () {
                    var newVal = $(this).text();
					$(this).parents('.text-box').find('.hidden').val(newVal);
                });
            });
            $('.text-box').mouseleave(function () {
                $(this).find('ul').fadeOut(100).slideUp(100);
                $(this).find('ul').show().hide();
                $(this).css({ position: "static" });
            }); 
                    
            /* //form表单id 获取表单信息  调用save方法
            var fm = document.forms['form1'] || document.form1;
            fm.onsubmit = function() {
                save();                
            }; */
            /* $("#btnSave").click(function () {
            }); */

            //毕业学校
            $("#University").blur(function () {
                
					verifyChinese($(this).val(),"#baseBody_body_body_RegularExpressionValidator1");
	
            });
            //紧急联系人姓名
            $("#EmergencyContactName").blur(function () {
                
					verifyChinese($(this).val(),"#baseBody_body_body_RegularExpressionValidator4");

            });

            //紧急联系人电话
            $("#EmergencyContactPhone").blur(function () {
                	verifyEmergencyContactPhone($(this).val());
            });



        });
        //验证中文
        function verifyChinese(value,id) {
            var $span= $(id);
            var reg =/^[\u4e00-\u9fa5a-zA-Z]+$/;
            if(reg.test(value)){
                $span.css("visibility","hidden");//隐藏
                return true;
            }else{
                $span.css("visibility","visible");//显示
                return false;
            }
        }



        function verifyEmergencyContactPhone(value) {
            //紧急联系人电话
            var $span= 
$("#baseBody_body_body_RegularExpressionValidator5");
            var reg =/^(13|14|15|17|18)[0-9]{9}$/;
            if(reg.test(value)){
                $span.css("visibility","hidden");//隐藏
                return true;
            }else{
                $span.css("visibility","visible");//显示
                return false;
            }

        }

        $("#menu_userdetail").addClass("currentMenu");
        //提示信息
        function noticeWindow(title, content, okString, okbtnEvent, 
cancleString, cancleEvent) {
            closeLoadingWindows();
            showDialWindows(title, content, okString, okbtnEvent, 
cancleString, cancleEvent);
        }
        window.onload = function () {
            if (name) {
                noticeWindow("团贷网提醒您", name, "确定", function () {
                    closeLoadingWindows();
                    window.location = window.location;
                });
                name = "";
            }
        };
        /*]]>*/
    </script>



       
      <!--    数据统计
        <script type="text/javascript">

        portalWebsiteUrl = "\/\/www.tdw.cn";
       // portalWebsiteUrl = "http://www.tuandai.com";
        imageWebsiteUrl = "\/\/image.tuandai.com";
        ActivityWebsiteUrl = "https:\/\/hd.tuandai.com";
        PassportWebUrl = "\/\/passport.tuandai.com\/lgck";

			/*<![CDATA[*/
            (function () {
                $('.member-list').hover(function () {
                    
$(this).find('ul').addClass('ul-type').end().find('.mission').show();
                    
$(this).find('.arrow').removeClass('down-arrow').addClass('up-arrow');
                }, function () {
                    
$(this).find('ul').removeClass('ul-type').end().find('.mission').hide();
                    
$(this).find('.arrow').removeClass('up-arrow').addClass('down-arrow');
                }
            );
            })();
            function stringToHex(s) { var r = ''; var hexes = new 
Array('0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 
'd', 'e', 'f'); for (var i = 0; i < (s.length) ; i++) { r += 
hexes[s.charCodeAt(i) >> 4] + hexes[s.charCodeAt(i) & 0xf] ;} return r ;}
            function HexTostring(s) { var r = ''; for (var i = 0; i < 
s.length; i += 2) { var sxx = parseInt(s.substring(i, i + 2), 16); r += 
String.fromCharCode(sxx); } return r; }

            var nwbi_userName = "";
            var nwbi_sysNo = "TDW";
            var IsLogin = isCookieLogin();
           
            if (IsLogin) {
                var nickname = jaaulde.utils.cookies.get("TDWUserName");
                
                nwbi_userName = nickname;

            }
            
            (function () {
                var ta = document.createElement('script'); ta.type = 
'text/javascript'; ta.async = true;
                ta.src = ((("https:") == document.location.protocol) ? 
"https://" : "http://") + 'bilog.niiwoo.com/js/webaccess.js';
                var s = document.getElementsByTagName('script')[0]; 
s.parentNode.insertBefore(ta, s);
            })();

			/*]]>*/            
        </script>        -->

<img style="display: none;" src="${pageContext.request.contextPath }/html/html1/SingleLogin.html"><div id="HUABAN_WIDGETS"><div class="HUABAN-f-button" style="display: none;">采集</div><style>#HUABAN_WIDGETS
  {font-family: "helvetica neue",arial,sans-serif; color: #444; 
font-size: 14px;} #HUABAN_WIDGETS * {box-sizing: content-box;} 
#HUABAN_WIDGETS .HUABAN-main {position: fixed; left: 0; top: 0; width: 
100%; height: 100%; background: #e5e5e5; background: 
rgba(229,229,229,.95); max-height: 100%; overflow: hidden; z-index: 
9999999999999;} #HUABAN_WIDGETS a img {border: 0;} #HUABAN_WIDGETS 
.HUABAN-header {height: 50px; background: white; box-shadow: 0 0 4px 
rgba(0,0,0,.2); width: 100%; left: 0; top: 0; position: absolute;} 
#HUABAN_WIDGETS .HUABAN-header .HUABAN-inner {margin: 0 auto; position: 
relative;} #HUABAN_WIDGETS .HUABAN-header .HUABAN-close {width: 60px; 
height: 50px; border-left: 1px solid #ddd; position: absolute; right: 0;
 top: 0; background: url(https://huaban.com/img/widgets/btn_close.png) 
20px 14px no-repeat; cursor: pointer;} #HUABAN_WIDGETS .HUABAN-header 
.HUABAN-close:hover {background-position: 20px -26px;} #HUABAN_WIDGETS 
.HUABAN-header .HUABAN-close:active {background-position: 20px -66px;} 
#HUABAN_WIDGETS .HUABAN-header .HUABAN-logo {display: block; position: 
absolute; top: 12px;} #HUABAN_WIDGETS .HUABAN-waterfall-holder 
{position: relative; overflow-y: auto; height: 100%;} #HUABAN_WIDGETS 
.HUABAN-waterfall {position: relative; margin-top: 50px;} 
#HUABAN_WIDGETS .HUABAN-waterfall .HUABAN-empty {position: absolute; 
left: 50%; top: 30px; height: 36px; line-height: 36px; width: 216px; 
text-align: left; margin-left: -128px; color: #777; background: 
url(https://huaban.com/img/widgets/icon_notice.png) 12px 8px no-repeat 
white; padding-left: 40px; font-size: 15px;} #HUABAN_WIDGETS .HUABAN-btn
 {display: inline-block; border-radius: 2px; font-size: 14px; padding: 0
 12px; height: 30px; line-height: 30px; cursor: pointer; 
text-decoration: none; white-space: nowrap; -moz-user-select: none; 
-webkit-user-select: none; user-select: none; text-align: center; 
background: #D53939; color: white;} #HUABAN_WIDGETS .HUABAN-btn:hover 
{background: #E54646;} #HUABAN_WIDGETS .HUABAN-btn:active {background: 
#C52424;} #HUABAN_WIDGETS .HUABAN-wbtn {background: #EDEDED; color: 
#444;} #HUABAN_WIDGETS .HUABAN-wbtn:hover {background: #F2F2F2;} 
#HUABAN_WIDGETS .HUABAN-wbtn:active {background: #DDD;} #HUABAN_WIDGETS 
.HUABAN-f-button {position: absolute; display: none; z-index: 
9999999999998; box-shadow: 0 0 0 2px rgba(255,255,255,.2); background: 
#aaa; background: rgba(0,0,0,.3); color: white; cursor: pointer; 
padding: 0 12px; height: 30px; line-height: 30px; border-radius: 2px; 
font-size: 14px} #HUABAN_WIDGETS .HUABAN-f-button:hover 
{background-color: #999; background-color: rgba(0,0,0,.5);} 
#HUABAN_WIDGETS .HUABAN-f-button:active {background-color: 
rgba(0,0,0,.6);} #HUABAN_WIDGETS .HUABAN-red-normal-icon-button {width: 
36px; height: 24px; border: 0px; line-height: 24px; padding-left: 24px; 
padding-right: 0px; text-align: left; background: 
url(https://huaban.com/img/widgets/widget_icons.png) 0 -200px no-repeat;
 box-shadow: none !important; font-size: 14px; background-color: 
transparent !important;} #HUABAN_WIDGETS 
.HUABAN-red-normal-icon-button:hover {background-position: -130px 
-200px;} #HUABAN_WIDGETS .HUABAN-red-normal-icon-button:active 
{background-position: -260px -200px;} #HUABAN_WIDGETS 
.HUABAN-red-large-icon-button {width: 80px; height: 24px; border: 0px; 
line-height: 24px; padding-left: 24px; padding-right: 0px; text-align: 
left; background: url(https://huaban.com/img/widgets/widget_icons.png) 0
 -150px no-repeat; box-shadow: none !important; font-size: 14px; 
background-color: transparent !important;} #HUABAN_WIDGETS 
.HUABAN-red-large-icon-button:hover {background-position: -130px 
-150px;} #HUABAN_WIDGETS .HUABAN-red-large-icon-button:active 
{background-position: -260px -150px;} #HUABAN_WIDGETS 
.HUABAN-red-small-icon-button {width: 30px; height: 21px; border: 0px; 
line-height: 21px; padding-left: 20px; padding-right: 0px; text-align: 
left; background: url(https://huaban.com/img/widgets/widget_icons.png) 0
 -250px no-repeat; box-shadow: none !important; font-size: 12px; 
background-color: transparent !important;} #HUABAN_WIDGETS 
.HUABAN-red-small-icon-button:hover {background-position: -130px 
-250px;} #HUABAN_WIDGETS .HUABAN-red-small-icon-button:active 
{background-position: -260px -250px;} #HUABAN_WIDGETS 
.HUABAN-white-normal-icon-button {width: 36px; height: 24px; border: 
0px; line-height: 24px; padding-left: 24px; padding-right: 0px; 
text-align: left; background: 
url(https://huaban.com/img/widgets/widget_icons.png) 0 -500px no-repeat;
 box-shadow: none !important; color: #444; font-size: 14px; 
background-color: transparent !important;} #HUABAN_WIDGETS 
.HUABAN-white-normal-icon-button:hover {background-position: -130px 
-500px;} #HUABAN_WIDGETS .HUABAN-white-normal-icon-button:active 
{background-position: -260px -500px;} #HUABAN_WIDGETS 
.HUABAN-white-large-icon-button {width: 80px; height: 24px; border: 0px;
 line-height: 24px; padding-left: 24px; padding-right: 0px; text-align: 
left; background: url(https://huaban.com/img/widgets/widget_icons.png) 0
 -450px no-repeat; box-shadow: none !important; color: #444; font-size: 
14px; background-color: transparent !important;} #HUABAN_WIDGETS 
.HUABAN-white-large-icon-button:hover {background-position: -130px 
-450px;} #HUABAN_WIDGETS .HUABAN-white-large-icon-button:active 
{background-position: -260px -450px;} #HUABAN_WIDGETS 
.HUABAN-white-small-icon-button {width: 30px; height: 21px; border: 0px;
 line-height: 21px; padding-left: 20px; padding-right: 0px; text-align: 
left; background: url(https://huaban.com/img/widgets/widget_icons.png) 0
 -550px no-repeat; box-shadow: none !important; color: #444; font-size: 
12px; background-color: transparent !important;} #HUABAN_WIDGETS 
.HUABAN-white-small-icon-button:hover {background-position: -130px 
-550px;} #HUABAN_WIDGETS .HUABAN-white-small-icon-button:active 
{background-position: -260px -550px;} #HUABAN_WIDGETS .HUABAN-cell 
{width: 236px; position: absolute; background: white; box-shadow: 0 1px 
3px rgba(0,0,0,.3); transition: left .3s ease-in-out, top .3s linear;} 
#HUABAN_WIDGETS .HUABAN-cell .HUABAN-img-holder {overflow: hidden; 
position: relative;} #HUABAN_WIDGETS .HUABAN-cell 
.HUABAN-img-holder:hover img.HUABAN-cell-img {opacity: .8} 
#HUABAN_WIDGETS .HUABAN-cell .HUABAN-video-icon {width: 72px; height: 
62px; position: absolute; left: 50%; top: 50%; margin: -31px auto auto 
-36px; background: url(https://huaban.com/img/widgets/media_video.png) 0
 0 no-repeat; display: none;} #HUABAN_WIDGETS .HUABAN-cell.HUABAN-video 
.HUABAN-video-icon {display: block;} #HUABAN_WIDGETS .HUABAN-cell 
.HUABAN-over {display: none;} #HUABAN_WIDGETS .HUABAN-cell:hover 
.HUABAN-over {display: block;} #HUABAN_WIDGETS .HUABAN-cell .HUABAN-over
 .HUABAN-btn {width: 60px; height: 34px; padding: 0; position: absolute;
 left: 50%; top: 50%; margin: -18px 0 0 -31px; line-height: 34px; 
box-shadow: 0 0 0 2px rgba(255,255,255,.2); font-size: 16px;} 
#HUABAN_WIDGETS .HUABAN-cell.HUABAN-long .HUABAN-img-holder {height: 
600px;} #HUABAN_WIDGETS .HUABAN-cell.HUABAN-long 
.HUABAN-img-holder:after {content: ""; display: block; position: 
absolute; width: 236px; height: 12px; left: 0; bottom: 0; background: 
url(https://huaban.com/img/widgets/long_image_shadow_2.png) repeat-x 4px
 top;} #HUABAN_WIDGETS .HUABAN-cell img {width: 236px; display: block;} 
#HUABAN_WIDGETS .HUABAN-cell .HUABAN-size {margin: 8px 16px; font-size: 
12px; color: #999} #HUABAN_WIDGETS .HUABAN-cell .HUABAN-description 
{display: block; width: 202px; margin: 0 6px 6px; padding: 6px 10px; 
border: 0; resize: none; outline: 0; border: 1px solid transparent; 
line-height: 18px; font-size: 13px; overflow: hidden; word-wrap: 
break-word; background: 
url(https://huaban.com/img/widgets/icon_edit.png) 500px center 
no-repeat;} #HUABAN_WIDGETS .HUABAN-cell:hover .HUABAN-description 
{background-color: #fff9e0; background-position: right top;} 
#HUABAN_WIDGETS .HUABAN-cell .HUABAN-description:focus 
{background-color: #F9F9F9; background-position: 500px center;} 
#HUABAN_WIDGETS .HUABAN-cell .HUABAN-select-btn {width: 34px; 
height:34px; background: 
url(https://huaban.com/img/widgets/checkbox.png) 0 0 no-repeat; 
position: absolute; right: 5px; top: 5px; cursor: pointer;} 
#HUABAN_WIDGETS .HUABAN-cell .HUABAN-pinned-label {position: absolute; 
left: 0; top: 10px; height: 24px; line-height: 24px; padding: 0 10px; 
background: #CE0000; background: rgba(200, 0, 0, 0.9); color: white; 
font-size: 12px; display: none;} #HUABAN_WIDGETS 
.HUABAN-cell.HUABAN-pinned .HUABAN-pinned-label {display: block;} 
#HUABAN_WIDGETS .HUABAN-selected .HUABAN-select-btn 
{background-position: 0 -40px;} #HUABAN_WIDGETS .HUABAN-multi 
.HUABAN-cell .HUABAN-img-holder {cursor: pointer;} #HUABAN_WIDGETS 
.HUABAN-multi .HUABAN-cell .HUABAN-cell-pin-btn {display: none;} 
#HUABAN_WIDGETS .HUABAN-multi .HUABAN-cell .HUABAN-over {display: 
block;} #HUABAN_WIDGETS .HUABAN-header .HUABAN-multi-buttons {position: 
absolute; top: 10px; left: 0; display: none;} #HUABAN_WIDGETS 
.HUABAN-header .HUABAN-multi-buttons .HUABAN-btn {margin-right: 10px;} 
#HUABAN_WIDGETS .HUABAN-header .HUABAN-multi-noti {display: none; 
height: 50px; line-height: 50px; text-align: center; font-size: 16px; 
color: #999; font-weight: bold;} #HUABAN_WIDGETS .HUABAN-header 
.HUABAN-multi-noti span {font-weight: normal;} #HUABAN_WIDGETS 
.HUABAN-header .HUABAN-multi-noti i {font-style: normal;} 
#HUABAN_WIDGETS .HUABAN-header .HUABAN-notice {padding: 0 10px; 
height:30px; line-height: 30px; position: absolute; left: 50%; top: 
10px; margin-left: -83px; background: #fff9e2; text-align: center;} 
#HUABAN_WIDGETS .HUABAN-header .HUABAN-notice i {display: inline-block; 
width: 18px; height: 18px; background: 
url(https://huaban.com/img/widgets/icon_notice.png) 0 0 no-repeat; 
vertical-align: top; margin: 6px 6px 0 0;} #HUABAN_WIDGETS 
.HUABAN-switcher {height: 50px; width: 100px; position: relative;} 
#HUABAN_WIDGETS .HUABAN-switcher .HUABAN-title {position: absolute; 
right: 75px; top: 13px; color: #999; white-space: nowrap; line-height: 
24px; opacity: 0; visibility: hidden;} #HUABAN_WIDGETS 
.HUABAN-switcher:hover .HUABAN-title {visibility: visible; opacity: 1; 
-webkit-transition: opacity .2s linear; -webkit-transition-delay: .2s; 
transition: opacity .2s linear; transition-delay: .2s;} #HUABAN_WIDGETS 
.HUABAN-switcher .HUABAN-bar {width: 40px; height: 24px; background: 
#EB595F; border-radius: 12px; color: white; position: absolute; right: 
0; top: 13px; cursor: pointer; font-size: 14px; -webkit-transition: all 
.2s linear; transition: all .2s linear;} #HUABAN_WIDGETS 
.HUABAN-switcher:hover .HUABAN-bar {width: 64px;} #HUABAN_WIDGETS 
.HUABAN-switcher.HUABAN-on .HUABAN-bar {background: #7DD100;} 
#HUABAN_WIDGETS .HUABAN-switcher .HUABAN-bar .HUABAN-round {width: 20px;
 height: 20px; background: white; border-radius: 50%; position: 
absolute; left: 2px; top: 2px; -webkit-transition: left .2s linear; 
box-shadow: 0px 0px 3px rgba(0,0,0,0.15); transition: left .2s linear; 
box-shadow: 0px 0px 3px rgba(0,0,0,0.15);} #HUABAN_WIDGETS 
.HUABAN-switcher.HUABAN-on .HUABAN-bar .HUABAN-round {left: 17px;} 
#HUABAN_WIDGETS .HUABAN-switcher.HUABAN-on:hover .HUABAN-bar 
.HUABAN-round {left: 41px;} #HUABAN_WIDGETS .HUABAN-switcher .HUABAN-bar
 .HUABAN-text-1 {height: 24px; line-height: 24px; position: absolute; 
right:17px; top: 0; opacity: 0; visibility: hidden; -webkit-transition: 
all .2s linear; transition: all .2s linear;} #HUABAN_WIDGETS 
.HUABAN-switcher:hover .HUABAN-bar .HUABAN-text-1 {right: 9px; opacity: 
1; visibility: visible;} #HUABAN_WIDGETS 
.HUABAN-switcher.HUABAN-on:hover .HUABAN-bar .HUABAN-text-1 {right: 
17px; opacity: 0; visibility: hidden;} #HUABAN_WIDGETS .HUABAN-switcher 
.HUABAN-bar .HUABAN-text-2 {height: 24px; line-height: 24px; position: 
absolute; left:17px; top: 0; opacity: 0; visibility: hidden; 
-webkit-transition: all .2s linear; transition: all .2s linear;} 
#HUABAN_WIDGETS .HUABAN-switcher:hover .HUABAN-bar .HUABAN-text-2 {left:
 17px; opacity: 0; visibility: hidden;} #HUABAN_WIDGETS 
.HUABAN-switcher.HUABAN-on:hover .HUABAN-bar .HUABAN-text-2 {left: 9px; 
opacity: 1; visibility: visible;} #HUABAN_WIDGETS .HUABAN-header 
.HUABAN-switcher {position: absolute; right: 0; top: 0;} <!--[if IE 
6]>#HUABAN_WIDGETS .HUABAN-red-normal-icon-button, 
.HUABAN-red-large-icon-button, .HUABAN-red-small-icon-button, 
.HUABAN-white-normal-icon-button, .HUABAN-white-large-icon-button, 
.HUABAN-white-small-icon-button { background-image: 
url({{imgBase}}/widget_icons_ie6.png) <![endif]--></style></div></body></html>