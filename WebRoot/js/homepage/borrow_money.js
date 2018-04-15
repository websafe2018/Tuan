
/*function SubmitCreditBorrow() {
	var uid=$("#uid").val();
	if(uid!=null||uid!=""){

    var result = true;
    if (!CheckAddress("#creditProvince div.selected", "#creditCity div.selected", "#checkAddressCredit")) {
        result = false;
    }
    if (!CheckName(true, "#txtNameCredit", "#checkNameCredit")) {
        result = false;
    }
    if (!CheckPhone(true, "#txtPhoneCredit", "#checkPhoneCredit")) {
        result = false;
    }

    if (!result)
        return false;
    
    
    
    String address ,String gender,String telNo,String realame,Integer uid,
	Integer pid,String loadType
    
    var title = $("#creditBorrow .title p").text();
    var borrowType = 0;
    if (title == "申请公务员方案") {
        borrowType = 1
    } else if (title == "申请公积金方案") {
        borrowType = 2;
    } else if (title == "申请精英方案") {
        borrowType = 3;
    }else {
        borrowType = 4;
    }
    
    var sex = "男";
    if ($("#femaleCredit").hasClass("selected")) {
        sex = "女";
    }
    
    var province = $("#creditProvince div.selected").text();//省份
    var city = $("#creditCity div.selected").text();//城市
    
    
    
    //var uid=$("#uid").val();
    var loadType = $("#creditBorrow .title p").text();
    var address=province+city;
    var realame = $("#txtNameCredit").val();
    var telNo = $("#txtPhoneCredit").val();
    var pid=borrowType;
    var gender=sex;
    var loadMoney=$("#jine").val();

    
    

    $.post("/Tuan/Creditloan.do",{"uid":uid,"loadType":loadType,"address":address,"realame":realame,
    			"telNo":telNo,"pid":pid,"gender":gender,"loadMoney":loadMoney},function(data){
    				alert("后台"+data);
    				if(data==1){
    					
    					 $("#creditBorrow").hide();
    		                ShowAlert("err", "success", "提交成功", "提交成功 <br>我们将会尽快与您联系！");
    		                result = true;
    					
    				}else {
    	                $("#creditBorrow").hide();
    	                ShowAlert("success", "err", "提交失败", "提交失败<br>请检查申请内容后重试！");
    	                reload("/ValidateCode.ashx", "#imVcodeCredit");
    	                result = false;
    	            }
    	
    });
    return result;
	}else{
		var pash=getRealPath();
		window.location.href=pash+"/jsp/homepage/register.jsp";
	}
}


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
	  return realPath;
	}

*/


function SubmitCreditBorrow() {
	
	

    var result = true;
    if (!CheckAddress("#creditProvince div.selected", "#creditCity div.selected", "#checkAddressCredit")) {
        result = false;
    }
    if (!CheckName(true, "#txtNameCredit", "#checkNameCredit")) {
        result = false;
    }
    if (!CheckPhone(true, "#txtPhoneCredit", "#checkPhoneCredit")) {
        result = false;
    }

    if (!result)
        return false;
    
    
    
    /*String address ,String gender,String telNo,String realame,Integer uid,
	Integer pid,String loadType*/
    
    var title = $("#creditBorrow .title p").text();
    var borrowType = 0;
    if (title == "申请公务员方案") {
        borrowType = 1
    } else if (title == "申请公积金方案") {
        borrowType = 2;
    } else if (title == "申请精英方案") {
        borrowType = 3;
    }else {
        borrowType = 4;
    }
    
    var sex = "男";
    if ($("#femaleCredit").hasClass("selected")) {
        sex = "女";
    }
    
    var province = $("#creditProvince div.selected").text();//省份
    var city = $("#creditCity div.selected").text();//城市
    
    
    
    //var uid=$("#uid").val();
    var loadType = $("#creditBorrow .title p").text();
    var address=province+city;
    var realame = $("#txtNameCredit").val();
    var telNo = $("#txtPhoneCredit").val();
    var pid=borrowType;
    var gender=sex;
    var loadMoney=$("#jine").val();

    
    

    $.post("/Tuan/Creditloan.do",{"loadType":loadType,"address":address,"realame":realame,
    			"telNo":telNo,"pid":pid,"gender":gender,"loadMoney":loadMoney},function(data){
    				//alert("后台"+data);
    				if(data==1){
    					
    					 $("#creditBorrow").hide();
    		                ShowAlert("err", "success", "提交成功", "提交成功 <br>我们将会尽快与您联系！");
    		                result = true;
    					
    				}else if(data==0){
    	                $("#creditBorrow").hide();
    	                ShowAlert("success", "err", "提交失败", "提交失败<br>请检查申请内容后重试！");
    	                reload("/ValidateCode.ashx", "#imVcodeCredit");
    	                result = false;
    	            }else {
    	            	
    	                result = false;
    	        		var pash=getRealPath();
    	        		window.location.href=pash+"/jsp/homepage/login.jsp";
    	        	}
    	
    });
    return result;
	
}


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
	  return realPath;
	}







