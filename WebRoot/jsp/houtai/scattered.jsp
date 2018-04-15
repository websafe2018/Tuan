<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>项目管理</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/css4/css.css" />
<script type="text/javascript" src="${pageContext.request.contextPath }/js/houtai/jquery-1.8.3.js"></script>
<!-- <script type="text/javascript" src="${pageContext.request.contextPath }/static/js3/page.js" ></script> -->
</head>

<body>
	<div id="pageAll">
		<div class="pageTop">
			<div class="page">
				<img src="${pageContext.request.contextPath }/static/img4/coin02.png" /><span><a href="#">首页</a>&nbsp;-&nbsp;<a
					href="#">项目管理</a>&nbsp;-</span>&nbsp;散标投资管理
			</div>
		</div>
		<div class="page">
			<!-- banner页面样式 -->
			<div class="banner">
				<div class="add">
					<span style="text-align: center; font-size: 18px;">
						标的类型：
						<select id="pid" name="pid" style="width: 100px; text-align: center; font-size: 16px;">
							<option value="0">全部</option>
							<option value="11">小微企业</option>
							<option value="12">微团贷</option>
							<option value="13">分期宝</option>
							<option value="14">供应链</option>
							<option value="15">资产标</option>
						</select>
					</span>
					<span style="margin-left: 20px; text-align: center; font-size: 16px;">
						周转期限：
						<select id="speriod" name="speriod" style="width: 100px; text-align: center; font-size: 16px;">
							<option value="0">全部</option>
							<option value="1">1-6个月</option>
							<option value="2">7-12个月</option>
							<option value="3">13-24个月</option>
							<option value="4">24个月以上</option>
							
						</select>
					</span>
					<span style="margin-left: 20px; text-align: center; font-size: 16px;">
						年化利率：
						<select id="srate"  name="srate" style="width: 100px; text-align: center; font-size: 16px;">
							<option value="0">全部</option>
							<option value="1">5%以上</option>
							<option value="2">9%以上</option>
							<option value="3">11%以上</option>
							<option value="4">13%以上</option>
						</select>
					</span>
					<span style="margin-left: 20px; text-align: center; font-size: 16px;">
						结清方式：
						<select id="srepayType" name="srepayType" style="width: 100px; text-align: center; font-size: 16px;">
							<option value="0">全部</option>
							<option value="每月付息">每月付息</option>
							<option value="到期本息">到期本息</option>
							<option value="等额本息">等额本息</option>
						</select>
					</span>
					<span  style="margin-left: 20px; text-align: center; font-size: 16px; "	>
						<input onclick="btn()" type="button" value="查询" style="margin-left: 20px; text-align: center; font-size: 16px;  width:60px;"/>
						<a href="javascript:window.location='addstan.jsp'"  style="margin-left: 20px; text-align: center; font-size: 16px;  width:60px;">添加新的项目</a>
					</span>
				</div>
				<!-- banner 表格 显示 -->
				<div class="banShow">
					<table id="stanAll" border="1" cellspacing="0" cellpadding="0">
						<tr>
							<td width="80px" class="tdColor tdC">序号</td>
							<td width="150px" class="tdColor">项目名</td>
							<td width="130px" class="tdColor">项目总金额</td>
							<td width="130px" class="tdColor">周转期限</td>
							<td width="80px" class="tdColor">年化利率</td>
							<td width="80px" class="tdColor">单位/价格</td>
							<td width="130px" class="tdColor">剩余份数</td>
							<td width="130px" class="tdColor">投资份数</td>
							<td width="130px" class="tdColor">已达成金额</td>
							<td width="90px" class="tdColor">标达成率</td>
							<td width="180px" class="tdColor">投标时间</td>
							<td width="100px" class="tdColor">结清方式</td>
							<td width="130px" class="tdColor">状态</td>
							<td width="130px" class="tdColor">操作</td>
							
						</tr>
				<%-- 		<tr>
							<td>1</td>
							<td>双十一连天购</td>
							<td>50000000.00</td>
							<td>24个月</td>
							<td>8.9%</td>
							<td>100元</td>
							<td>230000</td>
							<td>270000</td>
							<td>27000000</td>
							<td>54%</td>
							<td>2017.09.17-2017.09.27</td>
							<td>等额本息</td>
							<td>投标中</td>
							<td><a href="${pageContext.request.contextPath }/houtai/banneradd.html">
							<img class="operation"src="${pageContext.request.contextPath }/static/img4/update.png"/></a> 
									<img class="operation delban" src="${pageContext.request.contextPath }/static/img4/delete.png"/></td>
						</tr> --%>
						
					</table>
					<div class="paging">
					<a href="javascript:void(0)" onclick="first()">首页</a>
					<a href="javascript:void(0)" onclick="up()">上一页</a>
					第<span></span>页/共<span></span>页
					<a href="javascript:void(0)" onclick="down()">下一页</a>
					<a href="javascript:void(0)" onclick="last()">末页</a>
					</div>
				</div>
				<!-- banner 表格 显示 end-->
			</div>
			<!-- banner页面样式end -->
		</div>

	</div>


	<!-- 删除弹出框 -->
	<div class="banDel">
		<div class="delete">
			<div class="close">
				<a><img src="${pageContext.request.contextPath }/static/img4/shanchu.png" /></a>
			</div>
			<p class="delP1">你确定要删除此条记录吗？</p>
			<p class="delP2">
				<a href="#" class="ok yes" id="yes">确定</a><a class="ok no">取消</a>
			</p>
		</div>
	</div>
	<!-- 删除弹出框  end-->
</body>

<script type="text/javascript">
// 广告弹出框
$(".delban").click(function(){
  $(".banDel").show();
});
$(".close").click(function(){
  $(".banDel").hide();
});
$(".no").click(function(){
  $(".banDel").hide();
});
// 广告弹出框 end

//得到项目路径前缀如：1127.0.0.1:8080/Tuan/
function getRootPath(){
            //获取当前网址，如： http://localhost:8083/uimcardprj/share/meun.jsp
            var curWwwPath = window.document.location.href;
            //获取主机地址之后的目录，如： uimcardprj/share/meun.jsp
            var pathName = window.document.location.pathname;
            var pos = curWwwPath.indexOf(pathName);
            //获取主机地址，如： http://localhost:8083
            var localhostPaht = curWwwPath.substring(0, pos);
            //获取带"/"的项目名，如：/uimcardprj
            var projectName = pathName.substring(0, pathName.substr(1).indexOf('/') + 1);
            return (localhostPaht + projectName+"/");        
}

 	var pid=$("#pid").val();
 	var speriod=$("#speriod").val();
 	var srate=$("#srate").val();
 	var srepayType=$("#srepayType").val();
 	var rootPath=getRootPath();
 	var pageno=1;
 	var count=0;
 	
  function load(){
  
  $.post(rootPath+"findStandardinvestAll.do",{"pid":pid,"speriod":speriod,
  "srate":srate,"srepayType":srepayType,"pageno":pageno},
  function(data){
  $("#stanAll tr:gt(0)").remove();
  for(var i=0;i<data.length;i++){
  var tr=$("<tr></tr>");
  var t1=$("<td></td>");
  t1.text(data[i].id);
  tr.append(t1);
  var t2=$("<td></td>");
  t2.text(data[i].sname);
  tr.append(t2);	
  var t3=$("<td></td>");
  t3.text(data[i].stotelMoney);
  tr.append(t3);
  var t4=$("<td></td>");
  t4.text(data[i].speriod);
  tr.append(t4);
  var t5=$("<td></td>");
  t5.text(data[i].srate);
  tr.append(t5);
  var t6=$("<td></td>");
  t6.text(data[i].sprice);
  tr.append(t6);
  var t7=$("<td></td>");
  t7.text(data[i].srestNumber);
  tr.append(t7);
  var t8=$("<td></td>");
  t8.text(data[i].sloadNumber);
  tr.append(t8);
  var t9=$("<td></td>");
  t9.text(data[i].sloadNumber*data[i].sprice);
  tr.append(t9);
  var t10=$("<td></td>");
  t10.text(data[i].sloadNumber/(data[i].sloadNumber+data[i].srestNumber));
  tr.append(t10);
  var t11=$("<td></td>");
  t11.text(data[i].istartTime);
  tr.append(t11);
  var t12=$("<td></td>");
  t12.text(data[i].srepayType);
  tr.append(t12);
  var t13=$("<td></td>");
  if(data[i].spreStatus==1){
  t13.text("已满标");
  }else{
  t13.text("投标中");
  }
  tr.append(t13);
  var t14=$("<td></td>");
  t14.html(" <a href='"+rootPath+"findStandardinvest.do?id="+data[i].id+"'> <img class='operation' src='"+rootPath+"static/img4/update.png'/></a>"
  +"<img class='operation delban' onclick='del("+data[i].id+")' src='"+rootPath+"static/img4/delete.png'/> ");
  tr.append(t14);
  $("#stanAll ").append(tr);
  } 
  }
  ,"json");
 
  
  $.post(rootPath+"getcount.do",{"pid":pid,"speriod":speriod,
  "srate":srate,"srepayType":srepayType},function(data){
 	
 	count=Math.ceil(data/5);
 if(count==0){count=1}
  $(".paging span:eq(0)").text(pageno);
  $(".paging span:eq(1)").text(count);
  },"json");
  if(pageno==1){
  $(".paging a:eq(1)").hide();
  }else{
  $(".paging a:eq(1)").show();
  }
  if(pageno==count){
  $(".paging a:eq(2)").hide();
  }else{
  $(".paging a:eq(2)").show();
  }
  }
  
  function del(i){
  $(".banDel").show();
  $("#yes").click(function(){
  
  $.post(rootPath+"delStandardinvest.do",{"id":i},function(data){
  pageno=1;
  load();
  $(".banDel").hide();
  },"json");
  
  })
  }
 function btn(){
 pid=$("#pid").val();
 speriod=$("#speriod").val();
 srate=$("#srate").val();
 srepayType=$("#srepayType").val();
 load();
 } 
 function first(){
 pageno =1;
 load();
 }
  
  function last(){
 pageno =count;
 load();
 }
  
  function up(){
 pageno--;
 load();
 }
  
  function down(){
 pageno++;
 load();
 }
  
  window.onload=function(){
  load();
  };
  
</script>
</html>