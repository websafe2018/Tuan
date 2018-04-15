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
	loadPlan();
	$("#submit").click(function(){
		start=$("#start").val();
		end=$("#end").val();
		//alert(start+"<>"+end);
		if(start!=null&&start.trim()!=""&&end!=null&&end.trim()!=""){
			loadPlan();
		}else if((start==null&&end==null)||(start.trim()==""&&end.trim()=="")){
			loadPlan();
		}else{
			alert("请输入完整的时间区间");
		}
	})
});
function loadPlan(){
	$.getJSON(realPath+"/findPlan.do",{"start":start,"end":end},function(data){
		$("#tbody tr:gt(0)").remove();
		for(var i=0;i<data.length;i++){
			var $tr=$("<tr></tr>");
			var $td=$("<td style='text-indent:3em'></td>");
			$td.text(data[i].returnTimes);
			$tr.append($td);
			var $td1=$("<td style='text-indent:8em'></td>");
			$td1.text(data[i].returnMoney+data[i].returnIncome);
			$tr.append($td1);
			var $td2=$("<td style='text-indent:10em'></td>");
			$td2.text(1);
			$tr.append($td2);
			var $td3=$("<td style='text-indent:4em'></td>");
			if(data[i].style==1){
				$td3.text("未到账！");
				$td3.css("color","red");
			}
			if(data[i].style==0){
				$td3.text("已到账！");
			}
			$tr.append($td3);
			$("#tbody").append($tr);
			$("#tbody tr:gt(0):odd").css("background-color","#E4E4E4");
			
		}
		/*//提示
		var $tr1=$("<tr></tr>");
		var $td4=$("<td colspan='4'></td>");
		$td4.text("此处有数学误差,因早期图省事用了math-floor取了整数,应使用DecimalFormat的实例方法format对数值进行格式化");
		$tr1.append($td4);
		$("#tbody").append($tr1);*/
	})
}
