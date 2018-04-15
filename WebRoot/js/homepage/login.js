var realPath="";

$(function(){
	var condition="";
	var password="";
	getRealPath();
	$("#condition").focus(function(){
		$("#loginMsg").text("");
	})
	$("#password").focus(function(){
		$("#loginMsg").text("");
	})
	
	
	$("#condition").blur(function(){
		condition=$("#condition").val();
		if(condition!=null&&condition.trim()!=""){
			//alert(realPath);
			$.post(realPath+"/checkLoginName.do",{"condition":condition},function(data){
				if(data=="success"){
					$("#uNameMsg").text("");
				}else{
					$("#uNameMsg").text("⊙用户名不存在");
				}
			});
		}else{
			$("#uNameMsg").text("⊙请输入用户名/手机/邮箱");
		}
	})
	
	$("#password").blur(function(){
		//alert(111)
		password=$("#password").val();
		if(password!=null&&password.trim()!=""){
			$("#passMsg").text("");
		}else{
			$("#passMsg").text("⊙请输入密码");
		}
	})
	/*$("#password").blur(function(){
		$("#passMsg").text("⊙请输入密码");
	})*/
	
	$("[name='submit']").click(function(){
		condition=$("#condition").val();
		password=$("#password").val();
		
		if(condition!=null&&condition.trim()!=""&&password!=null&&password.trim()!=""){
			$.post(realPath+"/login.do",{"condition":condition,"password":password},function(data){
				//alert(data)
				if(data=="success"){
					$("#uNameMsg").text("");
					$("#passMsg").text("");
					//$("#loginMsg").show("");
					window.location.href=realPath+"/myAcc.do";
				}else{
					$("#uNameMsg").text("");
					$("#passMsg").text("");
					$("#loginMsg").text("⊙登录失败！用户名或密码错误！");
				}
			})
		}else if((condition==null||condition.trim()=="")&&(password==null||password.trim()=="")){
			$("#uNameMsg").text("⊙请输入用户名/手机/邮箱");
			$("#passMsg").text("⊙请输入密码");
		}else if(condition==null||condition.trim()==""){
			$("#uNameMsg").text("⊙请输入用户名/手机/邮箱");
			$("#passMsg").text("");
		}else if(password==null||password.trim()==""){
			$("#uNameMsg").text("");
			$("#passMsg").text("⊙请输入密码");
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
