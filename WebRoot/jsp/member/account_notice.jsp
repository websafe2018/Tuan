<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3" class="hb-loaded"><head>
    <title>团贷网 - 综合金融服务平台,让金融更简单！</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="alternate" media="only screen and (max-width: 640px)" href="https://m.tdw.cn/">
    <link rel="dns-prefetch" href="https://image.tuandai.com/">
    <link rel="dns-prefetch" href="https://js2.tdw.cn/">

    <link rel="shortcut icon" href="https://js2.tdw.cn/images/default/favicon.ico?v=20150513">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/css1/base.css">
    <meta name="keywords" content="投资理财，互联网金融，P2P网站，P2P网贷，P2P理财">
    <meta name="description" content="团贷网(tdw.cn)是派生科技集团股份有限公司（以下简称“派生集团”）旗下的综合金融服务平台,致力于为广大投资用户提供基金、保险、证券、网络借贷等互联网投资一站式综合服务.">
    <!-- 前端公用CSS库-->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/css1/public.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/css1/xiamen-bank.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/css1/cgt.css">

    <!-- UI CSS-->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/css1/new.css">
    <script type="text/javascript" async="" src="${pageContext.request.contextPath }/js/js1/webaccess.js"></script>
    <script src="${pageContext.request.contextPath }/js/js/hm.js"></script><script type="text/javascript">
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
    
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/css1/account_notice.css">



    
</head>
<body>
    <!-- 头部STAR -->
   <div class="header">
        <!-- top bar STAR -->
        <div class="t-b  t-b-w lh40 bgff f12 fst cl">
            <div class="w1200 h40 auto g6">
                <div class="right-side  r inline-block-debug">
                    <div class="inline-block-debug c-poi-a" id="">
                    <span class="reg" style="color:#303030">欢迎您，</span>
                    <a href="${pageContext.request.contextPath }/jsp/member/account_default.jsp" rel="nofollow" class="reg">${users.userName }</a><span>|</span><a href="javascript:logout();">退出</a><span>|</span></div>
                    <a rel="nofollow" href="https://hd.tdw.cn/web/invite_friends/index.aspx">邀请有礼</a><span>|</span>
                    <a rel="nofollow" href="http://info.tdw.cn/social.html" class="soc" target="_blank"><span class="hot-icon"></span>社会责任</a><span>|</span>
                    <a rel="nofollow" href="http://info.tdw.cn/help/index.html" target="_blank">帮助中心</a><span>|</span>
                    <a href="https://www.tuandai.com/activity/index.aspx" target="_blank">活动专题</a><span>|</span>
                    <a href="https://bbs.tuandai.com/" target="_blank">社区</a><span>|</span>
                    <span class="rel member-list z1">
                        <i class="down-arrow arrow"></i>
                        <ul class="abs z1  ">
                            <li>
                                <a rel="nofollow" href="https://vip.tdw.cn/" target="_blank" style="display: block" class="member-link"><i class="icon a"></i>会员中心</a>
                            </li>
                            <li class="mission " style="display: none"><a rel="nofollow" href="https://hd.tdw.cn/web/newhand/gonglve.aspx" target="_blank">团币任务</a></li>
                        </ul>
                    </span>
                  
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
        <!-- top bar END -->
        <!-- nav STAR -->
        <div class="nav-w bgfff">
            <div class="nav-box auto w1200 fix">
                <div class="r rel tc  slid z3" style="display: none">

                    <dl class="abs i-b-d vt about-us r0" id=""><dt><a href="${pageContext.request.contextPath }/jsp/member/account_default.jsp"><i class="account-icon i-b-d icon vm"></i>我的账户<i class="icon arrow i-b-d vm"></i></a></dt><dd><a href="${pageContext.request.contextPath }/jsp/member/RechargeNew2016.jsp">立即充值</a></dd><dd><a href="${pageContext.request.contextPath }/jsp/member/account_moneylist.jsp">资金统计</a></dd><dd><a href="${pageContext.request.contextPath }/jsp/member/account_weFTBAll.jsp">智能理财</a></dd><dd><a href="${pageContext.request.contextPath }/jsp/member/account_loaninbid.jsp">散标投资</a></dd><dd><a href="${pageContext.request.contextPath }/jsp/member/account_loanReturnPlanList.jsp">回款计划</a></dd><dd><a href="${pageContext.request.contextPath }/jsp/member/AutoTenderList.jsp">自动投标</a></dd><dd><a href="${pageContext.request.contextPath }/jsp/member/account_borrowReturnPlanList.jsp">还款安排</a></dd><dd><a href="${pageContext.request.contextPath }/jsp/member/account_borrowInBid2.jsp">借款记录</a></dd><dd><a href="javascript:logout();">退出</a></dd></dl>
                </div>
                <div class="nav r">
                    <ul>
                        <li class="nav-t">
                            <a href="${pageContext.request.contextPath }/jsp/homepage/investmenthome.jsp">首页</a>
                        </li>
						<li class="nav-t ">
                            <a href="${pageContext.request.contextPath }/lntellgent">网贷</a>
						</li>
                        <li class="nav-t">
                            <a rel="nofollow" href="https://hd.tdw.cn/web/newhand/classroom.aspx?tdsource=pcnewguide">新手</a>
                        </li>
                        <li class="nav-t ">
                            <a href="https://www.tdw.cn/pages/zSharePlan/zx_invest_list.aspx">会员交易</a>
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
<a href="https://www.tuandai.com/pages/borrow/index.aspx">借款</a>
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
        <!-- 头部END -->
        <!-- 右侧计算器 -->
        <div class="tool">
            <div class="t-box rel" onclick="javascript:void(0);">
                <div class="dan-tip abs tc" style="display: none">市场有风险投资需谨慎<span class="triangle db"></span></div>
                <i class="t6"></i>
                <a href="javascript:;">风险提示</a>
            </div>
            <div class="t-box" onclick="javascript:window.open('http://www.sobot.com/chat/pc/index.html?sysNum=20ab7dce1e3346e8b90b649bd8baf591');"><i class="t1"></i><a href="javascript:;">在线客服</a></div>
            <div class=" t-box" onclick="javascript:window.open('//info.tdw.cn/help/index.html')"><i class="t2"></i><a href="javascript:;">帮助中心</a></div>
            <div class=" t-box" onclick="javascript:window.open('//news.tdw.cn/tool/int_fina.aspx');"><i class="t3"></i><a class="" href="javascript:;">计算工具</a></div>
            <div class="t-box to-top" onclick="javascript:;" style="display: none;"><i class="t5"></i><a href="javascript:;" class="pt10">回到顶部</a></div>
        </div>

        <!-- 中间内容STAR -->                
        
    <!-- 中间内容STAR -->
    
    <div class="account-container clearfloat">
        <form id="form1" style="*margin-top:10px">
            <div class="account-leftBox clearfloat">
                <div class="account-left">

                    

                    <div>
                            <div class="home border-bottom-0">
                                <p><i class="dt-1"></i><a href="${pageContext.request.contextPath }/js/jsp/account_default.jsp">账户首页</a></p>
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
                                <dd id=""> <div class="left-new"></div>
                                	<a href="${pageContext.request.contextPath }/jsp/member/account_weFTBAll.jsp">智能投资</a>
                                	
                                </dd>
                                <dd id=""><a href="${pageContext.request.contextPath }/jsp/member/account_loaninbid.jsp">散标投资</a></dd>
                                
                                
                                <dd id=""><a href="${pageContext.request.contextPath }/jsp/member/account_loanReturnPlanList.jsp">回款计划</a></dd>
                                
                            </dl>
                 
                           <dl>
							<dt><i class="dt-4"></i>我的借款<i class="arrow"></i></dt>
							<dd id=""><a href="${pageContext.request.contextPath }/loadPersonShenHe">借入人审核</a></dd>
							<dd id=""><a href="${pageContext.request.contextPath }/propertyQu">资产标区</a></dd>
							<dd id="" class="currentMenu">
							<a href="${pageContext.request.contextPath }/jsp/member/account_borrowInBid2.jsp">借款记录</a>
							</dd>
							<dd id=""><a href="${pageContext.request.contextPath }/jsp/member/account_borrowReturnPlanList.jsp">还款安排</a></dd>
							</dl>
                            </div>

                    </div>
                    <div>
                    <dl>
                        <dt><i class="dt-5"></i>个人设置<i class="arrow"></i></dt>
                        <dd id=""><a href="${pageContext.request.contextPath }/jsp/member/account_userdetailinfo.jsp">基本信息 </a></dd>
                        <dd id=""><a href="${pageContext.request.contextPath }/Validat_eindex.html">安全中心</a></dd>   
                        <dd id=""><a href="${pageContext.request.contextPath }/account_touplevel.html">团贷会员</a></dd>
                        <dd id="" class=""><a href="${pageContext.request.contextPath }/jsp/member/account_notice.jsp">消息中心</a></dd>
                    </dl>
                    </div>
                    
               </div>
            </div>
            
    <div class="account-rightBox clearfloat">
        <div class="box-padding">
            <div class="account_tableBox clearfloat">
                <div class="nav_top">
                    <ul class="nav_title">
                        <li class="tab_title_a">
                            <a href="javascript:;">系统消息</a>
                        </li>
                        <li class="tab_title_b" onclick="javascript:window.location.href='/member/account_settinginform.aspx';">
                            <a href="${pageContext.request.contextPath }/jsp/member/account_settinginform.jsp">消息设置</a>
                        </li>
                        <li class="tab_title_b" onclick="javascript:window.location.href='/member/account_loginhistory.aspx';">
                            <a href="${pageContext.request.contextPath }/jsp/member/account_loginhistory.jsp">登录日志</a>
                        </li>
                    </ul>
                </div>

                <div class="account_table2 margin-top-20">
                    <div class="sortlist">
                        <span>筛选：</span>
                        <em class="on" v="0">全部<i>(0)</i></em>
                        <em v="1">系统通知<i>(0)</i></em>
                        <em v="2">投资通知<i>(0)</i></em>
                        <em v="3">借款通知<i>(0)</i></em>
                        <em v="4">奖品通知<i>(0)</i></em>
                        <em v="5">活动通知<i>(0)</i></em>
                    </div>
                    <table class="system-table" id="listTable" width="100%" cellspacing="0" border="0">
                        <thead>
                        <tr class="hd-tr">
                            <th width="8%"><span class="acc-icons letter-icons"></span></th>
                            <th width="10%">类别</th>
                            <th width="52%">主题</th>
                            <th width="14%">时间</th>
                            <th width="15%">
                                <div class="delete" id="deletebtn" onclick="deleteMsg(event)">全部删除<span class="acc-icons del-icons"></span></div>
                            </th>
                        </tr>
                        </thead>
                        <tbody id="tbody"><tr class="item-tr" dataid="c6a62989-575f-4789-ac06-2e4a40bf8dd8"><td width="8%"><img src="${pageContext.request.contextPath }/static/img1/read.png"></td><td width="10%">系统通知</td><td class="subject" isread="1" msgid="c6a62989-575f-4789-ac06-2e4a40bf8dd8"  width="52%">新手福利到账提醒</td><td width="14%">2017/09/22</td><td width="15%"><div class="delete" id="c6a62989-575f-4789-ac06-2e4a40bf8dd8" onclick="deleteMsg(event)">删除<span class="acc-icons del-icons"></span></div></td></tr><tr class="content-tr" style="display: none;" id="msg_c6a62989-575f-4789-ac06-2e4a40bf8dd8"><td colspan="5">恭喜您获得518元红包和2888元新手体验金，现在加入新手标可享12%年化收益，闲钱闲置不如投资增值，快快前往“我-团宝箱”查看吧。</td></tr></tbody>
                    </table>
                    <div class="no-message" style="display: none;">
                        <div class="no-mes-con">
                            <span class="acc-icons notice-icon"></span> 您暂无新消息
                        </div>
                    </div>
                    <div class="txc">
                        <div id="pager" class="pagination"></div>
                    </div>
                </div>
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
                    1、添加专属服务<a id="a_qq" target="_blank" href="http://wpa.qq.com/msgrd?v=3&amp;uin=2880761023&amp;site=qq&amp;menu=yes">2880761023</a>为好友。<br>
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
            <div class="title"></div>
            <div class="body"></div>
            <div id="dial-window-btns" class="btns tc" style="display: none;">
                <a href="javascript:void(0)" class="td-btn-1 td-btn-1-or dete " id="dial-window-okbtn" style="display: none;">确定</a>
                <a href="javascript:void(0)" class="td-btn-1 td-btn-1-gar  cancle " id="dial-window-canclebtn" style="display: none;">取消</a>
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
        <!--<script src="//js2.tdw.cn/scripts/pager.js?v=2017070301"></script>-->
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
                if (left_IsValidateMobile != 'true' || left_IsValidateIdentity != 'true' || left_IsSetPayPwd != 'true') {
                    userbank.tips(left_IsValidateMobile, left_IsValidateIdentity, left_IsSetPayPwd, "提现");
                    return false;
                } else if (IsbindBankNo == "false") {
                    $.ajax({
                        async: false,
                        type: "get",
                        url: "https:\/\/www.tdw.cn\/member\/Bank\/CompleteBank.aspx?ReturnUrl=https:\/\/www.tdw.cn\/member\/Bank\/drawmoney.aspx",
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
            if (left_IsValidateMobile != 'True' || left_IsValidateIdentity != 'True') {
                userbank.tips(left_IsValidateMobile, left_IsValidateIdentity);
                return false;
            }

            return true;
        }

        /* ]]> */
    </script>
    
    
    <!--<script src="//js2.tdw.cn/scripts/member/account_notice/account_notice.js"></script>-->
    <script>
        /*<![CDATA[*/
        // 异步获取未读消息个数
        function setMsgCount() {
            // .net: /member/ajaxCross/ajax_msg.ashx?Cmd=getUnreadMsg
            $.common.get('/member/message/getUnread', function (data) {
                $(".sortlist em").each(function(i, o) {
                    var em = $(this);
                    em.children('i').text('(' + data[i] + ')');
                    em.click(function () {
                        $(".sortlist em").removeClass("on");
                        $(this).addClass('on');
                        bindMsg();
                    });
                });
            });
        }

        var pageNum = 1, pageSize = 20;
        function pagerFn(pageindex) {
            if(parseInt(pageindex) + 1 == pageNum) {
                return false;
            }
            pageNum = parseInt(pageindex) + 1;
            bindMsg();
            return false;
        }
        function bindMsg() {
            showDialWindows("团贷网提醒您", "正在加载");
            var req = 'categoryId=' + $(".sortlist em[class=on]").attr("v");
            req += '&pageNum=' + pageNum + '&pageSize=' + pageSize;
            $.common.get('/member/message/listNotices', req, function (data) {
                var list = data.dataList, html = '';
                if(!list.length) {
                    $('#tbody,#pager').html('');
                    $('.no-message').show();
                    closeLoadingWindows();
                    return;
                }
                for(var i = 0; i < list.length; i++) {
                    var e = list[i];
                    var t = "<tr class='item-tr' dataId=" + e.id + ">" +
                        "<td width='8%'><img src='//js2.tdw.cn/images/member/" + (e.isRead == 1 ? "read" : "unread") + ".png'></td></td>" +
                        "<td width='10%'>" + e.categoryValue + "</td>" +
                        "<td width='52%' class='subject' isread='" + e.isRead + "' msgid='" + e.id + "' onclick='showMsg(\"" + e.id + "\")'>" + e.title + "</span></td>" +
                        "<td width='14%'>" + e.addDate + "</td>" +
                        "<td width='15%'><div class='delete' id=" + e.id + " onclick=deleteMsg(event) >删除<span class='acc-icons del-icons'></span></div></td>" +
                        "</tr>";
                    t += '<tr class="content-tr" style="display: none;" id="msg_' + e.id + '"><td colspan="5">' + e.content + '</td></tr>';
                    html += t;
                }
                $('#tbody').html(html);
                $("#pager").pagination(data.totalCount, {
                    callback: pagerFn,
                    items_per_page: pageSize,
                    num_display_entries: 5,
                    current_page: parseInt(pageNum - 1),
                    num_edge_entries: 1,
                    prev_text: "上一页",
                    next_text: "下一页",
                    link_to: "",
                    ellipse_text: "...",
                    prev_show_always: true,
                    next_show_always: true,
                    renderer: "defaultRenderer",
                    show_if_single_page: false,
                    load_first_page: true
                });
                $('.no-message').hide();
                closeLoadingWindows();
            }, function (err) {
                closeLoadingWindows();
            });
        }
        //绑定消息
        /*function bindMsg() {
            showDialWindows("团贷网提醒您", "正在加载");
            new Pager().page({
                jqbody: '#tbody',
                jqpage: '#pager',
                //pagesize: 20,
                url: '/member/message/listNotices',
                data: {'categoryId': $(".sortlist em[class=on]").attr("v")},
                each: function (data) {
                    var t = "<tr class='item-tr' dataId=" + data.id + ">" +
                        "<td width='8%'><img src='//js2.tdw.cn/images/member/" + (data.isRead == 1 ? "read" : "unread") + ".png'></td></td>" +
                        "<td width='10%'>" + data.categoryValue + "</td>" +
                        "<td width='52%' class='subject' isread='" + data.isRead + "' msgid='" + data.id + "' onclick='showMsg(\"" + data.id + "\")'>" + data.title + "</span></td>" +
                        "<td width='14%'>" + data.addDate + "</td>" +
                        "<td width='15%'><div class='delete' id=" + data.id + " onclick=deleteMsg(event) >删除<span class='acc-icons del-icons'></span></div></td>" +
                        "</tr>";
                    t += '<tr class="content-tr" style="display: none;" id="msg_' + data.id + '"><td colspan="5">' + data.content + '</td></tr>';
                    return t;
                },
                empty: function () {
                    $('.no-message').show();
                    closeLoadingWindows();
                },
                complete: function () {
                    $('.no-message').hide();
                    closeLoadingWindows();
                }
            });
        }*/
        function showMsg(msgid) {
            var t = $('#msg_' + msgid);
            if(t.is(':hidden')) {
                t.show();
                var tr = $('#' + msgid).closest('tr');
                if(tr.find('.subject').attr('isread') == '0') {
                    $.common.post('/member/message/updateReaded', 'id=' + msgid, function (data) {
//                        thisDom.addClass("read");
                        tr.find('.subject').attr('isread', '1');
                        tr.find("img").attr("src", "//js2.tdw.cn/images/member/read.png");
                        setMsgCount();
                    });
                }
            } else {
                t.hide();
            }
        }

        // 【删除】提示弹窗
        function deleteMsg(event) {
            var content = "";
            var nowId = "";
            if (event.target) {   //非IE
                content = event.target.id == "deletebtn" ? content = "确定删除全部消息吗？" : content = "确定删除该条信息吗？";
                nowId = event.target.id;
            } else {
                content = "确定删除该条信息吗？";
                nowId = event.srcElement.id;
            }
            showDialWindows("团贷网提醒您", content, "确认", function () {
                var ids = [];
                if (nowId == "deletebtn") { // 删除全部
                    $("#tbody").find("tr").each(function () {
                        var id = $(this).attr("dataId");
                        id && ids.push(id);
                    });
                } else { // 删除单条
                    ids.push(nowId);
                }
                ids.length > 0 && $.common.post('/member/message/deleteNotice', 'ids=' + ids.join(','), function (data) {
                    closeLoadingWindows();
                    showDialWindows("团贷网提醒您", "删除成功", "确认", function () {
                        closeLoadingWindows();
                        setMsgCount();
                        bindMsg();
                    });
                }, function (json) {
                    closeLoadingWindows();
                    showDialWindows("团贷网提醒您", json.error ? "系统内部错误" : "删除失败", "确认", function () {
                        closeLoadingWindows();
                    });
                });
            }, "取消", closeLoadingWindows);
        }

        $(function () {
            setMsgCount();
            ///绑定系统消息
            bindMsg();

            var newTitle = '团贷网提醒您：';
            $("#menu_sysinfo").addClass("currentMenu");
        });
        /*]]>*!/*/
    </script>



       
        <!--数据统计-->
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
            )
            })();
            function stringToHex(s) { var r = ''; var hexes = new Array('0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'); for (var i = 0; i < (s.length) ; i++) { r += hexes[s.charCodeAt(i) >> 4] + hexes[s.charCodeAt(i) & 0xf] } return r }
            function HexTostring(s) { var r = ''; for (var i = 0; i < s.length; i += 2) { var sxx = parseInt(s.substring(i, i + 2), 16); r += String.fromCharCode(sxx) } return r }

            var nwbi_userName = "";
            var nwbi_sysNo = "TDW";
            var IsLogin = isCookieLogin();
           
            if (IsLogin) {
                var nickname = jaaulde.utils.cookies.get("TDWUserName");
                
                nwbi_userName = nickname;

            }
            
            (function () {
                var ta = document.createElement('script'); ta.type = 'text/javascript'; ta.async = true;
                ta.src = ((("https:") == document.location.protocol) ? "https://" : "http://") + 'bilog.niiwoo.com/js/webaccess.js';
                var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ta, s);
            })();

			/*]]>*/            
        </script>        

<img style="display: none;" src="${pageContext.request.contextPath }/html/html1/SingleLogin.html"><div id="HUABAN_WIDGETS"><div class="HUABAN-f-button" style="display: none;">采集</div><style>#HUABAN_WIDGETS  {font-family: "helvetica neue",arial,sans-serif; color: #444; font-size: 14px;} #HUABAN_WIDGETS * {box-sizing: content-box;} #HUABAN_WIDGETS .HUABAN-main {position: fixed; left: 0; top: 0; width: 100%; height: 100%; background: #e5e5e5; background: rgba(229,229,229,.95); max-height: 100%; overflow: hidden; z-index: 9999999999999;} #HUABAN_WIDGETS a img {border: 0;} #HUABAN_WIDGETS .HUABAN-header {height: 50px; background: white; box-shadow: 0 0 4px rgba(0,0,0,.2); width: 100%; left: 0; top: 0; position: absolute;} #HUABAN_WIDGETS .HUABAN-header .HUABAN-inner {margin: 0 auto; position: relative;} #HUABAN_WIDGETS .HUABAN-header .HUABAN-close {width: 60px; height: 50px; border-left: 1px solid #ddd; position: absolute; right: 0; top: 0; background: url(https://huaban.com/img/widgets/btn_close.png) 20px 14px no-repeat; cursor: pointer;} #HUABAN_WIDGETS .HUABAN-header .HUABAN-close:hover {background-position: 20px -26px;} #HUABAN_WIDGETS .HUABAN-header .HUABAN-close:active {background-position: 20px -66px;} #HUABAN_WIDGETS .HUABAN-header .HUABAN-logo {display: block; position: absolute; top: 12px;} #HUABAN_WIDGETS .HUABAN-waterfall-holder {position: relative; overflow-y: auto; height: 100%;} #HUABAN_WIDGETS .HUABAN-waterfall {position: relative; margin-top: 50px;} #HUABAN_WIDGETS .HUABAN-waterfall .HUABAN-empty {position: absolute; left: 50%; top: 30px; height: 36px; line-height: 36px; width: 216px; text-align: left; margin-left: -128px; color: #777; background: url(https://huaban.com/img/widgets/icon_notice.png) 12px 8px no-repeat white; padding-left: 40px; font-size: 15px;} #HUABAN_WIDGETS .HUABAN-btn {display: inline-block; border-radius: 2px; font-size: 14px; padding: 0 12px; height: 30px; line-height: 30px; cursor: pointer; text-decoration: none; white-space: nowrap; -moz-user-select: none; -webkit-user-select: none; user-select: none; text-align: center; background: #D53939; color: white;} #HUABAN_WIDGETS .HUABAN-btn:hover {background: #E54646;} #HUABAN_WIDGETS .HUABAN-btn:active {background: #C52424;} #HUABAN_WIDGETS .HUABAN-wbtn {background: #EDEDED; color: #444;} #HUABAN_WIDGETS .HUABAN-wbtn:hover {background: #F2F2F2;} #HUABAN_WIDGETS .HUABAN-wbtn:active {background: #DDD;} #HUABAN_WIDGETS .HUABAN-f-button {position: absolute; display: none; z-index: 9999999999998; box-shadow: 0 0 0 2px rgba(255,255,255,.2); background: #aaa; background: rgba(0,0,0,.3); color: white; cursor: pointer; padding: 0 12px; height: 30px; line-height: 30px; border-radius: 2px; font-size: 14px} #HUABAN_WIDGETS .HUABAN-f-button:hover {background-color: #999; background-color: rgba(0,0,0,.5);} #HUABAN_WIDGETS .HUABAN-f-button:active {background-color: rgba(0,0,0,.6);} #HUABAN_WIDGETS .HUABAN-red-normal-icon-button {width: 36px; height: 24px; border: 0px; line-height: 24px; padding-left: 24px; padding-right: 0px; text-align: left; background: url(https://huaban.com/img/widgets/widget_icons.png) 0 -200px no-repeat; box-shadow: none !important; font-size: 14px; background-color: transparent !important;} #HUABAN_WIDGETS .HUABAN-red-normal-icon-button:hover {background-position: -130px -200px;} #HUABAN_WIDGETS .HUABAN-red-normal-icon-button:active {background-position: -260px -200px;} #HUABAN_WIDGETS .HUABAN-red-large-icon-button {width: 80px; height: 24px; border: 0px; line-height: 24px; padding-left: 24px; padding-right: 0px; text-align: left; background: url(https://huaban.com/img/widgets/widget_icons.png) 0 -150px no-repeat; box-shadow: none !important; font-size: 14px; background-color: transparent !important;} #HUABAN_WIDGETS .HUABAN-red-large-icon-button:hover {background-position: -130px -150px;} #HUABAN_WIDGETS .HUABAN-red-large-icon-button:active {background-position: -260px -150px;} #HUABAN_WIDGETS .HUABAN-red-small-icon-button {width: 30px; height: 21px; border: 0px; line-height: 21px; padding-left: 20px; padding-right: 0px; text-align: left; background: url(https://huaban.com/img/widgets/widget_icons.png) 0 -250px no-repeat; box-shadow: none !important; font-size: 12px; background-color: transparent !important;} #HUABAN_WIDGETS .HUABAN-red-small-icon-button:hover {background-position: -130px -250px;} #HUABAN_WIDGETS .HUABAN-red-small-icon-button:active {background-position: -260px -250px;} #HUABAN_WIDGETS .HUABAN-white-normal-icon-button {width: 36px; height: 24px; border: 0px; line-height: 24px; padding-left: 24px; padding-right: 0px; text-align: left; background: url(https://huaban.com/img/widgets/widget_icons.png) 0 -500px no-repeat; box-shadow: none !important; color: #444; font-size: 14px; background-color: transparent !important;} #HUABAN_WIDGETS .HUABAN-white-normal-icon-button:hover {background-position: -130px -500px;} #HUABAN_WIDGETS .HUABAN-white-normal-icon-button:active {background-position: -260px -500px;} #HUABAN_WIDGETS .HUABAN-white-large-icon-button {width: 80px; height: 24px; border: 0px; line-height: 24px; padding-left: 24px; padding-right: 0px; text-align: left; background: url(https://huaban.com/img/widgets/widget_icons.png) 0 -450px no-repeat; box-shadow: none !important; color: #444; font-size: 14px; background-color: transparent !important;} #HUABAN_WIDGETS .HUABAN-white-large-icon-button:hover {background-position: -130px -450px;} #HUABAN_WIDGETS .HUABAN-white-large-icon-button:active {background-position: -260px -450px;} #HUABAN_WIDGETS .HUABAN-white-small-icon-button {width: 30px; height: 21px; border: 0px; line-height: 21px; padding-left: 20px; padding-right: 0px; text-align: left; background: url(https://huaban.com/img/widgets/widget_icons.png) 0 -550px no-repeat; box-shadow: none !important; color: #444; font-size: 12px; background-color: transparent !important;} #HUABAN_WIDGETS .HUABAN-white-small-icon-button:hover {background-position: -130px -550px;} #HUABAN_WIDGETS .HUABAN-white-small-icon-button:active {background-position: -260px -550px;} #HUABAN_WIDGETS .HUABAN-cell {width: 236px; position: absolute; background: white; box-shadow: 0 1px 3px rgba(0,0,0,.3); transition: left .3s ease-in-out, top .3s linear;} #HUABAN_WIDGETS .HUABAN-cell .HUABAN-img-holder {overflow: hidden; position: relative;} #HUABAN_WIDGETS .HUABAN-cell .HUABAN-img-holder:hover img.HUABAN-cell-img {opacity: .8} #HUABAN_WIDGETS .HUABAN-cell .HUABAN-video-icon {width: 72px; height: 62px; position: absolute; left: 50%; top: 50%; margin: -31px auto auto -36px; background: url(https://huaban.com/img/widgets/media_video.png) 0 0 no-repeat; display: none;} #HUABAN_WIDGETS .HUABAN-cell.HUABAN-video .HUABAN-video-icon {display: block;} #HUABAN_WIDGETS .HUABAN-cell .HUABAN-over {display: none;} #HUABAN_WIDGETS .HUABAN-cell:hover .HUABAN-over {display: block;} #HUABAN_WIDGETS .HUABAN-cell .HUABAN-over .HUABAN-btn {width: 60px; height: 34px; padding: 0; position: absolute; left: 50%; top: 50%; margin: -18px 0 0 -31px; line-height: 34px; box-shadow: 0 0 0 2px rgba(255,255,255,.2); font-size: 16px;} #HUABAN_WIDGETS .HUABAN-cell.HUABAN-long .HUABAN-img-holder {height: 600px;} #HUABAN_WIDGETS .HUABAN-cell.HUABAN-long .HUABAN-img-holder:after {content: ""; display: block; position: absolute; width: 236px; height: 12px; left: 0; bottom: 0; background: url(https://huaban.com/img/widgets/long_image_shadow_2.png) repeat-x 4px top;} #HUABAN_WIDGETS .HUABAN-cell img {width: 236px; display: block;} #HUABAN_WIDGETS .HUABAN-cell .HUABAN-size {margin: 8px 16px; font-size: 12px; color: #999} #HUABAN_WIDGETS .HUABAN-cell .HUABAN-description {display: block; width: 202px; margin: 0 6px 6px; padding: 6px 10px; border: 0; resize: none; outline: 0; border: 1px solid transparent; line-height: 18px; font-size: 13px; overflow: hidden; word-wrap: break-word; background: url(https://huaban.com/img/widgets/icon_edit.png) 500px center no-repeat;} #HUABAN_WIDGETS .HUABAN-cell:hover .HUABAN-description {background-color: #fff9e0; background-position: right top;} #HUABAN_WIDGETS .HUABAN-cell .HUABAN-description:focus {background-color: #F9F9F9; background-position: 500px center;} #HUABAN_WIDGETS .HUABAN-cell .HUABAN-select-btn {width: 34px; height:34px; background: url(https://huaban.com/img/widgets/checkbox.png) 0 0 no-repeat; position: absolute; right: 5px; top: 5px; cursor: pointer;} #HUABAN_WIDGETS .HUABAN-cell .HUABAN-pinned-label {position: absolute; left: 0; top: 10px; height: 24px; line-height: 24px; padding: 0 10px; background: #CE0000; background: rgba(200, 0, 0, 0.9); color: white; font-size: 12px; display: none;} #HUABAN_WIDGETS .HUABAN-cell.HUABAN-pinned .HUABAN-pinned-label {display: block;} #HUABAN_WIDGETS .HUABAN-selected .HUABAN-select-btn {background-position: 0 -40px;} #HUABAN_WIDGETS .HUABAN-multi .HUABAN-cell .HUABAN-img-holder {cursor: pointer;} #HUABAN_WIDGETS .HUABAN-multi .HUABAN-cell .HUABAN-cell-pin-btn {display: none;} #HUABAN_WIDGETS .HUABAN-multi .HUABAN-cell .HUABAN-over {display: block;} #HUABAN_WIDGETS .HUABAN-header .HUABAN-multi-buttons {position: absolute; top: 10px; left: 0; display: none;} #HUABAN_WIDGETS .HUABAN-header .HUABAN-multi-buttons .HUABAN-btn {margin-right: 10px;} #HUABAN_WIDGETS .HUABAN-header .HUABAN-multi-noti {display: none; height: 50px; line-height: 50px; text-align: center; font-size: 16px; color: #999; font-weight: bold;} #HUABAN_WIDGETS .HUABAN-header .HUABAN-multi-noti span {font-weight: normal;} #HUABAN_WIDGETS .HUABAN-header .HUABAN-multi-noti i {font-style: normal;} #HUABAN_WIDGETS .HUABAN-header .HUABAN-notice {padding: 0 10px; height:30px; line-height: 30px; position: absolute; left: 50%; top: 10px; margin-left: -83px; background: #fff9e2; text-align: center;} #HUABAN_WIDGETS .HUABAN-header .HUABAN-notice i {display: inline-block; width: 18px; height: 18px; background: url(https://huaban.com/img/widgets/icon_notice.png) 0 0 no-repeat; vertical-align: top; margin: 6px 6px 0 0;} #HUABAN_WIDGETS .HUABAN-switcher {height: 50px; width: 100px; position: relative;} #HUABAN_WIDGETS .HUABAN-switcher .HUABAN-title {position: absolute; right: 75px; top: 13px; color: #999; white-space: nowrap; line-height: 24px; opacity: 0; visibility: hidden;} #HUABAN_WIDGETS .HUABAN-switcher:hover .HUABAN-title {visibility: visible; opacity: 1; -webkit-transition: opacity .2s linear; -webkit-transition-delay: .2s; transition: opacity .2s linear; transition-delay: .2s;} #HUABAN_WIDGETS .HUABAN-switcher .HUABAN-bar {width: 40px; height: 24px; background: #EB595F; border-radius: 12px; color: white; position: absolute; right: 0; top: 13px; cursor: pointer; font-size: 14px; -webkit-transition: all .2s linear; transition: all .2s linear;} #HUABAN_WIDGETS .HUABAN-switcher:hover .HUABAN-bar {width: 64px;} #HUABAN_WIDGETS .HUABAN-switcher.HUABAN-on .HUABAN-bar {background: #7DD100;} #HUABAN_WIDGETS .HUABAN-switcher .HUABAN-bar .HUABAN-round {width: 20px; height: 20px; background: white; border-radius: 50%; position: absolute; left: 2px; top: 2px; -webkit-transition: left .2s linear; box-shadow: 0px 0px 3px rgba(0,0,0,0.15); transition: left .2s linear; box-shadow: 0px 0px 3px rgba(0,0,0,0.15);} #HUABAN_WIDGETS .HUABAN-switcher.HUABAN-on .HUABAN-bar .HUABAN-round {left: 17px;} #HUABAN_WIDGETS .HUABAN-switcher.HUABAN-on:hover .HUABAN-bar .HUABAN-round {left: 41px;} #HUABAN_WIDGETS .HUABAN-switcher .HUABAN-bar .HUABAN-text-1 {height: 24px; line-height: 24px; position: absolute; right:17px; top: 0; opacity: 0; visibility: hidden; -webkit-transition: all .2s linear; transition: all .2s linear;} #HUABAN_WIDGETS .HUABAN-switcher:hover .HUABAN-bar .HUABAN-text-1 {right: 9px; opacity: 1; visibility: visible;} #HUABAN_WIDGETS .HUABAN-switcher.HUABAN-on:hover .HUABAN-bar .HUABAN-text-1 {right: 17px; opacity: 0; visibility: hidden;} #HUABAN_WIDGETS .HUABAN-switcher .HUABAN-bar .HUABAN-text-2 {height: 24px; line-height: 24px; position: absolute; left:17px; top: 0; opacity: 0; visibility: hidden; -webkit-transition: all .2s linear; transition: all .2s linear;} #HUABAN_WIDGETS .HUABAN-switcher:hover .HUABAN-bar .HUABAN-text-2 {left: 17px; opacity: 0; visibility: hidden;} #HUABAN_WIDGETS .HUABAN-switcher.HUABAN-on:hover .HUABAN-bar .HUABAN-text-2 {left: 9px; opacity: 1; visibility: visible;} #HUABAN_WIDGETS .HUABAN-header .HUABAN-switcher {position: absolute; right: 0; top: 0;} <!--[if IE 6]>#HUABAN_WIDGETS .HUABAN-red-normal-icon-button, .HUABAN-red-large-icon-button, .HUABAN-red-small-icon-button, .HUABAN-white-normal-icon-button, .HUABAN-white-large-icon-button, .HUABAN-white-small-icon-button { background-image: url({{imgBase}}/widget_icons_ie6.png) <![endif]--></style></div></body></html>