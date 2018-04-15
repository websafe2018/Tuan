var realPath="";
var pageno = 1;
var count = 0;
var loadPeriod = null;
var loadStatus = null;
var realName = null;

function getdata() {
	$.post(realPath+"/jiedai.do", {
		"loadStatus" : loadStatus,
		"loadPeriod" : loadPeriod,
		"realName" : realName,
		"pageno" : pageno
	}, function(data) {
		//alert("得到"+data);
		$("#table tr:gt(0)").remove();
		if (data != null) {
			for (var i = 0; i < data.length; i++) {

				var tr = $("<tr></tr>");
				/*var xuhao = $("<td></td>").text(data[i].id);*/
				var xuhao = $("<td></td>").text(i+1);
				(tr).append(xuhao);
				var name = $("<td></td>").text(data[i].userName);
				(tr).append(name);
				var name2 = $("<td></td>").text(data[i].realName);
				(tr).append(name2);
				var tel = $("<td></td>").text(data[i].telNo);
				(tr).append(tel);
				var IDNumber = $("<td></td>").text(data[i].iDNumber);
				(tr).append(IDNumber);
				var cs = $("<td></td>").text(data[i].address);
				(tr).append(cs);
				var dw = $("<td></td>").text(data[i].organization);
				(tr).append(dw);
				var jk = $("<td></td>").text(data[i].orderId);
				(tr).append(jk);
				var je = $("<td></td>").text(data[i].loadMoney);
				(tr).append(je);
				var zq = $("<td></td>").text(data[i].loadPeriod);
				(tr).append(zq);
				var fs = $("<td></td>").text(data[i].rName);
				(tr).append(fs);
				if (data[i].status == 0) {
					var sh = $("<td></td>").text("未审核");
					(tr).append(sh);
				} else {
					var sh = $("<td></td>").text("已审核");
					(tr).append(sh);

				}

				if (data[i].loadStatus == 0) {
					var zx = $("<td></td>").text("未审核");
					(tr).append(zx);
				} else if (data[i].loadStatus == 1) {
					var zx = $("<td></td>").text("已审核");
					(tr).append(zx);

				} else if (data[i].loadStatus == 2) {
					var zx = $("<td></td>").text("未通过");
					(tr).append(zx);

				}


				

				var cz = $("<td></td>").html("<a href='/Tuan/jiedaibyid.do?id="+data[i].id+"'>" +
						"<img class='operation' src='/Tuan/static/img4/update.png'></a> " +
						"<a href='javascript:void(0)' onclick='del("+data[i].id+")'  ><img class='operation delban' src='/Tuan/static/img4/delete.png' /></a>");
				
				/*var cz = $("<td></td>").html("<a href='/Tuan/jiedaibyid.do?id="+data[i].id+"'>" +
					"<img class='operation' src='/Tuan/static/img4/update.png'></a> " +
					"<a href='/Tuan/deleteLoadrecord.do?id="+data[i].id+"' ><img class='operation delban' src='/Tuan/static/img4/delete.png' /></a>");*/
				(tr).append(cz);
				$("#table").append(tr);

			}

			if (pageno != 1) {
				$("#shang").show();
			} else {
				$("#shang").hide();
			}

		} else {

			alert("查询失败")

		}

	}, "json");

	$.post(realPath+"/getcount.do", {
		"loadStatus" : loadStatus,
		"loadPeriod" : loadPeriod,
		"realName" : realName
	}, function(data) {
		//alert("aaaa:"+realName)
		//var countno = $("<span></span>").text("");
		//alert("得到条数" + data);
		count = parseInt(data / 5);

		if (data % 5 != 0) {
			count++;

		}
		//alert("得到页数" + count);
		$("#countno").text(pageno + "/" + count + "页");

	});


	if (pageno != count) {
		$("#xia").show();
	} else {
		$("#xia").hide();
	}

}

$(function() {
	getRealPath();
	 getdata();
	var shou = $("<a href='javascript:void(0)' onclick='shou()' >首页</a>");
	var shang = $("<a href='javascript:void(0)' onclick='shang()' id='shang'>上一页</a>");
	var xia = $("<a href='javascript:void(0)' onclick='xia()' id='xia'>下一页</a>");
	var wei = $("<a href='javascript:void(0)' onclick='wei()' id='wei'>尾页</a>");
	var countno = $("<span id='countno'></span>");
	$(".paging").append(countno);
	$(".paging").append(shou);
	$(".paging").append(shang);
	$(".paging").append(xia);
	$(".paging").append(wei);
})




function shou() {
	pageno = 1;
	getdata();
}

function shang() {
	pageno--;

	//alert(pageno);
	getdata();

}
function xia() {
	pageno++;
	//alert(pageno);
	getdata();

}
function wei() {
	pageno = count;
	getdata();

}
function find() {
	loadPeriod = $("#select").val();
	loadStatus = $(".radio:checked").val();
	realName = $("#input").val();
	/*alert("单选框的值是："+loadStatus);
	alert("下拉框的值是："+loadPeriod);
	alert("输入框的值是："+realName);*/
	getdata();
}


function del(i) {
	var ok=confirm("确认删除吗？");
	var id=i;
	if(ok){
		$.post(realPath+"/deleteLoadrecord.do",{"id":id},function(data){
			//alert(data);
			if(data==0){
				alert("删除成功");
				getdata();
			}else{
				alert("删除失败");
			}	
		});

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
	}






