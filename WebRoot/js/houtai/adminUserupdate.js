var realPath="";
$(function(){
	getRealPath();
	var uid=$("#id").text();
	var role=$("#roleId").val();
	//$("select option").find("[value='"+role+"']").attr("selected","selected");
	$("select").val(role);
	var name=$("#userName").val();
	var pass=$("#password").val();
	var tel=$("#telNo").val();
	var ema=$("#email").val();
	var time=$("#registerTime").val();
	$("#submit").click(function(){
		var id=$("#id").text();
		var roleId=$("#roleId").val();
		var userName=$("#userName").val();
		var password=$("#password").val();
		var telNo=$("#telNo").val();
		var email=$("#email").val();
		var registerTime=$("#registerTime").val();
		if(id==uid&&roleId==role&&userName==name&&password==pass&&telNo==tel&&email==ema&&registerTime==time){
					window.location.href=realPath+"/jsp/houtai/user.jsp";
		}else{
			$.post(realPath+"/updateUser.do",{"id":id,"roleId":roleId,"userName":userName,"password":password,"telNo":telNo,"email":email,"registerTime":registerTime},function(data){
				if(data=="success"){
					window.location.href=realPath+"/jsp/houtai/user.jsp";
				}else{
					alert("修改失败!");
				}
			});	
		}
	});
	//此处应加js正则限制传参格式，时间关系暂不添加
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