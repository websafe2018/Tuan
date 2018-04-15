var realPath="";
var count=0;
var pageno=1;
var minTime="";
var maxTime="";
var realName="";
$(function(){
	getRealPath();
	loadReList();

$("#submit").click(function(data){
	$("#showB_id tr:gt(0)").remove();
	var tr=$("<tr><td colspan='6'><h4>请点击详情查看详细流水记录！</h4></td></tr>");
	$("#showB_id").append(tr);
	minTime=$("#minTime").val();
	maxTime=$("#maxTime").val();
	realName=$("#condition").val();
	pageno=1;
	if((minTime==null||minTime.trim()=="")&&(maxTime==null||maxTime.trim()=="")&&(realName==null||realName.trim()=="")){
		
	}else if((minTime!=null&&minTime.trim()!=""&&maxTime!=null&&maxTime.trim()!="")||((minTime==null||minTime.trim()=="")&&(maxTime==null||maxTime.trim()==""))){
		loadReList();
	}else{
		//alert(minTime+"<>"+maxTime)
		//alert((minTime==null||minTime.trim()=="")&&(maxTime==null||maxTime.trim()==""));
		alert("请填写正确的时间区间！");
	}
});
	
	
});
function loadReList(){
	
	
	
		
	
	$.post(realPath+"/getReCount.do",{"minTime":minTime,"maxTime":maxTime,"realName":realName},function(data){
		var num=parseInt(data);
		if(num%5==0){
			count=num/5;
		}else{
			count=parseInt(num/5)+1;
		}
	});
	
	$.getJSON(realPath+"/findReAll.do",{"pageno":pageno,"minTime":minTime,"maxTime":maxTime,"realName":realName},function(data){
		$("#bList tr:gt(0)").remove();
		for(var i=0;i<data.length;i++){
			var $tr=$("<tr></tr>");
			var $td=$("<td></td>");
			$td.text(data[i].id);
			$tr.append($td);
			var $td1=$("<td></td>");
			$td1.text(data[i].realName);
			$tr.append($td1);
			var $td2=$("<td></td>");
			$td2.text(data[i].chargeMoney);
			$tr.append($td2);
			var $td3=$("<td></td>");
			$td3.html("<a href='#' onclick='show("+data[i].id+")'>..详情</a>");
			$tr.append($td3);
			
			$("#bList").append($tr);
		}
		var $tr=$("<tr style='text-align:center;'></tr>");
		var $td=$("<td colspan='11'></td>");
		$td.html("<a href='javascript:viod(0);' id='first' onclick='first()'>首页</a> | <a href='javascript:viod(0);' id='prev' onclick='prev()'>上一页</a> | <a href='javascript:viod(0);' id='next' onclick='next()'>下一页</a> | <a href='javascript:viod(0);' id='end' onclick='end()'>末页</a> <span>第<font id='pageno'></font>页/共<font id='count'></font>页</span>");
		$tr.append($td);
		$("#bList").append($tr);
		$("#pageno").text(pageno);
		$("#count").text(count);
	//分页控制
	if(pageno<=1){
		pageno=1;
		$("#first").css("color","#333333");
		$("#first").attr("onclick","");
		$("#prev").css("color","#333333");
		$("#prev").attr("onclick","");
	}else if(count ==1){
		$("#next").css("color","#333333");
		$("#next").attr("onclick","");
		$("#end").css("color","#333333");
		$("#end").attr("onclick","");
	}else{
		$("#first").css("color","");
		$("#first").attr("onclick","first()");
		$("#prev").css("color","");
		$("#prev").attr("onclick","prev()");
	}
	
	if(pageno>=count){
		pageno=count;
		$("#next").css("color","#333333");
		$("#next").attr("onclick","");
		$("#end").css("color","#333333");
		$("#end").attr("onclick","");
	}else{
		$("#next").css("color","");
		$("#next").attr("onclick","next()");
		$("#end").css("color","");
		$("#end").attr("onclick","end()");
	}
	});
	
}

function show(i){
	var id=parseInt(i);
	
	$.getJSON(realPath+"/findReById.do",{"id":id},function(data){
		//alert(data.realName+"<>")
		$("#showB_id tr:gt(0)").remove();
		var $tr=$("<tr></tr>");
		var $td=$("<td></td>");
		$td.text(data.id);
		$tr.append($td);
		var $td1=$("<td></td>");
		$td1.text(data.realName);
		$tr.append($td1);
		var $td2=$("<td></td>");
		$td2.text(data.chargeNumber);
		$tr.append($td2);
		var $td3=$("<td></td>");
		$td3.text(data.chargeMoney);
		$tr.append($td3);
		var $td4=$("<td></td>");
		$td4.text(data.chargeTime);
		$tr.append($td4);
		var $td5=$("<td></td>");
		var temp=data.chargeStatus;
		if(temp==0){
			$td5.text("充值中");
		}else{
			$td5.text("已到账");
		}
		$tr.append($td5);
		
		$("#showB_id").append($tr);
	});
}
//首页
	function first(){
		pageno=1;
		loadVIP();
	}
	//上一页
	function prev(){
		pageno--;
		loadVIP();
	}
	//下一页
	function next(){
		pageno++;
		loadVIP();
	}
	//末页
	function end(){
		pageno=count;
		loadVIP();
	}


function getRealPath(){
	  //获取当前网址，如： http://localhost:8083/myproj/view/my.jsp
	   var curWwwPath=window.document.location.href;
	   //获取主机地址之后的目录，如： myproj/view/my.jsp
	  var pathName=window.document.location.pathname;
	  var pos=curWwwPath.indexOf(pathName);
	  //获取主机地址，如： http://localhost:8083
	  var localhostPaht=curWwwPath.substring(0,pos);
	  //获取带"/"的项目名，如：/myproj
	  var projectName=pathName.substring(0,pathName.substr(1).indexOf('/')+1);
	 
	 //得到了 http://localhost:8083/myproj
	  realPath=localhostPaht+projectName;
	}