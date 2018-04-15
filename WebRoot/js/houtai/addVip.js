var realPath="";
$(function(){
	getRealPath();
	var realName="";
	var flag=false;
	
	var telNo="";
	var flag1=false;
	
	var idnumber="";
	var flag2=false;
	
	var email="";
	var flag3=false;
	
	var bankNumber="";
	var flag4=false;
	
	var address="";
	var flag5=false;
	
	var unitAddres="";
	var flag6=false;
	
	var userName="";
	var flag7=false;
	
	var password="";
	var flag8=false;
	$("#realName").blur(function(){
		realName=$("#realName").val();
		if(realName!=null&&realName.trim()!=""){
			flag=true;
			$("#nameMsg").text("OK!");
		}else{
			$("#nameMsg").text("姓名不能为空");
		}
	});
	
	$("#telNo").blur(function(){
		telNo=$("#telNo").val();
		if(telNo!=null&&telNo.trim()!=""){
			$("#telMsg").text("");
		//	alert(realPath)
			$.post(realPath+"/checkTel.do",{"telNo":telNo},function(data){
				if(data=="success"){
					$("#telMsg").text("OK!");
					flag1=true;
				}else{
					$("#telMsg").text("电话号码已被使用！");
				}
			})
		}else{
			$("#telMsg").text("电话不能为空");
		}
	});
	
	$("#idnumber").blur(function(){
		idnumber=$("#idnumber").val();
		if(idnumber!=null&&idnumber.trim()!=""){
			$.post(realPath+"/checkIdNum.do",{"idnumber":idnumber},function(data){
				if(data=="success"){
					$("#idMsg").text("OK!");
					flag2=true;
				}else{
					$("#idMsg").text("身份证号已经被使用!");
				}
			});
		}else{
			$("#idMsg").text("身份证号不能为空!");
		}
	});
	
	$("#email").blur(function(){
		email=$("#email").val();
		if(email!=null&&email.trim()!=""){
			$.post(realPath+"/checkEmail.do",{"email":email},function(data){
				if(data=="success"){
					$("#emailMsg").text("OK！");
					flag3=true;
				}else{
					$("#emailMsg").text("邮箱已被使用！");
				}
			})
		}else{
			$("#emailMsg").text("邮箱不能为空！");
		}
	});
	
	$("#bankNumber").blur(function(data){
		bankNumber=$("#bankNumber").val();
		if(bankNumber!=null&&bankNumber.trim()!=""){
			$.post(realPath+"/checkBank.do",{"bankNumber":bankNumber},function(data){
				if(data=="success"){
					$("#bankMsg").text("OK！");
					flag4=true;
				}else{
					$("#bankMsg").text("银行卡号已使用！");
				}
			});
		}else{
			$("#bankMsg").text("银行卡号不能为空！");
		}
	});
	
	$("#address").blur(function(){
		address=$("#address").val();
		if(address!=null&&address.trim()!=""){
			$("#addressMsg").text("OK！");
			flag5=true;
		}else{
			$("#addressMsg").text("地址不能为空！");
		}
	});
	
	$("#unitAddres").blur(function(){
		unitAddres=$("#unitAddres").val();
		if(unitAddres!=null&&unitAddres.trim()!=""){
			$("#unitMsg").text("OK！");
			flag6=true;
		}else{
			$("#unitMsg").text("单位地址不能为空！");
		}
	});
	
	$("#password").blur(function(){
		password=$("#password").val();
		if(password!=null&&password.trim()!=""){
			$("#passMsg").text("OK！");
			flag8=true;
		}else{
			$("#passMsg").text("密码不能为空！");
		}
	});
	
	$("#userName").blur(function(){
		userName=$("#userName").val();
		if(userName!=null&&userName.trim()!=""){
			$.post(realPath+"/chenkuName.do",{"userName":userName},function(data){
				if(data=="success"){
					$("#userMsg").text("OK!");
					flag7=true;
				}else{
					$("#userMsg").text("用户名被占用!");
				}
			});
		}else{
			$("#userMsg").text("用户名不能够为空!");
		}
	});
	
	$("#submit").click(function(){
		realName=$("#realName").val();
		telNo=$("#telNo").val();
		idnumber=$("#idnumber").val();
		email=$("#email").val();
		bankNumber=$("#bankNumber").val();
		address=$("#address").val();
		unitAddres=$("#unitAddres").val();
		if(flag&&flag1&&flag2&&flag3&&flag4&&flag5&&flag6&&flag7&&flag8){
			$("#msg").text("");
			$.post(realPath+"/addVip.do",{"userName":userName,"password":password,"realName":realName,"telNo":telNo,"idnumber":idnumber,"email":email,"bankNumber":bankNumber,"address":address,"unitAddres":unitAddres},function(data){
				if(data=="success"){
					window.location.href=realPath+"/jsp/houtai/vip.jsp";
				}else{
					$("#msg").text("添加失败！请稍后在试！");
				}
			})
			
		}else{
			$("#msg").text("请填写准确完整的会员信息！");
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