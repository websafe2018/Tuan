var realPath="";  
var pageno=1;
var count = 0;
var start="";
var end = "";
var condition="";

$(function(){
	getRealPath();
	loadVIP();
	
	$("#submit").click(function(){
		condition=$("#condition").val();
		pageno=1;
		start=$("#start").val();
		end=$("#endt").val();
		loadVIP();
	});
	// 广告弹出框
/*	$(".delban").click(function(){
	  $(".banDel").show();
	});*/
	
	$(".close").click(function(){
	  $(".banDel").hide();
	});
	
	$(".no").click(function(){
	  $(".banDel").hide();
	});
	 
	$("#yes").click(function(){
		//alert(11)
		$.post(realPath+"/delVip.do",{"id":id},function(data){
			alert(data)
			if(data=="success"){ 
				loadVIP();
			}else{
				alert("删除失败!请重新尝试!");
			}
			$(".banDel").hide();
		});
	});
});

function loadVIP(){
	//alert(condition+">>>>>>");
	$.post(realPath+"/getVipCount.do",{"start":start,"end":end,"condition":condition},function(data){
		var num=parseInt(data);
			if(num%5==0){
				count=num/5;
			}else{
				count=parseInt(num/5)+1;
			}
	});
	
	$.getJSON(realPath+"/findUsersByRole.do",{"pageno":pageno,"start":start,"end":end,"condition":condition},function(data){
		$("#vipList tr:gt(0)").remove();
		for(var i=0;i<data.length;i++){
			var $tr=$("<tr></tr>");
			var $td=$("<td></td>");
			$td.text(data[i].id);
			$tr.append($td);
			var $td1=$("<td></td>");
			$td1.text(data[i].realName);
			$tr.append($td1);
			var $td2=$("<td></td>");
			$td2.text(data[i].telNo);
			$tr.append($td2);
			var $td3=$("<td></td>");
			$td3.text(data[i].idnumber);
			$tr.append($td3);
			var $td4=$("<td></td>");
			$td4.text(data[i].email);
			$tr.append($td4);
			var $td5=$("<td></td>");
			$td5.text(data[i].bankNumber);
			$tr.append($td5);
			var $td6=$("<td></td>");
			$td6.text(data[i].address);
			$tr.append($td6);
			var $td7=$("<td></td>");
			$td7.text(data[i].unitAddres);
			$tr.append($td7);
			var $td8=$("<td></td>");
			$td8.text(data[i].acBalance);
			$tr.append($td8);
			var $td9=$("<td></td>");
			$td9.text(data[i].registerTime);
			$tr.append($td9);
			var $td10=$("<td></td>");
			$td10.html("<a href='"+realPath+"/findVipById.do?id="+data[i].id+"'><img class='operation' src='"+realPath+"/static/img4/update.png'></a> <img class='operation delban' src='"+realPath+"/static/img4/delete.png' onclick='del("+data[i].id+")'>");
			$tr.append($td10);
			$("#vipList").append($tr);
		}
		var $tr=$("<tr style='text-align:center;'></tr>");
		var $td=$("<td colspan='11'></td>");
		$td.html("<a href='javascript:viod(0);' id='first' onclick='first()'>首页</a> | <a href='javascript:viod(0);' id='prev' onclick='prev()'>上一页</a> | <a href='javascript:viod(0);' id='next' onclick='next()'>下一页</a> | <a href='javascript:viod(0);' id='end' onclick='end()'>末页</a> <span>第<font id='pageno'></font>页/共<font id='count'></font>页</span>");
		$tr.append($td);
		$("#vipList").append($tr);
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
	})
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
//删除
function del(i){
	 $(".banDel").show();
	 id=i;
}