var realPath="";
$(function(){
	//获取当前网址的真实路径
	getRealPath();
	$("#submit").click(function(){
		var userName=$("#userName").val();
		var password=$("#password").val();
		if(userName==null||userName.trim()==""){
			alert("用户名不能为空!");
		}else if(password==null||password.trim()==""){
			alert("密码不能为空");
		}else{
			$.post(realPath+"/adminLogin.do",{"userName":userName,"password":password},function(data){
				if(data=="0"){
					window.location.href=realPath+"/jsp/houtai/index.jsp";
				}
				if(data=="1"){
					alert("登录失败!用户名或密码错误!");
				}
				if(data=="2"){
					alert("登录失败！用户没有此权限!");
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
	  //alert(realPath);
	}