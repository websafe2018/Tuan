<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="ss" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML >
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'updateStan.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script type="text/javascript" src="${pageContext.request.contextPath }/js/houtai/jquery-1.8.3.js"></script>
  </head>
  
  <body>
  <h2>添加</h2>
   <form id="add"  method="get">
   <table border="1">
		<tr><td>标的类型(id):</td><td><input  id="pid" name="pid" value="15" readonly="readonly"/></td></tr>
		<tr><td>项目名字:</td><td><input  id="sname" name="sname"/></td></tr>
		<tr><td>项目总金额:</td><td><input  id="stotelMoney" name="stotelMoney"/></td></tr>
		 <tr><td>预期年化利率:</td><td><input  id="srate" name="srate" value="10" readonly="readonly"/></td></tr>
		<tr><td>周转期限:</td><td><input  id="speriod" name="speriod" value="10" readonly="readonly"/></td></tr>
		<tr><td>出借单位:</td><td><input  id="sprice" name="sprice"/></td></tr>
		<tr><td>还款方式:</td><td><input  id="srepayType" name="srepayType" value="每月付息" readonly="readonly"/></td></tr>
		<tr><td>借入份数:</td><td><input  id="sloadNumber" name="sloadNumber" value="0" readonly="readonly"/></td></tr>
		<tr><td>剩余份数:</td><td><input  id="srestNumber" name="srestNumber" value="100" readonly="readonly"/></td></tr>
		 <tr><td>开放时间:</td><td><input   id="istartTime"  name="istartTime"/></td></tr>
		<tr><td>开放周期:</td><td><input  id="sopenPeriod" name="sopenPeriod"/></td></tr>
		<tr><td>满标状态:</td><td><input type="radio"  id="spreStatus1" name="spreStatus"/>满标  <input type="radio"  id="spreStatus2" name="spreStatus" checked="checked"/>未满</td></tr>
		<tr><td>上下架状态:</td><td><input type="radio"  id="sbackStatus1" name="sbackStatus" checked="checked"/>上架 <input type="radio"  id="sbackStatus2" name="sbackStatus"/>下架 </td></tr>
		<tr><td><input type="button" onclick="btn()" value="添加"/></td><td><input type="button" onclick="history.go(-1)" value="返回"/></td></tr>
   </table>
   	
   			
   			
   </form>
  </body>
  <script type="text/javascript">
 
  var rootPath=getRootPath();
 
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
  function btn(){
  var id=$("#id").val();
  var pid=$("#pid").val();
  var sname=$("#sname").val();
  var stotelMoney=$("#stotelMoney").val();
  var srate=$("#srate").val();
  var speriod=$("#speriod").val();
  var sprice=$("#sprice").val();
  var srepayType=$("#srepayType").val();
  var sloadNumber=$("#sloadNumber").val();
  var srestNumber=$("#srestNumber").val();
  var istartTime=$("#istartTime").val();
  var sopenPeriod=$("#sopenPeriod").val();
  var spreStatus=$("#spreStatus").val();
  var sbackStatus=$("#sbackStatus").val();
 
  $.post(rootPath+"addStandardinvest.do",{"id":id,"pid":pid,"sname":sname,"stotelMoney":stotelMoney,
  "srate":srate,"speriod":speriod,"sprice":sprice,"srepayType":srepayType,"sloadNumber":
  sloadNumber,"srestNumber":srestNumber,"istartTime":istartTime,"sopenPeriod":sopenPeriod,
  "spreStatus":spreStatus,"sbackStatus":sbackStatus },function(data){
  if(data==1){
  alert("添加成功");
 window.location.href=rootPath+"jsp/houtai/scattered.jsp";
  }else{
  alert("添加失败");
  }
  
  
  },"json");
  
  }
  
  </script>
</html>
