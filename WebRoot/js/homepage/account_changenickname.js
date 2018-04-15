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
	var myDate = new Date();//获取系统当前时间
	var hours=parseInt(myDate.getHours()); //获取当前小时数(0-23)
	//alert(hours)
	if(hours>=6&&hours<=12){
		$("#text1").text("上午好,");
		$("#text2").text("！尽情享受上午宁静的时光吧！");
	}
	if(hours>=13&&hours<=18){
		$("#text1").text("下午好,");
		$("#text2").text("！尽情享受下午宁静的时光吧！");
	}
	if((hours>=19&&hours<=24)||(hours>=0&&hours<=5)){
		$("#text1").text("晚上好,");
		$("#text2").text("！尽情享受晚上宁静的时光吧！");
	}
})


//修改昵称
function upnickname(){
	var uid=$("#uid").val();
	var nickname=$("#txtNickName").val();
	
	/*alert("UID："+uid)
	alert("昵称："+nickname)*/
	$.post("/Tuan/updateBasiBynickname.do",{"uid":uid,"nickname":nickname},function(data){
		/*alert("后台得到："+data)*/
		if(data=="1"){
			alert("修改成功！");
			window.location=realPath+"/myAcc.do";
		}else{
			alert("修改失败！");
		}
		
	});
	
}
