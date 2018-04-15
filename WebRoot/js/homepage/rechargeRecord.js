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
var end="";
$(function(){
	getRealPath();
	loadRecharge();
	
	$("#submit").click(function(){
		start=$("#start").val();
		end=$("#end").val();
		if((start==null&&end==null)||(start.trim()==""&&end.trim()=="")){
			loadRecharge();
		}else if(start!=null&&end!=null&&start.trim()!=""&&end.trim()!=""){
			loadRecharge();
		}else{
			alert("请填写正确的时间区间");
		}
	});
});

function loadRecharge(){
	$.getJSON(realPath+"/findRechargeList.do",{"start":start,"end":end},function(data){
		//alert(data);
		$("#tbody tr:gt(0)").remove();
		for(var i=0;i<data.length;i++){
			var $tr=$("<tr style='background-color: #fff;'></tr>");
			var $td=$("<td class='txt_center'></td>");
			$td.text(data[i].chargeTime);
			$tr.append($td);
			var $td1=$("<td class='txt_center'></td>");
			$td1.text(data[i].chargeMoney);
			$tr.append($td1);
			var $td2=$("<td class='txt_center'></td>");
			if(data[i].chargeStatus==0){
				$td2.text("已到账");
			}
			if(data[i].chargeStatus==1){
				$td2.text("充值失败");
			}
			$tr.append($td2);
			
			$("#tbody").append($tr);
			$("#tbody tr:gt(0):odd").css("background-color","rgb(240,240,240)");
		}	
	});
}