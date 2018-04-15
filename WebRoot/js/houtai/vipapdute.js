var realPath="";
$(function(){
	getRealPath();
	var oldPass=$("#oldPass").val().trim();
	var apass="";
	var flag=false;
	var newPass="";
	var flag1=false;

	$("#apass").blur(function(){
		apass=$("#apass").val();
		//alert(apass+"<>"+oldPass);
		//alert(apass==oldPass)
		if(apass==null||apass.trim()==""){
			$("#oldMsg").text("请输入原密码!");
		}else if(apass!=oldPass){
			$("#oldMsg").text("原密码不匹配!");
		}else if(apass==oldPass){
			$("#oldMsg").text("OK!");
			flag=true;
		}
	});
	
	$("#newPass").blur(function(){
		newPass=$("#newPass").val();
		if(newPass==null||newPass.trim()==""){
			$("#newMsg").text("请输入新密码!");
		}else if(newPass==oldPass){
			$("#newMsg").text("新密码不能与旧密码一致!");	
		}else if(newPass!=oldPass){
			$("#newMsg").text("OK!");	
			flag1=true;
		}
	})
	
	$("#submit").click(function(){
		var id=$("#id").val();
		newPass=$("#newPass").val();
		apass=$("#apass").val();
		if(apass==null||apass.trim()==""){
			$("#oldMsg").text("请输入原密码!");
		}else if(newPass==null||newPass.trim()==""){
			$("#newMsg").text("请输入新密码!");
		}else if(flag&&flag1){
			$.post(realPath+"/changePass.do",{"id":id,"newPass":newPass},function(data){
				if(data=="success"){
					alert("修改成功,请重新登录!");
					parent.location.href=realPath+"/removeSession.do";
					
				}else{
					alert("修改失败,请重新尝试!");
				}
			})
		}
	})
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