var realPath="";
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
var start="";
var end ="";
$(function(){
	getRealPath();
	loadbackPlan();
});
//加载列表
function loadbackPlan(){
$.getJSON(realPath+"/findBackPlanList.do",{"start":start,"end":end},function(data){
	$("#tbody tr:gt(0)").remove();
	//alert(data);
	for(var i=0;i<data.length;i++){
		var $tr=$("<tr style='background-color: #fff;'></tr>");
		var $td=$("<td class='txt_center'></td>");
		$td.text(data[i].backTime);
		$tr.append($td);
		var $td1=$("<td class='txt_center'></td>");
		$td1.text(data[i].backTime);
		$tr.append($td1);
		var $td2=$("<td class='txt_center'></td>");
		$td2.text(Math.round((data[i].backMoney+data[i].backIncome)*100)/100);
		$tr.append($td2);
		var $td3=$("<td class='txt_center'></td>");
		if(data[i].bstyle==0){
			$td3.text("已还款");
		}else if(data[i].bstyle==1){
			$td3.html("<a class='txt_center search_btn' href='javascript:void(0);' onclick='back("+data[i].id+")' style='width: 50px;margin-left:30px'>立即还款</a>");
		}
		$tr.append($td3);
		$("#tbody").append($tr);
		$("#tbody tr:gt(0):odd").css("background-color","rgb(240,240,240)");
	}	
	
})
	
}

//提交查询
function submit(){
	start=$("#start").val();
	end=$("#end").val();
	if((start==null&&end==null)||(start.trim()==""&&end.trim()=="")){
		loadbackPlan();
	}else if(start!=null&&end!=null&&start.trim()!=""&&end.trim()!=""){
		loadbackPlan();
	}else{
		alert("请填写正确的时间区间");
	}
}
function back(i){
	//alert(i)
	var id=i;
	$.post(realPath+"/doBackById.do",{"id":id},function(data){
		//alert(data)
		if(data=="success"){
			alert("还款成功！");
			window.location=realPath+"/myAcc.do";
		}else if(data=="nofull"){
			alert("余额不足！请先充值！");
		}else{
			alert("还款失败！服务器繁忙!");
		}
	})
}
