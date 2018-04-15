var realPath="";
var id = -1;
$(function(){
	getRealPath();
	loadAdminUsers();
	// 广告弹出框
	//确认删除
	$("#yes").click(function(){
		alert(id);
		$.post(realPath+"/delUserById.do",{"id":id},function(data){
			if(data=="success"){
				loadAdminUsers();
			}
		});
	  $(".banDel").hide();
	});
	$("#no").click(function(){
	  $(".banDel").hide();
	});
	// 广告弹出框 end
	
	$("#submit").click(function(){
		var userName=$("#userName").val();
		var password=$("#password").val();
		if(userName!=null&&userName.trim()!=""&&password!=null&&password.trim()!=""){
			$.post(realPath+"/addAdmin.do",{"userName":userName,"password":password},function(data){
				alert(data)
				if(data=="0"){
					$("#userName").val("");
					$("#password").val("");
					$("#msg").text("添加成功！");
				}else if(data=="1"){
					$("#msg").text("用户名已经被占用！");
				}else{
					$("#msg").text("添加失败！请重新再试！");
				}
			});
		}else{
			$("#msg").text("请填写用户名和密码！");
		}
	});
	
	
});
function loadAdminUsers(){
	$.getJSON(realPath+"/findAdminUserAll.do",{},function(data){
		$("#ulist tr:gt(0)").remove();
		for(var i=0;i<data.length;i++){
			var $tr=$("<tr height='40px'></tr>");
			var $td=$("<td></td>");
			$td.text(data[i].id);
			$tr.append($td);
			var $td1=$("<td></td>");
			$td1.text(data[i].role);
			$tr.append($td1);
			var $td2=$("<td></td>");
			$td2.text(data[i].userName);
			$tr.append($td2);
			var $td3=$("<td></td>");
			$td3.text(data[i].registerTime);
			$tr.append($td3);
			var $td4=$("<td></td>");
			$td4.html("<a href='"+realPath+"/findUserById.do?id="+data[i].id+"'><img class='operation' src='"+realPath+"/static/img4/update.png'></a>&nbsp;<img class='operation delban' onclick='del("+data[i].id+")'  src='"+realPath+"/static/img4/delete.png'>");
			// 当动态添加节点完成之后再给其中的按钮绑定事件,这样可以选中
	       
			$tr.append($td4);
			$("#ulist").append($tr);
		}
	});
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
	}
function del(i){
	 $(".banDel").show();
	 id=i;
}