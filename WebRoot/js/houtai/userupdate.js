var realPath="";
$(function(){
	getRealPath();
	
	var id=$("#id").text();
	var telNo1=$("#telNo").val();
	var idnumber1=$("#idnumber").val();
	var email1=$("#email").val();
	var bankNumber1=$("#bankNumber").val();
	var address1=$("#address").val();
	var unitAddres1=$("#unitAddres").val();
	var acBalance1=$("#acBalance").val();
	var registerTime1=$("#registerTime").val();
	var realName1=$("#realName").val();
	
	$("#submit").click(function(){
		var telNo=$("#telNo").val();
		var idnumber=$("#idnumber").val();
		var email=$("#email").val();
		var bankNumber=$("#bankNumber").val();
		var address=$("#address").val();
		var unitAddres=$("#unitAddres").val();
		var acBalance=$("#acBalance").val();
		var registerTime=$("#registerTime").val();
		var realName=$("#realName").val();
		if(idnumber==idnumber1&&email==email1&&bankNumber==bankNumber1&&address==address1&&unitAddres==unitAddres1&&acBalance==acBalance1&&registerTime==registerTime1&&realName==realName1&&telNo==telNo1){
			window.location.href=realPath+'/jsp/houtai/vip.jsp';
		}else{
			$.post(realPath+"/updateVIP.do",{"id":id,"telNo":telNo,"idnumber":idnumber,"email":email,"bankNumber":bankNumber,"address":address,"unitAddres":unitAddres,"acBalance":acBalance,"registerTime":registerTime,"realName":realName},function(data){
				if(data=="success"){
					window.location.href=realPath+"/jsp/houtai/vip.jsp";
				}else{
					alert("修改失败!请重新尝试!");
				}
			});
		}
	});
	
});
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