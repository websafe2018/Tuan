
var year, month, dlist, tindex = 1, enable = 1;
var x = 10; var y = -20;
$(window).ready(function () {
    var myDate = new Date();
    year = myDate.getFullYear();
    month = myDate.getMonth() + 1;
    $("#plus").click(function () {
        if (enable == 0) {
            return;
        }
        enable = 0;
        if (month == 12) {
            month = 1;
            year++;
        } else {
            month++;
        }
        InitCalender(0);
    });
    $("#minus").click(function () {
        if (enable == 0) {
            return;
        }
        if (month == 1) {
            month = 12;
            year--;
        } else {
            month--;
        }
        var myDate1 = new Date();
        var year1 = myDate1.getFullYear();
        if (year < year1 || (year == year1 && month < (myDate.getMonth() + 1))) {
            year = year1;
            month = myDate.getMonth() + 1;
            parent.showDialWindowsWithoutBtn('消息', '不支持查看当日以前的数据');
        } else {
            enable = 0;
            InitCalender(0);
        }
    });
        
    $("#changeTip").click(function () {
        if (tip.length > 1) {
            tindex++;
            if (tip.length < tindex) {
                tindex = 1;
            }
            $("#p1").html(tip[tindex - 1]);
            $("#p2").html(tip[tindex - 1]);
        }
    });
    $(".refresh").click(function () {
        InitCalender(1);
    })

    InitCalender(0);
    $("#tip").mouseenter(function (e) {
        $(".tip").css({ "top": (e.pageY + y) + "px", "left": (e.pageX - 100) + "px" }).show();
    }).mouseleave(function () {
        $(".tip").hide();
    });

    $("#tip1").mouseenter(function (e) {
        $(".tip1").css({ "top": (e.pageY + y) + "px", "left": (e.pageX - 100) + "px" }).show();
    }).mouseleave(function () {
        $(".tip1").hide();
    });
});

function guandiao() {
    $("#dahei").hide();
    $(".guanbi").hide();
    $("#clocktip").attr("src", "//js2.tdw.cn/images/member/clock.png");
    
    if (isClosedYellowTips != "1" && isEnterAutoInvestSetPage2!="1")
    {
        setTimeout("openYellowTips()", 500);
    }
}

function InitCalender(param) {
    var strmonth = month.toString();
    if (month < 10) {
        strmonth = "0" + strmonth;
    }
    var date = new Date(year.toString() + "/" + strmonth + "/01");
    var weekday = date.getDay();
    var curmonth = new Date(year.toString(), month, 0);
    var curdays = curmonth.getDate();
    var leavedays = curdays - (weekday == 0 ? 7 : 7 - weekday);
    var enddays = 7 - (leavedays % 7);
    $(".title").html(year + "年" + strmonth + "月");
    $.ajax({
        url: "/member/fundPlan/autoLoan",
        type: "post",
        dataType: "json",
        async: true,
        data: {
            Date: year + "-" + strmonth,
            endDates: enddays,
            reload: 1
        }, success: function (data) {
            if (data != null) {
                dlist = data;
                loadtab();
            } else {
                dlist = null;
                loadtab();
            }
            if (param == 1) {
                $(".rotates").removeClass("rotates");

                //刷新已收和待收图标
                var parent = window.parent;
                if (parent) {
                    var profitframe = parent.$("#profitframe");
                    if (profitframe) {
                        profitframe.attr("src", profitframe.attr("src"));
                    }
                }
            }
        }, error: function () {
            //InitCalender(0);
        }
    });
}
function fn_slidechange() {
    $("#biaoti").html("<a href='" + $(".hd ul li.on").attr("ref") + "' target='_blank' style='color:#fff;'>" + $(".hd ul li.on").attr("val") + "</a>");
}
function loadtab(list) {
    var strmonth = month.toString();
    if (month < 10) {
        strmonth = "0" + strmonth;
    }
    var date = new Date(year.toString() + "/" + strmonth + "/01");
    var weekday = date.getDay();
    var curmonth = new Date(year.toString(), month, 0);
    var curdays = curmonth.getDate();
    var lastmonth = new Date(year.toString(), month - 1, 0);
    var lastdays = lastmonth.getDate();
    var nextmonth = new Date(year.toString(), month + 1, 0);
    var nextdays = nextmonth.getDate();

    var html = [];
    html.push("<tr>");
    var index = 0;
    var row = 0;
    if (weekday > 0) {
        for (var i = lastdays - weekday + 1; i <= lastdays; i++) {
            html.push("<td style='color:#ddd;background:#fff;'>" + i + "</td>");
            index++;
        }
    }
    for (var i = 1; i <= curdays; i++) {
        if (index == 7) {
            row++;
            index = 0;
            html.push("</tr></tr>");
        }
        var t = year + "-" + strmonth + (i < 10 ? "-0" + i : "-" + i);
        var q = dlist && dlist.length > 0 ? Query(t) : {};
        var htm = q.html || '', d = q.amount || {};
        if (d['in'] && d['out']) {
            // 包含【回款】和【还款】
            html.push("<td  style='background:#C6E2FF;color:black'   val=" + t + " type='3'>" + i + htm + "</td>");
        } else if (d['in'] && !d['out']) {
            // 只有【回款】，没有【还款】
            html.push("<td  style='background:#B4EEB4;color:black'   val=" + t + " type='2'>" + i + htm + "</td>");
        } else if (!d['in'] && d['out']) {
            // 没有【回款】，只有【还款】
            html.push("<td  style='background:#FFAEB9;color:black'   val=" + t + " type='1'>" + i + htm + "</td>");
        } else {
            html.push("<td style='background:#fff;color:black;' type='0'>" + i + htm + "</td>");
        }
        index++;
    }

    var leavedays = curdays - (weekday == 0 ? 7 : 7 - weekday);
    var enddays = leavedays % 7 == 0 ? 0 : 7 - (leavedays % 7);
    if (enddays > 0) {
        var monthnext = month + 1;
        var yearnext = year;
        var strmonthnext = monthnext.toString();
        if (monthnext > 12) {
            yearnext += 1;
            monthnext = 1;
        }
        if (monthnext < 10) {
            strmonthnext = "0" + monthnext;
        }
        for (var i = 1; i <= enddays; i++) {
            //html.push("<td style='color:#ddd;background:#fff;'>" + i + "</td>");
            var t = yearnext + "-" + strmonthnext + (i < 10 ? "-0" + i : "-" + i);
            var q = dlist && dlist.length > 0 ? Query(t) : {};
            var htm = q.html || '', d = q.amount || {};
            if (d['in'] && d['out']) {
                // 包含【回款】和【还款】
                html.push("<td  style='background:#C6E2FF;color:black'   val=" + t + " type='3'>" + i + htm + "</td>");
            } else if (d['in'] && !d['out']) {
                // 只有【回款】，没有【还款】
                html.push("<td  style='background:#B4EEB4;color:black'   val=" + t + " type='2'>" + i + htm + "</td>");
            } else if (!d['in'] && d['out']) {
                // 没有【回款】，只有【还款】
                html.push("<td  style='background:#FFAEB9;color:black'   val=" + t + " type='1'>" + i + htm + "</td>");
            } else {
                html.push("<td style='background:#fff;color:#ddd;' type='0'>" + i + htm + "</td>");
            }
        }
        // for (var i = 1; i <= enddays; i++) {
        //     html.push("<td style='color:#ddd;background:#fff;'>" + i + "</td>");
        // }
        html.push("</tr>");
    } else {
        html.push("</tr>");
    }

    $("#tabContent").html(html.join(""));
   
    if ($("#tabContent tr").length == 6) {
    	$("#tabContent th").css({"height":"38px"})
        $("#tabContent td").css("height", "46px");//每个格子的高
    } else if ($("#tabContent tr").length == 5) {
    	$("#tabContent th").css({"height":"36px"})
        $("#tabContent td").css("height", "59px");
    } else {
    	$("#tabContent th").css({"height":"36px"})
        $("#tabContent td").css("height", "75px");
    }
    var color = "", background = "",myleft= 0,mytop= 0,$this='';
    $("td").mouseenter(function (e) {
        background = $(this).css("background");
        color = $(this).css("color");
        $(this).css({ "background": "#ff9933", "color": "#fff", "font-size": "22px", "vertical-align": "middle", "padding-top": "0px", "text-align": "center" });
        if ($(this).find("div") != undefined && $(this).find("div").html() != null) {
            $("#tooltip").html($(this).find("div").html());
            if ($(this).offset().left <= 500) {
                myleft = $(this).offset().left + 20;
            } else {
                myleft = $(this).offset().left - $("#tooltip").width() + $(this).width() - 30;
            }
            if ($(this).offset().top < 300) {
                mytop = $(this).offset().top + 20
            } else {
                mytop = $(this).offset().top + $(this).height() - 30 - $('#tooltip').height();
            }
            $("#tooltip").css({ "top": mytop + "px", "left": myleft + "px" }).show();//提示框

        }
    }).mouseleave(function () {
        if (background == "") {
            var t = $(this).attr("type");
            switch (t) {
                case "0":
                    background = "#fff";
                    break;
                case "1":
                    background = "#FFAEB9";
                    break;
                case "2":
                    background = "#B4EEB4";
                    break;
                case "3":
                    background = "#C6E2FF";
                    break;
            }
        }
        $("#tooltip").hide();
        $(this).css({ "background": background, "color": color, "font-size": "12px", "vertical-align": "top", "padding-top": "5px", "text-align": "right" });
        $this = $(this);        
    });
    $("#tooltip").mouseenter(function () {
        $(this).show();
        if ($this == undefined || $this=='') {
            return;
        }
        $this.css({'background':'#ff9933'});
    }).mouseleave(function () {
        $(this).hide();
        if ($this == undefined || $this == '') {
            return;
        }
        $this.css({ 'background': background });
    });
    setTimeout("fnRestart()", 500);
}


function Query(date) {
    var d = "", obj = {};
    for (var i = 0; i < dlist.length; i++) {
        if (dlist[i].cycDate.toString() == date.toString()) {
            var sDate = dlist[i].cycDate.toString();
            d = "<div>";
            if (parseFloat(dlist[i].inAmount) > 0 || parseFloat(dlist[i].outAmount) > 0) {
                d += "<span>P2P</span>";
            }
            if (parseFloat(dlist[i].inAmount) > 0) {
                d += "<br/><a href='" + __p2pWebsiteUrl + "/member/account_loanReturnPlanDetail.aspx?date=" + sDate + "' target='_blank'>回款：" + fmoney(parseFloat(dlist[i].inAmount).toFixed(2), 2) + "元</a>";
                obj['in'] = 1;
            }
            if (parseFloat(dlist[i].outAmount) > 0) {
                d += "<br/><a href='" + __p2pWebsiteUrl + "/member/account_borrowReturnPlanDetail.aspx?date=" + sDate + "' target='_blank'>还款：" + fmoney(parseFloat(dlist[i].outAmount).toFixed(2), 2) + "元</a>";
                obj['out'] = 1;
            }
            if (parseFloat(dlist[i].dqInAmount) > 0 || parseFloat(dlist[i].dqOutAmount) > 0) { 
                if (d.indexOf("P2P") != -1)
                    d += '<br/>'; 
                d += "<span>定期</span>";
            }
            if (parseFloat(dlist[i].dqInAmount) > 0) {
                d += "<br/><a href='" + __DQWebsiteUrl + "/member/account_loanReturnPlanDetail.aspx?date=" + sDate + "' target='_blank'>回款：" + fmoney(parseFloat(dlist[i].dqInAmount).toFixed(2), 2) + "元</a>";
                obj['in'] = 1;
            }
            if (parseFloat(dlist[i].dqOutAmount) > 0) {
                d += "<br/><a href='" + __DQWebsiteUrl + "/member/account_borrowReturnPlanDetail.aspx?date=" + sDate + "' target='_blank'>还款：" + fmoney(parseFloat(dlist[i].dqOutAmount).toFixed(2), 2) + "元</a>";
                obj['out'] = 1;
            }
            if (parseFloat(dlist[i].zxInAmount) > 0 || parseFloat(dlist[i].zxOutAmount) > 0) {
                if (d.indexOf("P2P") != -1 || d.indexOf("定期") != -1)
                    d += '<br/>';
                d += "<span>智享</span>";
            }
            if (parseFloat(dlist[i].zxInAmount) > 0) {
                d += "<br/><a href='" + __ZXWebsiteUrl + "/member/zshare/account_loanReturnPlanDetail.aspx?date=" + sDate + "' target='_blank'>回款：" + fmoney(parseFloat(dlist[i].zxInAmount).toFixed(2), 2) + "元</a>";
                obj['in'] = 1;
            }
            if (parseFloat(dlist[i].zxOutAmount) > 0) {
                d += "<br/><a href='" + __ZXWebsiteUrl + "/member/account_zxborrowReturnPlanList.aspx?date=" + sDate + "' target='_blank'>结清：" + fmoney(parseFloat(dlist[i].zxOutAmount).toFixed(2), 2) + "元</a>";
                obj['out'] = 1;
            }
            d += "</div>";
            break;
        }
    }
    return {html: d, amount: obj};
}

 
function ReadData(syear, data) {
    var dt1 = new Array();
    var dt2 = new Array();
    var t = "", s = false;
    for (var i = 1; i <= 12; i++) {
        t = syear + (i < 10 ? "-0" + i : "-" + i);
        s = false;
        if (data != null && data.length > 0) {
            for (var j = 0; j < data.length; j++) {
                if (data[j].cycDate.toString() == t.toString()) {
                    s = true;
                    dt1.push(Round2(data[j].recAmount));
                    dt2.push(Round2(data[j].dueAmount));
                    break;
                }
            }
        }
        if (s != true) {
            dt1.push(0);
            dt2.push(0);
        }
    } 
    setTimeout("fnRestart()", 500);
}

function fnRestart() {
    enable = 1;
}
 

//提示信息showtips
function ShowTips(){
    $("#ny-tip").mouseenter(function () {
        $(this).parent().find("#ny-showtips").show();
    }).mouseleave(function () {
        $(this).parent().find("#ny-showtips").hide();
    });
};
//ShowTips();