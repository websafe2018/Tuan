var newTitle = '团贷网提醒您：';
var oldpid = "", tendval = "", protitle = "";
//申购页面函数 
var pagesize = 15;
var pageindex = 1;
var pageindexproject = 1;
var pagesizeproject = 10;
var deadLineType = 12; 


isWePlanProject = true; //标记在We计划详情页

function zebraLine(el, type, background) { //表格斑马线
    this.el = el;
    this.type = type || 'even';
    this.background = background;
    this.showLine = showLine;

    function showLine() {
        $(this.el + ':' + this.type).css({
            'background': this.background
        })
    }
}

var evenLine = new zebraLine('.plan-detail tr', "", '#f7f7f7');
evenLine.showLine();
var evenLine = new zebraLine('.creditor-list tr', "", '#f7f7f7');
evenLine.showLine();
var evenLine = new zebraLine('.tg3 tr', "", '#f7f7f7');
evenLine.showLine(); 

(function () {
    var deadType = $('#hiDeadType').val();
    if (deadType == 2) {
        deadLineType = 365;
    }

    $('.tag').find('li').bind('click', function () {
        $('.tag').find('li').removeClass('on');
        $(this).addClass('on');
        var _index = $(this).index() + 1;
        $('.tg').hide();
        $('.tg' + _index).show();
    });
    //弹窗
    $('.show-win').click(function () {
        $('.dial-win').removeClass('hide-win');
        $('.dial-win').addClass('show-win');
        $('.dial-win, .layer').fadeIn(500);
    });
    //关闭
    $('.dial-win').find('.close').click(function () {
        $(this).parents('.dial-win').removeClass('show-win');
        $(this).parents('.dial-win').addClass('hide-win');
        $(this).parents('#vertical-center').fadeOut(500);
        $('.layer').fadeOut();
    });
    $('.sumbit-box .input-box').find('i').mouseenter(function () {
        $(this).parent().find('i').css({
            'z-index': 0
        })
        $(this).css({
            'z-index': 1
        });
    });
    //tips 信息
    $(".ask-icon").mouseover(function () {
        $(this).parent().find(".we-showtips").show();
    }).mouseout(function () {
        $(this).parent().find(".we-showtips").hide();
    });

    //限制输入数字
    limitInt($("#jiek_Share"));

    //格式化输入份数
    $("#jiek_Share").blur(function () {
        Calculate(2);
    }).keyup(function () {
        Calculate(1);
    });

    //减去
    $("#jiek_minus").click(function () {
        MinusShares();
    });
    //增加
    $("#jiek_plus").click(function () {
        PlusShare();
    });
    $("#AllInvest_We").click(function () {
        var maxShares = $("#jiek_Share").attr("maxShares");
        $("#jiek_Share").val(maxShares);

        var Profit = parseFloat(lowerunit) * parseInt(maxShares) * parseInt(deadline) * parseFloat(rate) / 100 / deadLineType;
        $("#profit").html((Math.floor(Number(Profit) * 100) / 100).toString());
        $("#payamount").html((parseFloat(lowerunit) * maxShares).toFixed(2)); 
    });

    //加入按钮事件
   /* $("#btnSubscribe").click(function () {
        buyWePlan();
    });*/

    //计划表现
    $("#AddNum").click(function () { 
        $('.tag').find('li').removeClass('on');
        $("#AddRecord").addClass('on'); 
        $('.tg').hide();
        $('.tg3').show();  
    });
    $("#PlanCount, #FinishRate").click(function () { 
        $('.tag').find('li').removeClass('on');
        $("#PlanExpression").addClass('on'); 
        $('.tg').hide();
        $('.tg2').show();
    });


    initSubscribesPagin(joinCount);
    initInvestProjectPagin(zhaiQuanCount);
    getWeFtbObligatoryList(); 
    getJoinList();
    Calculate(2); 
})();
function PlusShare() {
    var obj = $("#jiek_Share");
    var currentShare = $(obj).val().replace("份", "").replace(" ", "");
    var maxShares = parseInt($(obj).attr("maxshares"));
    if (currentShare >= maxShares)
        return;
    if (currentShare != $(obj).attr("maxShares")) {
        $(obj).val(parseInt(currentShare) + 1);
        var Profit = parseFloat(lowerunit) * (parseInt(currentShare) + 1) * parseInt(deadline) * parseFloat(rate) / 100 / deadLineType;
        $("#profit").html((Math.floor(Number(Profit) * 100) / 100).toString());
        $("#payamount").html((parseFloat(lowerunit) * (parseInt(currentShare) + 1)).toFixed(2)); 
    }
}

function MinusShares() {
    var obj = $("#jiek_Share");
    var currentShare = $(obj).val().replace("份", "").replace(" ", "");
    var maxShares =parseInt($(obj).attr("maxshares")); 

    if (currentShare > 1) {
        $(obj).val(parseInt(currentShare) - 1);
        var Profit = parseFloat(lowerunit) * (parseInt(currentShare) - 1) * parseInt(deadline) * parseFloat(rate) / 100 / deadLineType;
        $("#profit").html((Math.floor(Number(Profit) * 100) / 100).toString());
        $("#payamount").html((parseFloat(lowerunit) * (parseInt(currentShare) - 1)).toFixed(2)); 
    }
}


/*function buyWePlan() {
	 var Identi=$("#Identi").text();
	 var cunGuan=$("#cunGuan").text();
	if(Identi=="true"){//判断用户是否登录OpAccounts
		alert("用户已登录");
		if(cunGuan=="true"){//判断用户是否开启银行存管，未开通则直接跳转到开启银行存管的页面
			//window.location.href="OpAccounts";
			alert("用户已开通存管");
			$("#td-art").show();
        	$("#layer").show();
		}else{
			window.location.href="OpAccounts";
		}
	}else{//未登录则跳转到登录页面
		window.location.href="login";
	}
}*/
/**
 * 非新手投资新手标弹出警告弹框
 */
function showFtbNewHandWarning() {
    var showDiv = $("#div_showNewHandWarning");
    var popMsg = $("#btnSubscribe").attr("shownewhandmsg");
    if (popMsg == "" || popMsg == undefined) {
        popMsg = "新手标仅限未成功投资过的用户！";
    }
    if (showDiv.length > 0) {
        $("#showNewHandPopMsg").html(popMsg);
        $("#div_showNewHandWarning").show();
    } else { 
        var html = '<div class="dial-window dial-window-prompt z103" id="div_showNewHandWarning" style="width:360px;" >' +
			'<div class="body">' +
			'<div class="promptbox">' +
			'<div class="f6 lh30 promptbox-innder">' +
			'<span class="l icon prom-icon"></span>' +
			'<span class="db l f16 fc9" id="showNewHandPopMsg" >' + popMsg + '</span>' +
			'</div>' +
			'</div>' +
			'</div>' +
			'</div>';
        $("body").append(html);
    }

    $("#div_showNewHandWarning").show();
    $("#diallayer").show();
    setTimeout(function () {
        $("#diallayer").hide();
        $("#div_showNewHandWarning").hide();
    }, 3000);
}

function GetMoney(amount) {
    if (amount.toString().indexOf('.') > -1) {
        var len = amount.substr(amount.toString().indexOf('.')).length;
        if (len == 2) {
            return amount + "0";
        }
        else {
            return amount;
        }
    } else {
        return amount + ".00";
    }
}

function Calculate(type) {
    var txt = $.trim($("#jiek_Share").val()); 
    var maxShares = parseInt($("#jiek_Share").attr("maxShares"));
    if (txt.replace(" ", "") == "" || txt.replace(" ", "") == "0") {
        if (type == 2) {
            $("#jiek_Share").val("1");

            var Profit = parseFloat(lowerunit) * parseInt(deadline) * parseFloat(rate) / 100 / deadLineType;
            $("#profit").html((Math.floor(Number(Profit) * 100) / 100).toString());

            $("#payamount").html(lowerunit);
        } else {
            $("#profit").html("0.00");
            $("#payamount").html("0.00");
        }
    }else if (parseInt(txt.replace(" ", "")) > parseInt($("#jiek_Share").attr("maxShares"))) {
        if (type == 2) {
            $("#jiek_Share").val("1");
            var Profit = parseFloat(lowerunit) * parseInt(deadline) * parseFloat(rate) / 100 / deadLineType;
            $("#profit").html((Math.floor(Number(Profit) * 100) / 100).toString());
            $("#payamount").html(lowerunit);
        } else {
            $("#jiek_Share").val($("#jiek_Share").attr("maxShares"));

            var Profit = parseFloat(lowerunit) * parseInt($("#jiek_Share").attr("maxShares")) * parseInt(deadline) * parseFloat(rate) / 100 / deadLineType;
            $("#profit").html((Math.floor(Number(Profit) * 100) / 100).toString());

            $("#payamount").html((parseFloat(lowerunit) * parseInt($("#jiek_Share").attr("maxShares"))).toFixed(2));
        }
    }
    else {
        var Profit =parseFloat(lowerunit) * parseInt(txt) * parseInt(deadline) * parseFloat(rate) / 100 / deadLineType;
        $("#profit").html((Math.floor(Number(Profit) * 100) / 100).toString());
        $("#payamount").html((parseFloat(lowerunit) * parseInt(txt)).toFixed(2));
    }
}


//======================债权列表
//获取债权列表分页
function getSubscribesProject(page_index, jq) {
    if (parseInt(pageindexproject - 1) == page_index) {
        return false;
    }
    pageindexproject = (page_index + 1);
    getWeFtbObligatoryList();  
    return false;
}
function getWeFtbObligatoryList()
{
    $("#InvestProjectList").nextAll().remove();
    $("<tr><td colspan=\"5\" align=\"center\">数据加载中...</td></tr>").insertAfter('#InvestProjectList');
    $.ajax({
        async: true,
        type: "post",
        dataType: "json",
        url: '/ajaxCross/ajax_invest.ashx',
        data: { Cmd: "GetWeFtbObligatoryList", projectid: productId, pagesize: pagesizeproject, pageindex: pageindexproject },
        success: function (jsonstr) {
            $("#InvestProjectList").nextAll().remove();
            if (jsonstr.result == "1") { 
                var json = jsonstr.msg;
                var html = new Array(); 
                for (var i = 0; i < json.length; i++) {
                    var rowClass = i>0 && i%2!=0?"style='background: rgb(247, 247, 247);'":"";
                    var tempStr = "<tr " + rowClass + " ><td>" + (pagesizeproject * (pageindexproject - 1) + i + 1) + "</td><td><a href='/pages/invest/detail.aspx?Id=" + json[i].ProjectId + "' target='_blank'>" + json[i].ProjectTitle + "</a></td><td>" + json[i].BorrowerName + "</td><td>" + json[i].TelNo + "</td><td>" + json[i].Address + "</td><td>¥" + fmoney(json[i].Amount,2) + "</td></tr>";
                    html.push(tempStr);
                } 
                $(html.join("")).insertAfter('#InvestProjectList');
                if (parseInt(jsonstr.totalcount) != parseInt($("#divPagination1").attr("totalcount"))) {
                    initInvestProjectPagin(jsonstr.totalcount);
                }
            } else { 
                var emptyTitle = "客官莫急~复投宝投标中，请稍后查看债权列表信息......";
                if (isNewHandFtb == "True") {
                    emptyTitle = "客官莫急~新手专享复投宝投标中，请稍后查看债权列表信息......";
                }
                $("<tr><td colspan=\"6\" style=\"height:60px;\">" + emptyTitle + "</td></tr>").insertAfter('#InvestProjectList');
            }
        },
        cache: false
    });
}
//分页投资项目
function initInvestProjectPagin(recordCount) {
    var num_entries = recordCount;
    $("#divPagination1").pagination(num_entries, {
        callback: getSubscribesProject,
        items_per_page: pagesizeproject,
        num_display_entries: 5,
        current_page: parseInt(pageindexproject - 1),
        num_edge_entries: 2,
        link_to: "#InvestProjectList",
        prev_text: "上一页",
        next_text: "下一页",
        ellipse_text: "...",
        prev_show_always: true,
        next_show_always: true,
        renderer: "defaultRenderer",
        show_if_single_page: false,
        load_first_page: true
    });
} 

        


//==============加入记录
//获取加入列表分页
function getSubscribes(page_index, jq) {
    if (parseInt(pageindex - 1) == page_index) {
        return false;
    }
    pageindex = (page_index + 1);
    getJoinList();
    return false;
}

//获取加入记录
function getJoinList()
{
	var inId=$("#inId").text();
	alert("项目的编号为"+inId)
    $("#Subscribelist").nextAll().remove();
    $("<tr><td colspan=\"4\" align=\"center\">数据加载中...</td></tr>").insertAfter('#Subscribelist');
    $.ajax({
        async: true,
        type: "post",
        url: "./InvestList",
        dataType: "json",
        data: {inId: inId, pagesize: pagesize, pageindex: pageindex },
        success: function (jsonstr) {
            $("#Subscribelist").nextAll().remove();
            if (jsonstr.result == "1") {
                var json = jsonstr.list; 
                var html = new Array();
                for (var i = 0; i < json.lengthgetJoinList; i++) {
                    var rowclass =i>0 && i%2!=0?"style='background: rgb(247, 247, 247);'":""; 
                    var tempStr = "<tr " + rowclass + " ><td>" + (pagesize * (pageindex - 1) + i + 1) + "</td><td>" + json[i].users.telno + "</td><td>¥" + json[i].imoney + "</td><td>" + json[i].itime + "</td></tr>";
                    html.push(tempStr);
                } 
                $(html.join("")).insertAfter('#Subscribelist');
            } else { 
                $("<tr><td colspan=\"4\" align=\"center\">暂没有人加入...</td></tr>").insertAfter('#Subscribelist');
            }
        },
        cache: false
    });
}
//分页申购列表
function initSubscribesPagin(recordCount) {
    var theRecordCount = parseInt(recordCount);
    $("#divPagination").pagination(theRecordCount, {
        callback: getSubscribes,
        items_per_page: pagesize,
        num_display_entries: 5,
        current_page: parseInt(pageindex - 1),
        num_edge_entries: 2,
        link_to: "#Subscribelist",
        prev_text: "上一页",
        next_text: "下一页",
        ellipse_text: "...",
        prev_show_always: true,
        next_show_always: true,
        renderer: "defaultRenderer",
        show_if_single_page: false,
        load_first_page: true
    });
}

//==========倒计时
$(window).ready(function () {
    fnTimeCountDown();
});

function zero(n) {
    var n = parseInt(n, 10);
    if (n > 0) {
        if (n <= 9) {
            n = "0" + n;
        }
        return String(n);
    } else {
        return "00";
    }
}
function dv(tcount) {
    var sec = zero(tcount % 60);
    var mini = Math.floor((tcount / 60)) > 0 ? zero(Math.floor((tcount / 60)) % 60) : "00";
    var hour = Math.floor((tcount / 3600)) > 0 ? parseInt(tcount / 3600) % 24 : "00";
    var day = Math.floor((tcount / 86400)) > 0 ? parseInt(Math.floor((tcount / 86400))) : "0";
    return "<span style='color:white'>" + day + "</span>天<span style='color:white'>" + hour + "</span>小时<span style='color:white'>" + mini
    + "</span>分<span style='color:white'>" + sec + "</span>秒";
}

function fnTimeCountDown() {
    $(".timeSet").each(function () {
        var timecount = parseInt($(this).attr("count"));
        if (timecount >= 0) {
            $(this).html(dv(timecount));
            if (timecount == 0) {
                var parent = $(this).parent();
                var content = parent.html();
                if (content.indexOf("离开放还有") >= 0) {
                    parent.removeClass("buy-btn-time");
                    parent.html("马上加入");
                    if ($(".td-btn-1-gar") != undefined) {
                        $(".td-btn-1-gar").html("确认加入"); 
                        $(".td-btn-1-gar").removeClass("td-btn-1-gar").addClass("td-btn-1-or"); 
                        $(".submit-btn").click(function () { buyWePlan(); });
                        //$(".invest-input .red").click(function () {
                        //    MinusShares();
                        //});
                        ////增加
                        //$(".invest-input .add").click(function () {
                        //    PlusShare();
                        //});
                    }
                }
            }
            timecount = timecount - 1;
            $(this).attr("count", timecount);
        }
    });
    setTimeout("fnTimeCountDown()", 1000);
}
 
//=================弹出层 
function JoinWePlan(id, tendValue, title, applyType) {

    showDialWindowsWithoutBtn(newTitle, "<div style='color:gray;font-size:13px;line-height:21px;'><img src=\"//js.tuandai.com/images/default/loading24.gif\" />&nbsp;正在加载页面，请稍候...</div>");

    $.ajax({
        async: false,
        type: "get",
        url: '/pages/weplan/weplan_newdialog.aspx?productId=' + id + '&unit=' + tendValue + '&applyType=' + applyType,
        success: function (data) {
            //dialog.close();
            closeLoadingWindows();
            $("#td-art").html(data);
            isLoadWePop = true;
            showDiv();
        },
        cache: false
    });
}

/**新版样式弹框****************/
function dialogTip(str) {   
    showDialWindowsWithoutBtn(newTitle, str);
    $("#diallayer").show();
}

//弹出弹框
function showDialWindowsWithoutBtn(title, content) {
    showDialWindows(title + "<i class=\"close icons close-x icon abs\" onclick=\"colosenewWindow()\"></i>", content, null, null, null, null);
    }
///弹框,title:弹框标题
///content：弹框内容
/// okString ok按钮内容, okbtnEvent ok按钮触发事件, cancleString取消按钮内容, cancleEvent取消按钮触发事件
function showDialWindows(title, content, okString, okbtnEvent, cancleString, cancleEvent) {
    if ($("#divTiQian").length > 0)
        $("#divTiQian").html('').hide();
    if (title.indexOf("close icons") < 0)
        title += "<i class=\"close icons close-x icon abs\" onclick=\"colosenewWindow()\"></i>";
    $("#dial-window .title").html(title);
    $("#dial-window .body").html(content);
    if (okString != "null" && okString != null && okString.length > 0) {
        $("#dial-window-okbtn").html(okString);
        $("#dial-window-okbtn").show();
        }
    else {
        $("#dial-window-okbtn").hide();
        }

    $("#dial-window-okbtn").unbind("click").bind("click", function (e) {
        e.preventDefault();
        if (okbtnEvent)
        { okbtnEvent(); }
        });

    if (cancleString != "null" && cancleString != null && cancleString.length > 0) {
        $("#dial-window-canclebtn").html(cancleString);
        $("#dial-window-canclebtn").show();
        }
    else {
        $("#dial-window-canclebtn").hide();
        }
    $("#dial-window-canclebtn").unbind("click").bind("click", function (e) {
        e.preventDefault();
        if (cancleEvent)
        { cancleEvent(); }
        });
    $("#diallayer").show();
    $("#dial-window-btns").show();
    $("#dial-window").show();
    }
///关闭弹框
function closeLoadingWindows() {
    $("#dial-window .title").html("");
    $("#dial-window .body").html("");
    $("#dial-window-btns").hide();
    $("#layer").hide();
    $("#diallayer").hide();
    $("#dial-window").hide();
}