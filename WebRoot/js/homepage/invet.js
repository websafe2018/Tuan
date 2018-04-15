
var pid=15;
var speriod=0;
var srate=0.00;
var srepayType="";
var spreStatus=1;//是否满标
var pageno=1;//页码
var count=1;//页面数
var group=0;//按什么排序
var order=0;//升降序1/0
//var invNum=new Array();//投资份数
var invNum=1;
var maxNum=new Array();//存放每条项目剩余份数
var invId=new Array();//存放每条项目的id
var invSprice=new Array();//存放每条项目的单价
//获得根目录
function getRootPath(){
    //获取当前网址，如： http://localhost:8083/uimcardprj/share/meun.jsp
    var curWwwPath = window.document.location.href;
    //获取主机地址之后的目录，如： uimcardprj/share/meun.jsp
    var pathName = window.document.location.pathname;
    var pos = curWwwPath.indexOf(pathName);
    //获取主机地址，如： http://localhost:8083
    var localhostPaht = curWwwPath.substring(0, pos);
    //获取带"/"的项目名，如：/uimcardprj
    var projectName = pathName.substring(0, pathName.substr(1).indexOf('/') + 1);
    return (localhostPaht + projectName+"/");        
}
var rootPath=getRootPath();

//查询项目并每页5个显示
function find(){
	$.post(rootPath+"orderStandardinvestAll.do",{"pid":pid,"speriod":speriod,"srate":srate,
		"srepayType":srepayType,"pageno":pageno,"group":group,"order":order},
		function(data){
			$("#invdatalist dl").remove();
		
		
			for(var i=0;i<data.length;i++){
			//	invNum[i]=1;
				invId[i]=data[i].id;
				invSprice[i]=data[i].sprice;
				maxNum[i]=data[i].srestNumber;
				var ul=$("<ul></ul>");
				var l1=$("<li>周转金额:"+data[i].stotelMoney+"元</li>	");
				ul.append(l1);
				var l2=$("<li>单位:"+data[i].sprice+"元/份 </li>");
				ul.append(l2);
				var l3=$("<li class='surplus'>剩余:"+data[i].srestNumber+"份</li>	");
				ul.append(l3);
				var l4=$("<li class='percent'><span class='f30 g-orange2 fa'>"+
						data[i].srate+"</span><span class='g-orange2'>%</span>利率</li>");
				ul.append(l4);
				var l5=$("<li class='ml1'><span class='f28 g303030 fa'>"+
						data[i].speriod+"</span><span class='g303030'>月</span>/"+
						data[i].srepayType+"</li>");
				ul.append(l5);
				var dd1=$("<div class='l ml20 detail'></div>");
				var div1=$("<div class='inv-title pt5'><a href='https://www.tuandai.com/pages/invest/jing_detail.aspx?id=7daa0040-00b4-451b-bb58-b150a22a717c' "
						+" target='_blank' class='ell i-b-d ' title='资产标170920214027173'>"+data[i].sname+"</a>"+
						"<div class='jing-tip-box clearfloat'><div class='jing-tip jing-tip-l'></div><div class='jing-tip jing-tip-c'>    无需满标 投即计息        </div><div class=''jing-tip jing-tip-r'> </div> </div></div>");
				var div2=$("<div class='inv-data'></div>");
				div2.append(ul);
				dd1.append(div1);
				dd1.append(div2);
				var dd2=$("<dd class='l inv-progress'><div class='buy-input-new'><span onclick='jian()' class='btn l-btn jiek_minus2'>"+
						"-</span> <span class='btn r-btn jiek_plus2 '  onclick='jia()' maxshare='10000'>+</span>"+
						"<input class='input-text jiek_Share2 invNum'  value='1 份' maxshare='10000' type='text'></div>"+
						"<a class='join td-btn-1   td-btn-1-or ' href='javascript:void(0);' onclick='touzi("+(i+1)+")' >我要投资</a> </dd>");
				
				var dt=$("<dt class='l'><a href='https://www.tuandai.com/pages/invest/jing_detail.aspx?id=7daa0040-00b4-451b-bb58-b150a22a717c' target='_blank'><img alt='' src='"+
						rootPath+"static/img/d46b200e-3ff8-4979-9968-490d1b6135a9_s.png' onerror='this.src='"+
						rootPath+"/static/img/default.jpg?v=20160728''></a></dt>");
				var dl=$("<dl class='inv-list cl fix  pb20  vm'></div>");
				dl.append(dt)
				dl.append(dd1)
				dl.append(dd2)
				if(data[i].spreStatus==1){
					dd2.html("<span style='color:gray;font-size:20px;line-height:80px'>已满标<span>")
				}
				$("#invdatalist").append(dl);
				
			}					
		},"json");	
}

//份数减
function jian(){
	invNum--;
	if(invNum>1){
		$(".invNum").eq(i).val(invNum+"份");
	}else{
		invNum=1;
	}
	//alert(invNum[i]);
	
}
//份数加
function jia(){
	invNum++;
	if(invNum>maxNum[i]){
		invNum=maxNum[i];
	}
	$(".invNum").eq(i).val(invNum+"份");
	//alert(invNum[i]);	
}
//投资
function touzi(i){
	
	$.post(rootPath+"yanzhen.do",function(data){
		if(data==0){
			alert("请先登录");
			window.location.href=rootPath+"jsp/homepage/login.jsp";
			
		}else{
			if(confirm("是否投资")){
				$.post(rootPath+"touzi.do",{"invId":invId[i],"uid":data.id,"invSprice":invSprice[i],
					"invNum":invNum			
				},function(data1){
					if(data1==0){
						alert("余额不足，请先充值！");
						window.location.href=rootPath+"jsp/member/RechargeNew2016.jsp"
					}else if(data1==1){
						alert("投资成功")
						window.location.href=rootPath+"myAcc.do"
					}else if(data1==-1){
						alert("投资失败！服务器繁忙！");
					}else if(data1==-2){
						alert("投资失败！不允许重复投资！")
					}
				},"json")
			}
			
		
		}
	},"json")
}
window.onload=find();