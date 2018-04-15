<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>借贷统计</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/css/css4/css.css" />
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/js4/jquery.min.js"></script>
<!-- <script type="text/javascript" src="${pageContext.request.contextPath }/static/js4/page.js" ></script> -->
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<body>
<body>
	<div id="pageAll">
		<div class="pageTop">
			<div class="page">
				<img
					src="${pageContext.request.contextPath }/static/img4/coin02.png" /><span><a
					href="#">首页</a>&nbsp;-&nbsp;<a href="#">数据统计</a>&nbsp;-</span>&nbsp;借贷数据统计
			</div>
		</div>
		<div class="page">
			<!-- banner页面样式 -->
			<div class="banner">
				<div class="add">
					<span style="text-align: center; font-size: 18px;"> 标的类型： <select
						id="pid" name="pid"
						style="width: 100px; text-align: center; font-size: 16px;">
							<option value="0">全部</option>
							<option value="11">小微企业</option>
							<option value="12">微团贷</option>
							<option value="13">分期宝</option>
							<option value="14">供应链</option>
							<option value="15">资产标</option>
					</select>
					</span> <span
						style="margin-left: 20px; text-align: center; font-size: 16px;">
						借款方式： <select id="loadtype" name="loadtype"
						style="width: 100px; text-align: center; font-size: 16px;">
						<option value="全部">全部</option>
							<option value="pc端">pc端</option>
							<option value="移动端">移动端</option>

					</select>
					</span> 
					<span
						style="margin-left: 20px; text-align: center; font-size: 16px;">
						是否过审： <select id="status" name="status"
						style="width: 100px; text-align: center; font-size: 16px;">
						<option value="2">全部</option>
							<option value="1">是</option>
							<option value="0">否</option>

					</select>
					</span>
					
					
					
					<span 
						style="margin-left: 20px; text-align: center; font-size: 16px;">
						起始时间： <input value="" id="s" type="text" name="s"
						style="width: 100px; text-align: center; font-size: 16px;" />
					</span> <span 
						style="margin-left: 20px; text-align: center; font-size: 16px;">
						结束时间： <input id="e" type="text" name="e"
						style="width: 100px; text-align: center; font-size: 16px;" />
					</span> 
						 <span
						style="margin-left: 20px; text-align: center; font-size: 16px; ">
						<input type="button" onclick="bth()" value="查询"
						style="margin-left: 20px; text-align: center; font-size: 16px;  width:60px;" />
					</span>
				</div>
				<!-- banner 表格 显示 -->
				<div class="banShow">
					<table id="stanAll" border="1" cellspacing="0" cellpadding="0">
						<tr>
							<td width="500px" class="tdColor">总项目数</td>
							<td width="500px" class="tdColor">总借贷金额</td>
							
						</tr>

					</table>
				
				<!-- banner 表格 显示 end-->
			</div>
			<!-- banner页面样式end -->
		</div>

	</div>


	<!-- 删除弹出框 -->
	<div class="banDel">
		<div class="delete">
			<div class="close">
				<a><img
					src="${pageContext.request.contextPath }/static/img4/shanchu.png" /></a>
			</div>
			<p class="delP1">你确定要删除此条记录吗？</p>
			<p class="delP2">
				<a href="#" class="ok yes" onclick="del()">确定</a><a class="ok no">取消</a>
			</p>
		</div>
	</div>
	<!-- 删除弹出框  end-->
</body>
    <script type="text/javascript">
   // 广告弹出框
	$(".delban").click(function() {
		$(".banDel").show();
	});
	$(".close").click(function() {
		$(".banDel").hide();
	});
	$(".no").click(function() {
		$(".banDel").hide();
	});
	// 广告弹出框 end
	//得到项目路径前缀如：1127.0.0.1:8080/Tuan/
	function getRootPath() {
		//获取当前网址，如： http://localhost:8083/uimcardprj/share/meun.jsp
		var curWwwPath = window.document.location.href;
		//获取主机地址之后的目录，如： uimcardprj/share/meun.jsp
		var pathName = window.document.location.pathname;
		var pos = curWwwPath.indexOf(pathName);
		//获取主机地址，如： http://localhost:8083
		var localhostPaht = curWwwPath.substring(0, pos);
		//获取带"/"的项目名，如：/uimcardprj
		var projectName = pathName.substring(0, pathName.substr(1).indexOf('/') + 1);
		return (localhostPaht + projectName + "/");
	}
    var pid=$("#pid").val();
    var loadtype=$("#loadtype").val();
    var status=$("#status").val();
    var stime="";
    var etime="";
    var rootPath = getRootPath();
    
    var zongx=0;//总项目数
    var zongj=0.0;//借贷总金额
    function load(){
    $.post(rootPath+"findLoadrecordAllTime.do",{"pid":pid,"loadtype":loadtype,"status":status,
    "s":stime,"e":etime},function(data){
    $("#stanAll tr:gt(0)").remove();
    zongx=0;
    zongj=0.0;
    for(var i=0;i<data.length;i++){
    zongx++;
    zongj=data[i].loadMoney+zongj;
    
    }
    var tr=$("<tr></tr>")
    var t1=$("<td></td>")
    t1.text(zongx);
    tr.append(t1);
    var t2=$("<td></td>")
    t2.text(zongj);
    tr.append(t2);
    $("#stanAll").append(tr);
    },"json")
    
    
    
    };
    function del() {
		var input = document.getElementsByName("check[]");
		for (var i = input.length - 1; i >= 0; i--) {
			if (input[i].checked == true) {
				//获取td节点
				var td = input[i].parentNode;
				//获取tr节点
				var tr = td.parentNode;
				//获取table
				var table = tr.parentNode;
				//移除子节点
				table.removeChild(tr);
			}
		}
	}
    function bth(){
    pid=$("#pid").val();
    loadtype=$("#loadtype").val();
    status=$("#status").val();
    stime=$("#s").val();
    etime=$("#e").val();
    
    
    load();
    }
    window.onload=function (){
    load();
    }
    
    
    </script>
 
</html>
