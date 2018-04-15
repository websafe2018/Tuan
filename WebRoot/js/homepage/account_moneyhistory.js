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
 var attrval="";
 var rtype="";
 var rTime="";
$(function(){
	getRealPath();
	loadReList();
	//点击查询分类别，时间或详细
	$("#submit").click(function(){
		rTime=$("#rTime").val();
		alert(rTime)
		alert(attrval+"attrval<>rtype"+rtype+"<>rTime"+rTime);
		loadReList();
	})
	//导出excel
	$("#excel").click(function(){
		$.post(realPath+"/downloadExcel.do",{},function(data){
			if(data=="success"){
				alert("导出完成！");
			}
		})
	})
})

//更换选中大项
function abtn(i){
	if(i==1){
		attrval="";
	}
	if(i==2){
		attrval="收入";
	}
	if(i==3){
		attrval="支出";
	}
}
//更换类型
function btn(j){
	//alert(j)
	if(j==1){
		rtype="";
	}
	if(j==2){
		rtype="借出";
	}
	if(j==3){
		rtype="借入";
	}
	if(j==4){
		rtype="充值";
	}
}
//加载交易记录列表
function loadReList(){
	$.getJSON(realPath+"/findReAll.do",{"attrval":attrval,"rtype":rtype,"rTime":rTime},function(data){
		$("#tbody tr:gt(0)").remove();
		for(var i =0;i<data.length;i++){
			var $tr=$("<tr ></tr>");
			var $td=$("<td style='text-indent:4em'></td>");
			$td.text(data[i].rTime)
			$tr.append($td);
			var $td1=$("<td style='text-indent:1em'></td>");
			$td1.text(data[i].rType)
			$tr.append($td1);
			
			var $td2=$("<td style='text-algin:center'></td>");
			var $td3=$("<td style='text-algin:center'></td>");
			if(data[i].remarks=="收入"){
				$td3.text(data[i].rMoney);
			}	
			
			if(data[i].remarks=="支出"){
				$td2.text(data[i].rMoney);
			}
			$tr.append($td2);
			$tr.append($td3);
			var $td4=$("<td ></td>");
			$td4.text(data[i].blance);
			$tr.append($td4);
			var $td5=$("<td style='text-indent:4.5em'></td>");
			$td5.text(data[i].remarks);
			$tr.append($td5);
			var $td6=$("<td style='text-indent:4em'></td>");
			$td6.text("确认账单");
			$tr.append($td6);
			$("#tbody").append($tr);
		}
		
	});
}