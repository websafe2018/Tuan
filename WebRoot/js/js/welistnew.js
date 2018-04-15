var pageCurrent = 1;
var type = 0;
var prgArry = [];
var options = {
    useEasing: true,
    useGrouping: true,
    separator: ',',
    decimal: '.',
    prefix: '',
    suffix: ''
}; 
var scrollCount = true;
$(window).scroll(function () {
    if ($(window).scrollTop() >= 300) {
        $('.progess-wrap').find('.pro').addClass('do-animation');
        if (scrollCount) {
            count();
            scrollCount = false;
        }
    }
})
$(function () {
    limitInt($("#txtPreAmount"));
    HandlePageing(0, pageCurrent);
    //往期记录右侧
    $('.screen').hover(function () { $(this).find('dd').stop().slideDown(200); }, function () { $(this).find('dd').stop().slideUp(200); });
   // $('.we-list-data-bd').find('tr:odd').css({ background: "#f6f6f6" });
    fnTimeCountDown();
    $('.screen').find('dd').click(function () { 
        type = parseInt($(this).attr("datatype"));
        pageCurrent = 1;
        $("#viewWeAll").html($(this).text()+"<i class=\"re_invent_icon re-invent-list-arrow\"></i>");
        HandlePageing(type, pageCurrent)
    });

    //计算收益
    $('#btnCount').click(function () { 
        calcExpectProfit(); 
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
});
function count() {
    var prgList = $(".profitprog");
    prgArry = [];
    $.each(prgList, function (i, val) {
        var strAmount = $(val).text().replace(",", "").replace(",", "").replace(",", "");
        var prgObj = new CountUp($(val).attr("id"), 0, parseFloat(strAmount), 2, 1, options);
        prgArry.push(prgObj);
    });
    $.each(prgArry, function (i, val) {
        if(val!=null)
          val.start();
    });  
}
function calcExpectProfit() {
    $('#btnCount').unbind("click");
    $('#btnCount').removeClass("td-btn-1-or").addClass("td-btn-1-gar");

    var invAmount = $("#txtPreAmount").val();
    if (invAmount == undefined || invAmount == "") {
        $("#preAmount_error").html("请输入投资金额");
        $("#dvPreAmount").addClass("red-border-input");
        $("#preAmount_error").show();
        return;
    }
    invAmount = parseFloat(invAmount);
    if (invAmount > 100000000) {
        $("#preAmount_error").html("投资金额不能超过1亿");
        $("#dvPreAmount").addClass("red-border-input");
        $("#preAmount_error").show();
        return;
    }
    $("#preAmount_error").hide();
    $("#dvPreAmount").removeClass("red-border-input");
    $('.progess-wrap').find('.pro').removeClass("do-animation");

    var maxInterest = 0;
    var weList = $("#wrap").find("li");
    $.each(weList, function (i, val) {
        var profitDv = $(val).find(".profit");
        var deadline = parseInt(profitDv.attr("deadline"));
        var yearrate = parseFloat(profitDv.attr("yearrate"));
        var interest = GetInterestAmount(invAmount, deadline, yearrate);
        $(val).find(".profitprog").html(interest);
        if (maxInterest < interest)
            maxInterest = interest;
    });
    $.each(weList, function (i, val) {
        var progessSp = $(val).find(".progess");
        var interest = parseFloat($(val).find(".profitprog").html());
        var fwidth = Math.floor(Number(interest / maxInterest) * 100) / 100;
        fwidth = (fwidth * 100);
        progessSp.css({ width: fwidth + "%" });
    });
    count(); 

    setTimeout(function () { $('.progess-wrap').find('.pro').addClass('do-animation'); }, 200);
    setTimeout(function () {       
        $('#btnCount').bind("click", function () {
            calcExpectProfit();
        });
        $('#btnCount').removeClass("td-btn-1-gar").addClass("td-btn-1-or");
    }, 800);
}

function GetInterestAmount(amount, deadline, interestRate) {
    var interestAmount = 0.00;
    if (amount == "" || amount == "0" || deadline == "" || deadline == "0" || interestRate == "" || interestRate == "0")
        return interestAmount;

    interestAmount = amount * interestRate * 0.01 / 12 * deadline;
    interestAmount = Math.floor(Number(interestAmount) * 100) / 100;

    return interestAmount;
}
//计算剩余时间
function CalRemain(webegindate, orderCompleteDate) {
    var begindate = new Date(webegindate.replace(/\-/g, "/"));
    var enddate;
    if (new Date(orderCompleteDate.replace(/\-/g, "/")).getYear() != 1) {
        enddate = new Date(orderCompleteDate.replace(/\-/g, "/"));
        // var resultDate;
        var diff = enddate - begindate;
        var day = 0;
        var hours = 0;
        var minutes = 0;
        var seconds = 0;
        if (diff > 0) {
            day = parseInt(diff / (24 * 3600 * 1000));
            var leave1 = diff % (24 * 3600 * 1000)    //计算天数后剩余的毫秒数
            hours = Math.floor(leave1 / (3600 * 1000))
            var leave2 = leave1 % (3600 * 1000)        //计算小时数后剩余的毫秒数
            minutes = Math.floor(leave2 / (60 * 1000))
            //计算相差秒数
            var leave3 = leave2 % (60 * 1000)      //计算分钟数后剩余的毫秒数
            seconds = Math.round(leave3 / 1000)
        }
        if (day == 0 && hours == 0 && minutes == 0 && seconds == 0) {
            return "";
        }
        if (day > 0) {
            return day + "天" + hours + "小时" + minutes + "分" + seconds + "秒";
        }
        else {
            return hours + "小时" + minutes + "分" + seconds + "秒";
        }
    } else {
        return "- 小时 - 分- 秒";
    }
}

//计算往期列表进度
function CalculateProgress(totalQty, orderQty) {
    var total = 0;
    var qty = 0;
    if (isNaN(totalQty)) {
        total = 0;
    }
    if (isNaN(orderQty)) {
        qty = 0;
    }
    total = parseFloat(totalQty);
    qty = parseFloat(orderQty);
    if (total == 0) {
        return 0;
    }
    if (total == qty && qty > 0) {
        return 100;
    }
    var result = ((qty / total) * 100);
    if (result > 0 && result <= 0.1) {
        return 0.1;
    }
    if (result.toString().indexOf('.') > 0) {
        return result.toString().substr(0, result.toString().indexOf('.') + 2);
    } else {
        return result.toFixed(0);
    }
}

function ProductStatus(startDate, investCompleteDate) {
    var status = "";
    if ((investCompleteDate != null && new Date(investCompleteDate.replace(/\-/g, "/")).getYear() != 1) || endDate < referenceTime) {
        status = "已结束";
    }
    else {
        var begindate = new Date(startDate.replace(/\-/g, "/"));
        var endDate = new Date(begindate.getTime() + 86400000 * 5);
        var referenceTime = new Date();
        if (endDate < referenceTime) {
            status = "已结束";
        } else {
            status = "进行中";
        }
    }
    return status;
}

function HandleMoney(amount) {
    var totalAmount = 0;
    if (isNaN(amount)) {
        return totalAmount;
    }
    totalAmount = parseInt(amount);
    return totalAmount >= 10000 ? parseFloat(totalAmount / 10000) + "万" : totalAmount
}
//翻页
function PageBack(page_index, jq) {
    if (parseInt(pageCurrent - 1) == page_index) {
        return false;
    }
    pageCurrent = (page_index + 1);
    HandlePageing(type, pageCurrent);
}
//分页
function initPaging(recordCount, pageelId) {
    var num_entries = recordCount;
    $("#" + pageelId).pagination(num_entries, {
        callback: PageBack,
        items_per_page: 10,
        num_display_entries: 5,
        current_page: (pageCurrent - 1),
        num_edge_entries: 2,
        link_to: "#a",
        prev_text: "上一页",
        next_text: "下一页",
        ellipse_text: "...",
        prev_show_always: true,
        next_show_always: true,
        renderer: "defaultRenderer",
        show_if_single_page: true,
        load_first_page: true
    });
}
function HandlePageing(type, pageindex) {
    $.ajax({
        async: false,
        cache: false,
        type: "post",
        url: "/pages/ajax/invest_list.ashx",
        dataType: "json",
        data: {
            Cmd: "GetProductPageList",
            pagesize: 10,
            pageindex: pageindex,
            type: type
        },
        success: function (json) {
            $("#tblist").remove();
            var table = $("#tblist");
            var bindtrandtd = "<table id=\"tblist\"  width=\"100%\" class=\"past\"><tr style=\"background:#f7f7f7;\"><th width=\"23%\">计划名称</th>" +
                                "<th width=\"12%\">计划金额</th>" +
                                "<th width=\"10%\">预期年化利率</th>" +
                                "<th width=\"10%\">加入人次</th>" +
                                "<th width=\"15%\">满额时间</th>" +
                                "<th width=\"11%\">优先投标次数</th>" +
                                "<th width=\"11%\">投标完成率</th>" +
                                "<th width=\"8%\">状态</th></tr>";
           
            if (json.ProductList.length == 0) {
                bindtrandtd += "<tr><td colspan='8'>暂无往期记录，请稍后再来查看......</td></tr>";
            } else {
                for (var i = 0; i < json.ProductList.length; i++) {
                    var style = i % 2 != 0 ? "background:#f7f7f7;" : "";
                    if (json.ProductList[i].ProductName.indexOf("分期宝") > -1) {
                        bindtrandtd += "<tr style=\"" + style + "\"><td><a target=\"_blank\" href=\"/pages/weplan/wefqb_detail.aspx?id=" + json.ProductList[i].Id + "\">" + json.ProductList[i].ProductName + "</a></td>"
                    }
                    else {
                        bindtrandtd += "<tr style=\"" + style + "\"><td><a target=\"_blank\" href=\"/pages/weplan/weproduct_detail.aspx?id=" + json.ProductList[i].Id + "\">" + json.ProductList[i].ProductName + "</a></td>"
                    }

                    bindtrandtd += "<td>￥" + HandleMoney(json.ProductList[i].PlanAmount) + "</td>";
                    if (json.ProductList[i].MinYearRate != "0") {
                        bindtrandtd += "<td class=\"font-orange\">" + json.ProductList[i].MinYearRate + "-" + json.ProductList[i].YearRate + "%</td>";
                    }
                    else {
                        bindtrandtd += "<td class=\"font-orange\">" + json.ProductList[i].YearRate + "%</td>";
                    }
                    bindtrandtd += "<td>" + json.ProductList[i].OrderCount + "</td>" +
                                        "<td>" + CalRemain(json.ProductList[i].StartDate, json.ProductList[i].OrderCompleteDate) + "</td>" +
                                        "<td>" + json.ProductList[i].TenderNumber + "</td>" +
                                        "<td>" + CalculateProgress(json.ProductList[i].OrderQty * json.ProductList[i].UnitAmount, json.ProductList[i].InvestAmount) + "%</td>" +
                                        "<td>" + json.ProductList[i].EndStatusStr + "</td></tr>";
                }
            }
            bindtrandtd += "</table>"
            $("#welist").html(bindtrandtd);
            if (json.total == 0) {
                $("#divPagination").hide();
            } else {
                $("#divPagination").show();
                initPaging(json.total, "divPagination");
            }
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
        }
    }); 
}
 
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
	hour += day*24;
    return "<span style='color:white'>" + hour + "</span>小时<span style='color:white'>" + mini + "</span>分<span style='color:white'>" + sec + "</span>秒";
}

function fnTimeCountDown() {
    $(".timeSet").each(function () {
        var timecount = parseInt($(this).attr("count"));
        if (timecount >= 0) {
            $(this).html(dv(timecount));
            if (timecount == 0) { 
                $(this).parent().html("马上加入").css("font-size","18px"); 
            }
            timecount = timecount - 1;
            $(this).attr("count", timecount);
        }
    });
    setTimeout("fnTimeCountDown()", 1000);
}