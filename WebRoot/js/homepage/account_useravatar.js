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



var pash="/Tuan/static/img1/tdface01.jpg";

$(function(){
	
	$("#xx li").click(function(){
		  var img=$(this).children("img").attr("src");
		  pash=img;
		//  alert(pash)
		  $("#xx li").css("border","")
		  $(this).css("border","solid 2px #FF9900");
		  
		  $(".yl").attr("src",img);
		  pash=img;
	
		  //uppash();
		 //alert(pash)
		});

})

//${BasicinfoheadPic.headPic}
//修改头像的图片路径
function uppash(){
	
	var uid=$("#uid").val();
	var headPic=pash;
	$.post("/Tuan/updateBasiByheadPic.do",{"uid":uid,"headPic":headPic},function(data){
		alert(data)
		if(data==1){
			alert("修改成功！");
		getRealPath();
		
		window.location.href=realPath+"/jsp/member/account_useravatar.jsp";
		}else{
			alert("修改失败！");
		}
		
	});
	
}




