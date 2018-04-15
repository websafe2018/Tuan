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
  <h2>修改</h2>
   <form id="update" action="updateStandardinvest.do" method="get">
   <input value="${standardinvest.id}" id="id" name="id" style="display: none;"/>
   	标的类型(id):<input value="${standardinvest.pid}" id="pid" name="pid" /><br/>
   	项目名字:<input value="${standardinvest.sname}" id="sname" name="sname"/><br/>
   	项目总金额:<input value="${standardinvest.	stotelMoney}" id="stotelMoney" name="stotelMoney" /><br/>
   	预期年化利率:<input value="${standardinvest.srate}" id="srate" name="srate"/><br/>
   	周转期限:<input value="${standardinvest.speriod}" id="speriod" name="speriod" /><br/>
   	出借单位:<input value="${standardinvest.sprice}" id="sprice" name="sprice"/><br/>
   	还款方式:<input value="${standardinvest.srepayType}" id="srepayType" name="srepayType" /><br/>
   	借入份数:<input value="${standardinvest.sloadNumber}" id="sloadNumber" name="sloadNumber" /><br/>
   	剩余份数:<input value="${standardinvest.srestNumber}" id="srestNumber" name="srestNumber" /><br/>
   	开放时间:<input value="${standardinvest.istartTime}"   id="istartTime"  name="istartTime"/><br/>
   	开放周期:<input value="${standardinvest.sopenPeriod}" id="sopenPeriod" name="sopenPeriod"/><br/>
   	满标状态:<input type="radio" value="${standardinvest.spreStatus}" id="spreStatus1" name="spreStatus"/>满标
   			<input type="radio" value="${standardinvest.spreStatus}" id="spreStatus2" name="spreStatus"/>未满<br/>
   	上下架状态:<input type="radio" value="${standardinvest.sbackStatus}" id="sbackStatus1" name="sbackStatus"/>上架
   			<input type="radio" value="${standardinvest.sbackStatus}" id="sbackStatus2" name="sbackStatus"/>下架<br/>
   			<input type="button" onclick="btn()" value="修改"/>
   			<input type="button" onclick="history.go(-1)" value="返回"/><br/>
   			
   </form>
  </body>
  <script type="text/javascript">
 var spreStatus=$("#spreStatus").val();
  var sbackStatus=$("#sbackStatus").val();
  var rootPath=getRootPath();
   if(spreStatus==1){
  $("#spreStatus1").attr("checked","checked");
  }else{
  $("#spreStatus2").attr("checked","checked");
  }
  if(sbackStatus==1){
  $("#sbackStatus1").attr("checked","checked");
  }else{
  $("#sbackStatus2").attr("checked","checked");
  }
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
  spreStatus=$("#spreStatus").val();
   sbackStatus=$("#sbackStatus").val();
 
  $.post("updateStandardinvest.do",{"id":id,"pid":pid,"sname":sname,"stotelMoney":stotelMoney,
  "srate":srate,"speriod":speriod,"sprice":sprice,"srepayType":srepayType,"sloadNumber":
  sloadNumber,"srestNumber":srestNumber,"istartTime":istartTime,"sopenPeriod":sopenPeriod,
  "spreStatus":spreStatus,"sbackStatus":sbackStatus },function(data){
  if(data==1){
  alert("修改成功");
  window.location.href=rootPath+"jsp/scattered.jsp";
  }else{
  alert("修改失败");
  }
  
  
  },"json");
  
  }
  
  </script>
</html>
