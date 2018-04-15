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


$(function(){
	getRealPath();
	loadInvest();
	
})
function loadInvest(){
	$.getJSON(realPath+"/findInvestAll.do",{},function(data){
		var num=0;
		$("#tbody tr:gt(0)").remove();
		for(var i=0;i<data.length;i++){
			num++;
			var $tr=$("<tr></tr>");
			var $td=$("<td></td>");
			$td.text(data[i].itime);
			$tr.append($td);
			var $td1=$("<td></td>");
			$td1.text(data[i].sname);
			$tr.append($td1);
			var $td2=$("<td></td>");
			$td2.text("分期宝");
			$tr.append($td2);
			var $td3=$("<td></td>");
			$td3.text(data[i].imoney);
			$tr.append($td3);
			var $td4=$("<td></td>");
			$td4.html(data[i].srate+"&nbsp;%");
			$tr.append($td4);
			var $td5=$("<td></td>");
			$td5.html("&nbsp;&nbsp;&nbsp;"+data[i].bidsNumber);
			$tr.append($td5);
			
			var $td6=$("<td ></td>");
			$td6.text(data[i].srepayType);
			$tr.append($td6);
			var $td7=$("<td style='text-indent:4em'></td>");
			$td7.text(data[i].speriod);
			$tr.append($td7);
			var $td8=$("<td style='text-indent:2em'></td>");
			if(data[i].rebackType==0){
				$td8.text("已结清");
			}else{
				$td8.text("未结清");
			}
			$tr.append($td8);
			var $td9=$("<td style='text-indent:3em'></td>");
			$td9.text("转让");
			$tr.append($td9);
			$("#tbody").append($tr);
			$("#all").text(num);
			$("#ok").text(num);
		}
	})
}