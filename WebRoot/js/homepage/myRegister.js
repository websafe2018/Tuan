var realPath="";
var time=0;
var i=null;
var sendCode="";
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
	var email="";
	var password="";
	var code="";
	$("#email").focus(function(){
		$(this).css("border-color","#48D6A2");
		$("#regMsg").text("");
	})
	$("#password").focus(function(){
		$(this).css("border-color","#48D6A2");
		$("#regMsg").text("");
	})
	$("#code").focus(function(){
		$(this).css("border-color","#48D6A2");
	})
	
	$("#email").blur(function(){
		$(this).css("border-color","");
		email=$("#email").val();
		if(email!=null&&email.trim()!=""){
			//alert(realPath);
			$.post(realPath+"/checkLoginName.do",{"condition":email},function(data){
				if(data=="success"){
					$("#uNameMsg").text("⊙邮箱已被占用");
				}else{
					$("#emailMsg").text("");
				}
			});
		}else{
			$("#emailMsg").text("⊙请输入邮箱号码");
		}
	})
	
	$("#password").blur(function(){
		$(this).css("border-color","");
		//alert(111)
		password=$("#password").val();
		if(password!=null&&password.trim()!=""){
			$("#passMsg").text("");
		}else{
			$("#passMsg").text("⊙请输入密码");
		}
	})
	
	
	$("#code").blur(function(){
		$(this).css("border-color","");
		
		code=$("#code").val();
		if(code!=null&&code.trim()!=""){
			$("#regMsg").text("");
		}else if(sendCode!=code){
			$("#regMsg").text("验证码错误");
		}else{
			$("#regMsg").text("验证码不能为空");
		}
	})
	
	
	$("#submit").click(function(){
		email=$("#email").val();
		password=$("#password").val();
		code=$("#code").val();
		alert(code)
		alert(sendCode)
		if(email!=null&&email.trim()!=""&&password!=null&&password.trim()!=""&&code!=null&&code.trim()!=""&&sendCode==code&&checkagree()){
			$.post(realPath+"/register.do",{"email":email,"password":password},function(data){
				//alert(data)
				if(data=="success"){
					$("#emailMsg").text("");
					$("#passMsg").text("");
					$("#regMsg").text("");
					window.location.href=realPath+"/jsp/homepage/login.jsp";
				}else{
					$("#emailMsg").text("");
					$("#passMsg").text("");
					$("#regMsg").text("⊙注册失败！请稍后再试！");
				}
			})
		}else if((email==null||email.trim()=="")&&(password==null||password.trim()=="")){
			$("#emailMsg").text("⊙请输入邮箱号码");
			$("#passMsg").text("⊙请输入密码");
		}else if(email==null||email.trim()==""){
			$("#emailMsg").text("⊙请输入邮箱号码");
			$("#passMsg").text("");
		}else if(password==null||password.trim()==""){
			$("#emailMsg").text("");
			$("#passMsg").text("⊙请输入密码");
		}else if(code==null||code.trim()==""){
			$("#regMsg").text("⊙注册失败！验证码为空！");
		}else if(sendCode!=code){
			$("#regMsg").text("⊙注册失败！验证码错误！");
		}
		/*else if(!checkagree()){
			alert("必须同意协议才能够注册");
		}*/
	});
})
	//发送验证码，并开启定时器
	function btn(){
		if(time==0){
			email=$("#email").val();
			//此处写死,待邮箱功能实现后补全
			if(email!=null&&email.trim()!=""){
				time=10;
				$.post(realPath+"/login_num.do",{"email":email},function(data){
					sendCode=data;
					alert(sendCode);
				})
				i=setInterval(show,1000);
			}else{
				$("#emailMsg").text("⊙请输入邮箱号码");
			}
			
		}
	}

	//定时器
	function show(){
		//alert(time)
		if(time>0){
			$("#message").css("background-color","gray");
			$("#message").text(time+"秒后再次发送");
			time=time-1;
		}
		else{
			$("#message").css("background-color","#48D6A2");
			$("#message").text("点击获取验证码");
			clearInterval(i);
			i=null;
			sendCode="";
		}
	}
