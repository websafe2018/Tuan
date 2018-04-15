<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3"><head>
    <title>团贷网 - 综合金融服务平台,让金融更简单！</title>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="alternate" media="only screen and (max-width: 640px)" href="https://m.tdw.cn/">
    <link rel="dns-prefetch" href="https://image.tuandai.com/">
    <link rel="dns-prefetch" href="https://js2.tdw.cn/">

    <link rel="shortcut icon" href="${pageContext.request.contextPath }/css/css1/favicon.ico?v=20150513">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/css1/base.css">
    <meta name="keywords" content="投资理财，互联网金融，P2P网站，P2P网贷，P2P理财">
    <meta name="description" content="团贷网(tdw.cn)是派生科技集团股份有限公司（以下简称“派生集团”）旗下的综合金融服务平台,致力于为广大投资用户提供基金、保险、证券、网络借贷等互联网投资一站式综合服务.">
    <!-- 前端公用CSS库-->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/css1/public.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/css1/xiamen-bank.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/css1/cgt.css">

    <!-- UI CSS-->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/css1/new.css">
    <!-- <script charset="utf-8" src="#/v.htm"></script> -->
    <script type="text/javascript" async="" src="${pageContext.request.contextPath }/js/js1/webaccess.js"></script>
    <script src="${pageContext.request.contextPath }/js/js1/hm.js"></script>
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
    
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/css1/account_invest.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/css1/dwbankcard.css">
	<style type="text/css">
		.draw_tnotice {width: 470px!important;  margin-left: -215px;  height: 310px; }
		/*后台提现下拉框效果*/
		#diallayer{z-index:101;}
		.select_box {
			width: 196px;
			margin: 10px 10px 0 0;
			padding: 0px;
			position: relative;
			z-index: 9999999 !important;
		}

		.select_box input {
			width: 100%;
			height: 30px;
			line-height: 25px;
			cursor: pointer;
			display: block;
			overflow: hidden;
			border: 1px solid #ccc;
			padding-right: 20px;
			padding-left: 10px;
			background: #fff
				url(//js2.tdw.cn/images/member/Bank/select_input_bg.gif) no-repeat
				205px center;
		}

		.select_box ul {
			width: 226px; /**ul的宽度（div的宽度+input的padding-left+input的padding-right）**/
			margin: 0px;
			padding: 0px;
			position: absolute;
			left: 0;
			top: 25px; /**等于input的高度**/
			border: 1px solid #ccc;
			background: #fff;
			overflow: hidden;
			display: none; /**隐藏**/
			background: #fff;
			z-index: 10000000;
		}

		.select_box ul li {
			list-style-type: none;
			width: 100%;
			height: 30px;
			line-height: 30px;
			margin: 0px;
			padding: 0px;
			display: block;
			overflow: hidden;
			padding-left: 10px; /**设置li离左边的距离**/
			cursor: pointer;
		}
		.hover {
			background: #ccc;
		}
		.deduction-tb-box {
			font-size: 14px;
			color: #333;
		}

		.deduction-tb-box span {
			color: #ff9600;
		}

		.deduction-tb-box .tbonoff {
			width: 38px;
			height: 24px;
			background: url('//js2.tdw.cn/images/tb-onoff.png');
			display: inline-block;
			vertical-align: -4px;
			cursor: pointer
		}

		.deduction-tb-box .tbonoff.status-off {
			background-position: 0 0;
		}

		.deduction-tb-box .tbonoff.status-on {
			background-position: 0 -24px;
		}

		.deduction-tb-box .not-deduction {
			color: #f00;
		}
	</style>



    
</head>
<body>
    <!-- 头部STAR -->
   <div class="header">
        <!-- top bar STAR -->
        <div class="t-b  t-b-w lh40 bgff f12 fst cl">
            <div class="w1200 h40 auto g6">
                <div class="right-side  r inline-block-debug">
                    <div class="inline-block-debug c-poi-a" id=""><span class="reg" style="color:#303030">欢迎您，</span><a href="${pageContext.request.contextPath }/jsp/member/account_default.jsp" rel="nofollow" class="reg">${users.userName }</a><span>|</span><a href="javascript:logout();">退出</a><span>|</span></div>
                   
                    <a rel="nofollow" href="#" class="soc" target="_blank"><span class="hot-icon"></span>社会责任</a><span>|</span>
                    <a rel="nofollow" href="http://info.tdw.cn/help/index.html" target="_blank">帮助中心</a><span>|</span>
                    <a href="#" target="_blank">活动专题</a><span>|</span>
                    <a href="#" target="_blank">社区</a><span>|</span>
                    <span class="rel member-list z1">
                        <i class="down-arrow arrow"></i>
                        <ul class="abs z1  ">
                            <li>
                                <a rel="nofollow" href="#" target="_blank" style="display: block" class="member-link"><i class="icon a"></i>会员中心</a>
                            </li>
                            <li class="mission " style="display: none"><a rel="nofollow" href="#" target="_blank">团币任务</a></li>
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
        <!-- top bar END -->
        <!-- nav STAR -->
        <div class="nav-w bgfff">
            <div class="nav-box auto w1200 fix">
                <div class="r rel tc  slid z3" style="display: none">

                    <dl class="abs i-b-d vt about-us r0" id=""><%-- <dt><a href="${pageContext.request.contextPath }/account">
                    <i class="account-icon i-b-d icon vm"></i>我的账户<i class="icon arrow i-b-d vm"></i></a></dt> --%>
                    <dd><a href="${pageContext.request.contextPath }/jsp/member/RechargeNew2016.jsp">立即充值</a></dd>
                    <dd><a href="${pageContext.request.contextPath }/jsp/member/account_moneylist.jsp">资金统计</a></dd>
                    <dd><a href="${pageContext.request.contextPath }/jsp/member/account_weFTBAll.jsp">智能理财</a></dd>
                    <dd><a href="${pageContext.request.contextPath }/jsp/member/account_loaninbid.jsp">散标投资</a></dd>
                    <dd><a href="${pageContext.request.contextPath }/jsp/member/account_loanReturnPlanList.jsp">回款计划</a></dd>
                    <dd><a href="${pageContext.request.contextPath }/jsp/member/AutoTenderList.jsp">自动投标</a></dd>
                    <dd><a href="${pageContext.request.contextPath }/rebackMoneyPlan">还款安排</a></dd>
                    <dd><a href="${pageContext.request.contextPath }/jsp/member/account_borrowInBid2.jsp">借款记录</a></dd>
                    <a href="javascript:logout();">退出</a></dd></dl>
                </div>
                <div class="nav r">
                    <ul>
                        <li class="nav-t">
                            <a href="${pageContext.request.contextPath }/jsp/homepage/investmenthome.jsp">首页</a>
                        </li>
						<li class="nav-t ">
                            <a href="${pageContext.request.contextPath }/lntellgent">网贷</a>

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
<a href="${pageContext.request.contextPath }/loadMoney">借款</a>
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
        <!-- nav End -->



    </div>
        <!-- 头部END -->
        <!-- 右侧计算器 -->
        <div class="tool">
            <div class="t-box rel" onclick="javascript:void(0);">
                <div class="dan-tip abs tc" style="display: none">市场有风险投资需谨慎<span class="triangle db"></span></div>
                <i class="t6"></i>
                <a href="javascript:;">风险提示</a>
            </div>
            <div class="t-box" ><i class="t1"></i><a href="javascript:;">在线客服</a></div>
            <div class=" t-box" onclick="javascript:window.open('//info.tdw.cn/help/index.html')"><i class="t2"></i><a href="javascript:;">帮助中心</a></div>
            <div class=" t-box" onclick="javascript:window.open('//news.tdw.cn/tool/int_fina.aspx');"><i class="t3"></i><a class="" href="javascript:;">计算工具</a></div>
            <div class="t-box to-top" onclick="javascript:;" style="display: none"><i class="t5"></i><a href="javascript:;" class="pt10">回到顶部</a></div>
        </div>

        <!-- 中间内容STAR -->                
        
    <!-- 中间内容STAR -->
    
    <div class="account-container clearfloat">
        <form id="form1" style="*margin-top:10px">
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
                                <dd id="" class="currentMenu"><a href="${pageContext.request.contextPath }/jsp/member/drawmoney.jsp" onclick="return left_CheckAllowDraw();" target="_blank">提现</a></dd>
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
                                <dd id=""><a href="${pageContext.request.contextPath }/jsp/member/account_borrowInBid2.jsp">借款记录</a></dd>
                                
                                <dd id=""><a href="${pageContext.request.contextPath }/jsp/member/account_borrowReturnPlanList.jsp">还款安排</a></dd>
                            </dl>
                            </div>

                    </div>
                    
                    
                    
                    

                    

                    <div>
                   <dl>
<dt><i class="dt-5"></i>个人设置<i class="arrow"></i></dt>
<dd id=""><a href="${pageContext.request.contextPath }/jsp/member/account_userdetailinfo.jsp">基本信息 </a></dd>
<dd id=""><a href="${pageContext.request.contextPath }/Validat_eindex.html">安全中心</a></dd>
<dd id="">
<div class="left-new"></div>
<a href="${pageContext.request.contextPath }/account_touplevel.html" target="_blank">团贷会员</a></dd>
<dd id=""><a href="${pageContext.request.contextPath }/jsp/member/account_notice.jsp">消息中心</a></dd>
</dl>

                 
                    </div>
                    
               </div>
            </div>
            
	<!-- 中间内容STAR -->
	<div class="account-rightBox clearfloat">
		<div class="box-padding">
			<div class="account_tableBox clearfloat">

				<div class="nav_top">
					<div class="protect-green">
						<span>您的充值、提现操作将在 <span class="xm-logo"></span>
							厦门银行存管平台进行，资金安全无忧
						</span>
					</div>
					<ul class="nav_title">
						<li class="tab_title_a"><a href="javascript:;">马上提现</a></li>
						<li class="tab_title_b">
							<a href="#">提现记录</a>
						</li>
				
					</ul>
				</div>

				<div class="account_notice margin-top-20 clearfloat">
					<h2>提现须知</h2>
					<p>
						<strong>处理时间：</strong><span class="font-red">周一至周六8:30-18:00</span>；周日及其他国家法定假日为下午<span class="font-red">15:00</span>。注：提现审核为人工审核，审核后由<br>
						<span style="padding-left: 60px;"></span>厦门银行执行转账，审核顺序按照提现申请时间顺序。<br>
					</p>
					<p>
						<strong>到账时间：</strong>提现将会在审核成功后的下一个工作日到账；遇双休日、国家法定节假日，到账日期顺延。<br>
						<span style="padding-left: 60px;"></span>注：若有特殊情况，最终以银行解释为准。<br>
					</p>
					<p>
						<strong>手续费：</strong>1、普通会员每笔提现手续费为提现金额的0.15%，无封顶；超级会员每笔提现手续费为提现金额的0.05%,200元封顶。
						<br> <span style="padding-left: 48px;"></span>2、如账户可用余额大于提现手续费，则系统自动在账户余额中扣除手续费，否则提现费用在提现金额中扣除。
					</p>
					<p>
						<strong>提现限制：</strong>1、单笔提现金额限制为：普通会员100-300000元，超级会员100-800000元。
						<br> <span style="padding-left: 60px;"></span>2、为遵守国家反洗钱和套现行为的相关法律规定：<span class="font-red">充值后的所有资金不投标须等15天后（不含充值当天）才能提现。</span>
					</p>
				</div>

				<div class="account_table2 margin-top-20">
					<table class="deposit_main" width="100%" cellspacing="0" cellpadding="0" border="0" align="center">
						<tbody><tr>
							<td class="deposit_title" valign="middle" align="left">真实姓名 ：</td>
							<td class="deposit_content" valign="middle" align="left">
								${account.realname}
							</td>
						</tr>
						<tr>
							<td class="deposit_title" valign="middle" align="left">联络手机：
							</td>
							<td class="deposit_content" valign="middle" align="left">
								${account.backtel }
								<i style="padding-right: 20px;"></i><a href="${pageContext.request.contextPath }/Validat_eindex">【修改电话】</a>
							</td>
						</tr>
						<tr>
							<td class="deposit_title" valign="middle" align="left">提现至银行卡：
							</td>
							<td class="deposit_content" valign="middle" align="left">
								<div class="deposit_bank_sz clearfloat">
									
									<dl class="dl_select card_Selected" id="bankSelect">
										<dt>
											<img src="${pageContext.request.contextPath }/static/img1/banklogo_max1_BOC.gif">
										</dt>
										<dd>${account.banknumber }</dd>
									</dl>
									
									
								</div>
							</td>
						</tr>
						<tr>
							<td class="deposit_title" valign="middle" align="left">可提现金额：
							</td>
							<td class="deposit_content" valign="middle" align="left">￥<span id="currentMoeny">${account.acbalance }</span>
							</td>
						</tr>
						<tr>
							<td class="deposit_title" style="z-index: 200" valign="middle" align="left"><span>提现金额：</span>
								<div class="deposit_dian jedian">
									<p class="hide_deposit hideje" style="margin-left: -234px;">
										<i></i>  
											1.单笔提现金额限制为:普通会员100-300000元,超级会员100-800000元。
										<br>
										2.提现审核时间为：周一至周六9:00-18:00；周日及其他国家法定假日为下午15:00。 <span style="padding-left: 10px;"></span><br>
										3.提现将会在审核成功后的下一个工作日到账；遇双休日、国家法定节假日，到账日期顺延。 <span style="padding-left: 8px;"></span><br>

									</p>
								</div></td>
							<td class="deposit_content" valign="middle" align="left">
								<dl class="deposit_items">
									<dt>
										<input name="txt_Amount" id="txt_Amount" class="deposit_txt" onblur="validationAmount();" type="text">
									</dt>
									<dd>
										<div id="d_money" style="width: 250px; height: 12px; line-height: 12px; margin-left: 10px; margin-top: 8px; float: left;">
										
										</div>
									</dd>
								</dl>
							</td>
						</tr>
						<tr>
							<td class="deposit_title" valign="middle" align="left">提现密码：</td>
							<td class="deposit_content" valign="middle" align="left">
								<input name="drawpassword" id="drawpassword" class="drawkey" type="password">
							</td>
						</tr>
						<!-- <tr>
							<td class="deposit_title" style="z-index: 300" valign="middle" align="left"><span>手续费：</span>
								<div class="deposit_dian feedian">
									<p class="hide_deposit hideje" style="margin-left: -219px;">
										<i></i> 1.普通会员每笔提现收取手续费为提现金额的0.15%，无封顶； <br> <span style="padding-left: 10px;"></span>超级会员每笔提现收取手续费为提现金额的0.05%，200元封顶。<br>
										2.如账户余额大于提现手续费，则系统自动在账户余额中扣除手续费，否则提现费用在提现金额中扣除。
									</p>
								</div></td>
							<td class="deposit_content" valign="middle" align="left"><b>￥<span id="Fee">0.00</span></b><i>超级会员手续费减少66%，上限封顶200元，你还等什么</i> <a href="#">【成为超级会员】</a></td>
						</tr>
						<tr>
							<td class="deposit_title" valign="middle" align="left">实际到账金额
								：</td>
							<td class="deposit_content" valign="middle" align="left"><b>￥<span id="Actual">0.00</span></b></td>
						</tr> -->
						<!-- <tr>
							<td class="deposit_title" style="z-index: 500" valign="middle" align="left"><span>提现优惠券 ：</span>
								<div class="deposit_dian coupondian">
									<p class="hide_deposit hidecoupon">
										<i></i> 1.提现优惠券可抵扣提现手续费，每次提现只能使用一张提现优惠券。 <br>
										2.一张提现优惠券只能使用一次，平台不找零，请根据提现的手续费选择最合适的提现优惠券。 <br>
										3.用户可参与平台活动赢取，或直接使用团币兑换提现优惠券， <br> <span style="padding-left: 10px;"></span>另外高等级的团贷会员每月1号可享提现优惠券赠送特权。
									</p>
								</div></td>
							<td class="deposit_content" style="z-index: 500;" valign="middle" align="left">
								<dl class="deposit_soupon">
									<dt>
										<input style="display: none" id="couponAmount" type="text"> 
										<input style="display: none" id="couponId" type="text">
										<div class="select_box">
											<input id="txtSelect" value="请选择优惠券" readonly="readonly" type="text">
											<ul id="ddlcoupon">
												<li>请选择优惠券</li>
												<li cid="610EBE99-4B28-44FA-A524-92A90F46841A" amount="450.00">
													免费提现券（2018-01-21到期）
												</li>
											</ul>
										</div>
									</dt>
									<dd>
										<i style="line-height: 50px;">提示：每次提现只能使用一张优惠券<span style="color: #00a1fe;"><a target="_blank" href="http://vip.tdw.cn/productList.aspx?type=2">【兑换优惠券】</a></span></i>
									</dd>
								</dl>
							</td>
						</tr> -->

						 <!--使用团币-->
						<!-- <tr>
							<td class="deposit_title" style="z-index: 500" valign="middle" align="left"><span>使用团币 ：</span>
								<div class="deposit_dian feedian">
									<p class="hide_deposit hideje" style="margin-left: -238px;">
										<i></i> 1、团币抵扣提现费的比例为1:250，即250枚团币可抵1元提现费； <br> 2、抵提现费时所需的团币数若含小数点，则按照四舍五入原则计算；
										<br> 3、若账户团币余额不足够抵扣产生的提现费时，剩余部分提现费将从可用资金中扣除，若资金不足则从提现金额中扣除；
										<br> 4、若提现不成功，团币将退回至原账号内；
										<br> 5、团币抵提现费可与提现券共用。
									</p>
								</div>
							</td>
							<td class="deposit_content" valign="middle" align="left">
								<div class="deduction-tb-box">
									<span class="tbonoff status-off" data-onoff="off"></span>
									<div class="not-deduction dib">无需使用团币抵扣</div>
									<div class="deduction-tb dib"></div>
								</div>
							</td>
						</tr>  -->

						<tr>
							<td valign="middle" align="left">&nbsp;</td>
							<td valign="middle" align="left"><a class="deposit_btn" href="javascript:drawmoney()" id="appbtn">确认提现</a>
							</td>
						</tr>
					</tbody></table>
				</div>
			</div>
		</div>
	</div>
	<div class="dial-window draw_tnotice z103" id="drawTNotice" style="display: none;">
		<div class="title rel">
			温馨提示<i class="close-x icon db abs" id="drawT_close"></i>
		</div>
		<div class="draw_con">
			<p>确认提现后您的资金将会被冻结，并跳转至银行页面进行交易密码验证。若验证未完成，冻结资金将会在5分钟后解冻并退回至您的账户。</p>
			<div class="draw_con_c">
				提 现 金 额：<span class="g-orange2"><span id="t_money"></span>元</span><br>提现手续费：<span class="g-orange2"><span id="t_fee"></span>元</span>
				<br><span class="g-orange2"><span id="t_feeContent"></span></span>
			</div>
			<div class="btn-group mt10" style="display: inline-block; *display: inline; *zoom: 1; margin: 20px auto 0px; padding-left: 40px;">
				<span id="span_ok" class="fl-l td-btn-1 td-btn-1-or btnReg2 mr10 handCursor">确定</span><span id="span_cancel" class="fl-l td-btn-1 td-btn-1-gar btnReg3  handCursor">取消</span>
			</div>
		</div>
	</div>

	<div id="dahei" style="display: none; height: 633px;"></div>
	<div id="tooltip" class="tooltip"></div>
	<!-- 开通免密功能 -->
	<div style="display: none;" class="dial-window xm-window passwordAlt">
		<div class="title1 rel">
			温馨提示：<i class="close-x cgt-close-x icon db abs"></i>
		</div>
		<div class="body">
			<div class="">
				<p class="p1">开启自动投标前，请您先进行以下授权：</p>
				<p class="p2" id="mm_toubiao" style="display: none;">
					<em></em>自动投标<span>（适用于设置自动投标的用户）</span>
				</p>
				<p class="p2" id="mm_zhaiquan" style="display: none;">
					<em></em>自动购买债权<span>（适用于购买WE计划的用户）</span>
				</p>
				<p class="p2" id="mm_huankuan" style="display: none;">
					<em></em>自动还款<span>（适用于有借款的用户）</span>
				</p>
				<p class="p2" id="mm_tixian" style="display: none;">
					<em></em>自动提现<span>（适用于企业及业务相关用户）</span>
				</p>
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
	<!--<div class="xiamen-pop" style="display: none;">
		<div class="close"></div>
		<div class="pop-tit">
			<h3></h3>
			<h4>团贷网联手厦门银行</h4>
			<p>个人账户升级为厦门银行存管账户</p>
		</div>
		<div class="pop-body">
			<p>
				<span id="sp_open" style="display: none;">您尚未开通厦门银行资金存管账户，请先开通</span><span
					id="sp_active" style="display: none;">您的账号已升级为厦门银行资金存管账户，请您激活账户</span>
			</p>
			<a href="/member/Bank/XM_BankBind.aspx" id="aOpen" class="btn">马上开通</a>
			<a href="javascript:void(0);" target="_blank" id="aActived"
				class="btn">马上激活</a> <a
				href="/member/Bank/XM_BankBind_Complete.aspx" id="aBankBind"
				class="btn">绑定银行卡</a>
		</div>
	</div>-->


	<!-- 温馨提示弹窗 -->
	<div id="bankBindAlert" style="display: none; margin-left: -212px;" class="dial-window xm-window bankBindAlert">
		<div class="title rel">
			温馨提示：<i class="close-x cgt-close-x icon db abs"></i>
		</div>
		<div class="body">
			<div class="" style="text-align: center;">
				<p class="p1">
					请您在新打开的页面完成<span id="sp_title"></span>
				</p>
				<p class="p2">
					<span id="sp_title2"></span>完成前请不要关闭此窗口，根据完成结果，选择下面的操作
				</p>
			</div>
		</div>
		<div class="bottom">
			<div class="btn-group">
				<a href="${pageContext.request.contextPath }/account_default.jsp" id="remind_aa" class="btn"><span id="aa_title"></span></a>
			</div>
			<a class="question" href="javascript:void(0);" target="_blank"><span id="sp_title3"></span>遇到问题</a>
		</div>
	</div>

	<!-- 香港澳门开通存管账户提示 -->
	<div id="gangaoAlert" style="display: none;" class="dial-window xm-window hongkong">
		<div class="title rel">
			温馨提示：<i class="close-x cgt-close-x icon db abs"></i>
		</div>
		<div class="body">
			<div class="" style="text-align: center;">
				<div class="codexe" style="width: 119px; height: 124px; background: url(//js2.tdw.cn/images/member/my_capital/codexe.png); position: absolute; top: 36px; left: 281px; z-index: 100; display: none;"></div>
				<p>
					<b>由于您的证件为<span id="sp_cardTypeName">港澳通行证</span>，您还需完成以下操作才能进行正常理财：
					</b>
				</p>
				<p>
					1、添加专属服务 <a id="a_qq" target="_blank" href="http://wpa.qq.com/msgrd?v=3&amp;uin=2880323207&amp;site=qq&amp;menu=yes">2880761023</a>或<a class="a_qq a_code" style="background: url(//js2.tdw.cn/images/member/my_capital/code20170426001.png); cursor: pointer;">2880761023</a>为好友。<br>
					2、 <span id="sp_2Content">QQ或微信联系客服专员，需提交以下申请材料：手持港澳台通行证证件彩色半身照【保证证件号码清晰且不能是镜面照】港澳台通行证背面彩色照片,受理时间为：周一至周五9:00-12:00
						13:30-18:00，周六日与法定节假日除外。</span><br>
					3、资料提交后，平台及银行将会进行双重审核，一般时长为2天，审核通过后即可进行投资理财，届时会有短信通知。 <br>
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
		<div class="title rel" style="display: block;">
			温馨提示：<i class="close-x cgt-close-x icon db abs"></i>
		</div>
		<div class="body">
			<div class="">
				<p class="p1">
					<span id="sp_newcontent">如果您忘记银行卡预留手机号，请与您的发卡银行客服联系，咨询预留手机号</span>
				</p>
			</div>
		</div>
		<div class="bottom">
			<div id="btn_03" class="btn-group">
				<a id="qiyeBtn" href="javascript:;" class="btn">我知道了</a>
			</div>
			<div id="btn_04" class="count" style="display: none;">
				<a class="td-btn-1 td-btn-1-or btn" href="${pageContext.request.contextPath }/Validat_eindex.jsp">我要修改预留手机号</a>
			</div>
		</div>
	</div>


        </form>
        <div id="dahei" style="display: none"></div>
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
                <a href="https://www.tuandai.com/member/Bank/XM_BankBind.aspx" id="aOpen" class="btn" style="display: none;">马上开通</a>
                <a href="javascript:void(0);" id="aActived" class="btn" style="display: none;">马上激活</a>
                <a href="https://www.tuandai.com/member/Bank/XM_BankBind_Complete.aspx" id="aBankBind" class="btn" style="display: none;">绑定银行卡</a>
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
                <a href="#" id="remind_aa" class="btn"><span id="aa_title"></span></a>
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
                    1、添加专属服务<a id="a_qq" target="_blank"><span id="q"></span></a>为好友。<br>
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
                2010-<span>2017</span> 版权所有 © 团贷网 <a href="#" target="_blank">粤ICP备16104116号-1</a> 派生科技集团股份有限公司 地址：东莞市南城区新城鸿福路102号汇成大厦102A号
            </div>
        </div>
        <div class="security tc">
            <a class="case1" rel="nofollow" href="#" target="_blank"></a>
            <a class="case2" rel="nofollow" href="#" target="_blank"></a>
        </div>
    </div>

        <!-- 中间内容END -->

        <!-- 提示弹出窗口 -->
        <div id="dial-window" style="display: none;" class="z103">
            <div class="title">
                加载中 <i class="close close-x icon abs"></i>
            </div>
            <div class="body">
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
        <!--<script src="//js2.tdw.cn/scripts/pager.js?v=2017070301"></script>-->
        <script src="${pageContext.request.contextPath }/js/js1/settuandaicookie.js"></script>

       
    
    <script src="${pageContext.request.contextPath }/js/js1/userbank.js"></script>
    <script src="${pageContext.request.contextPath }/js/js1/common.js"></script>
    <script src="${pageContext.request.contextPath }/js/js1/account.js"></script>
    <script charset="GB2312" type="text/javascript" src="${pageContext.request.contextPath }/js/js1/cgt_common.js"></script>
    <script>
    /* <![CDATA[ */
    	var Id =  "2B8449A2";
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

           /*  $("#menu_withdraw,#menu_borrowMiniEdit,#menu_recharge").click(function () {
                try {
                    if (IsOpenCGT == "1" && !checkIsOpen("chongzhi")) {
                        return false;
                    }
                }
                catch (e) {
                }
            }); */

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
        var left_IsValidateIdentity = "true";
        var left_IsSetPayPwd = "false";
        var IsbindBankNo = "true";

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
    
    
	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/css1/yellow.css">
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/js1/artDialog.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/js1/amounttochinese.js"></script>
	<script>
		//js页面动态引用
		var realName = "\u5F20*";
		var sexname = "\u5148\u751F";
		var isValidateMobile = true;
		var isValidateIdentity = true;
		var isHadBankAccountNo = true;
		var vailStatus = 0;
		var bankStatus = 1;
	</script>
	
	
	
	
	
	<script type="text/javascript">
		var jine =$("#txt_Amount").val();
		if(jine == ""){
			SetError( "请输入提现金额，如1063.20。");
		}
		function SetError(cont) {
	        $("#d_money").css("display", "block");
	        $("#d_money").css("color","red");
	        $("#d_money").html(cont);
	    }
		$("#txt_Amount").blur(function(){
			var topamount = "300000";
	    	if ($("#txt_Amount").val() =="") {
	            SetError( "请输入提现金额，如1063.20。");
	        }else if (parseFloat($("#txt_Amount").val()) < 100) {
	            SetError("提现金额不能小于100。");
	        }else if (parseFloat($("#txt_Amount").val()) > topamount) {
	            SetError("提现金额不能大于" + topamount);
	        }else{
	        	 $("#d_money").html("");
	        }
			
		});
		
			//确认提现
			function drawmoney(){
				  var key = $("#drawpassword").val();
				  var amounts = $("#txt_Amount").val();
					if(key == ""){
						alert("交易密码不能为空！")
					}else if(key.length != 6){
						alert("请输入6位交易密码！")
					}else{
						$.ajax({
				            url: "./passwordYanzheng",
				            type: "post",
				            dataType: "json",
				            async: false,
				            data: {
				                amount: amounts,
				                pwd:key,
				            },
				            success: function(json) {
				                var d = json.result;
				                if (parseInt(d) < 0 ) {
				                	alert("输入的交易密码不正确！");
				               
				                } else {
				                	if(json.txjg < 0){
				                		$("#drawpassword").val("")
				                		alert("提现失败！请重新操作")
				                	}else{
				                		alert("提现成功！");
				                		
				                		window.location.reload();
				                		
				                	}
				                }
				            }
				        });
					}
			  } 
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

<img style="display: none;" src="${pageContext.request.contextPath }/html/html1/SingleLogin.html"><div style="display: none; position: absolute;" class=""><div class="aui_outer"><table class="aui_border"><tbody><tr><td class="aui_nw"></td><td class="aui_n"></td><td class="aui_ne"></td></tr><tr><td class="aui_w"></td><td class="aui_c"><div class="aui_inner"><table class="aui_dialog"><tbody><tr><td colspan="2" class="aui_header"><div class="aui_titleBar"><div class="aui_title" style="cursor: move;"></div><a class="aui_close" href="javascript:void(0);">×</a></div></td></tr><tr><td class="aui_icon" style="display: none;"><div class="aui_iconBg" style="background: rgba(0, 0, 0, 0) none repeat scroll 0% 0%;"></div></td><td class="aui_main" style="width: 300px; height: 80px;"><div class="aui_content" style=""></div></td></tr><tr><td colspan="2" class="aui_footer"><div class="aui_buttons" style="display: none;"></div></td></tr></tbody></table></div></td><td class="aui_e"></td></tr><tr><td class="aui_sw"></td><td class="aui_s"></td><td class="aui_se" style="cursor: se-resize;"></td></tr></tbody></table></div></div></body></html>