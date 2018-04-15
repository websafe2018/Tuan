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


function updatesub(){
	
	var	isHouse=null;
	var	marriage=null;
	var	isCar=null;
	var	scale=null;
	
	
	
	var uid=$("#uid").val();
	var nickname=$("#nickname").val();//真实姓名
	var education=$("#Graduation").text();//最高学历
	var school=$("#University").val();//毕业学校
	var marriage1 =$("#Marriage").text();//婚姻状况
	var address=$("#Address").val();//居住地址
	var industry =$("#OfficeDomain").text();//公司行业
	var scale1 =$("#OfficeScale").text();//公司规模
	var position =$("#Position").val();//职位
	var Salary =$("#Salary").text();//月收入 
	var isHouse1 =$("#IsHaveHouse").text();//是否购房 
	var isCar1 =$("#IsHaveCar").text();//是否购车
	var emergeContact =$("#EmergencyContactName").val();//紧急联系人姓名 
	var telNo =$("#EmergencyContactPhone").val();//紧急联系人电话 
	var relation =$("#EmergencyContactRelationShip").text();//紧急联系人关系

	if(marriage1=="未婚"){
		marriage=0;
	}else if(marriage1=="已婚"){
			marriage=1;
	}else{
		 marriage=2;
	}
	
	if(isHouse1=="没有"){
			isHouse=0;
	}else if(isHouse1=="有"){
			isHouse=1;
	}else{
		 isHouse=2;
	}
	
	if(isCar1=="没有"){
			isCar=0;
	}else if(isCar1=="有"){
			isCar=1;
	}else{
			isCar=2;
	}

	
	if(scale1=="10人以下"){
		scale=10;
	}else if(scale1=="10-100人"){
		scale=100;
	}else if(scale1=="100-500人"){
		scale=500;
	}else if(scale1=="500人以上"){
		scale=600;
	}else{
		scale=0;
	}
		
		
	
	/*alert("uid:"+uid);
	alert("真实姓名:"+nickname);
	alert("最高学历:"+education);
	alert("毕业学校:"+school);
	alert("婚姻状况:"+marriage);
	alert("居住地址:"+address);
	alert("公司行业:"+industry);
	alert("公司规模:"+scale);
	alert("职位:"+position);
	alert("月收入:"+income);
	alert("是否购房 :"+isHouse);
	alert("是否购车:"+isCar);
	alert("紧急联系人姓名 :"+emergeContact);
	alert("紧急联系人电话 :"+telNo);
	alert("紧急联系人关系 :"+relation);*/	
	
	/*int uid,String nickname,String education,String school,int  marriage,String address
	,String industry,int scale,String position,String income,int isHouse,int isCar
	,String emergeContact,String telNo,String relation*/
	
	
	$.post("/Tuan/addBasicinfo.do",{"uid":uid,"nickname":nickname,"education":education,
		"school":school,"marriage":marriage,"address":address,"industry":industry,"scale":scale,
		"position":position,"Salary":Salary,"isHouse":isHouse,"isCar":isCar,"emergeContact":emergeContact,
		"telNo":telNo,"relation":relation},function(data){
	
		//alert("后台得到："+data)
		if(data==1){
			alert("提交成功");
			getRealPath();
			window.location.href=realPath+"/jsp/member/account_default.jsp";
			}else{
				alert("提交失败");
				
			}
	});
	
	
	
	
	
}




