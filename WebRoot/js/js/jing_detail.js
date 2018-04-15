//申购页面函数
var pagesize = "10";
var pageindex = "1";

$(function () {
    //加载分页
    initSubscribesPagin($("#divPagination").attr("totalcount"));
    initSubscribeDetailPagin($("#divDetailPagination").attr("totalcount"));
    SubscribeList();
    SubscribeDetailList();
})


//加载申购列表
function SubscribeList() {
    $("#Subscribelist").nextAll().remove();
    $("<tr><td colspan=\"6\" align=\"center\">数据加载中...</td></tr>").insertAfter('#Subscribelist');
    jQuery.ajax({
        async: true,
        type: "post",
        url: "/ajaxCross/ajax_invest.ashx",
        dataType: "json",
        data: { Cmd: "GetSubscribePageList", projectid: pId, pagesize: pagesize, pageindex: pageindex },
        success: function (jsonstr) {
            $("#Subscribelist").nextAll().remove();
            var html = new Array();
            var str = "";
            if (jsonstr.result == "1") {
                var temp1 = pagesize * (pageindex - 1);
                var autoDesc = "";
                for (var i = 0; i < jsonstr.list.length; i++) {
                    if (jsonstr.list[i].TenderMode == "5") {
                        autoDesc = "<img src='//js.tuandai.com/images/investlist/invest_detail/icon_toubiao_smart.png'>";
                    } else if (jsonstr.list[i].TenderMode == "4") {
                        autoDesc = "<img src='//js.tuandai.com/images/investlist/invest_detail/icon_toubiao_zidong.png'>";
                    } else if (jsonstr.list[i].TenderMode == "1") {
                        autoDesc = "<img src='//js.tuandai.com/images/investlist/invest_detail/icon_toubiao_pc.png'>";
                    }
                        //                    else if (jsonstr.list[i].TenderMode == "7") {
                        //                        autoDesc = "<img src='//js.tuandai.com/images/investlist/invest_detail/icon_toubiao_iphone.png'>";
                        //                    } else if (jsonstr.list[i].TenderMode == "8") {
                        //                        autoDesc = "<img src='//js.tuandai.com/images/investlist/invest_detail/icon_toubiao_Android.png'>";
                        //                    } 
                    else {
                        autoDesc = "<img src='//js.tuandai.com/images/investlist/invest_detail/icon_toubiao_yidongduan.png'>";
                    }
                    str = "<tr>" +
                          "<td>" + parseInt(parseInt(temp1) + parseInt(i + 1)) + "</td>" +
                          "<td>" + jsonstr.list[i].NickName + "</td>" +
                          "<td><span class=\"c_ff6600\">￥" + jsonstr.list[i].Amount + "</span></td>" +
                          "<td>" + autoDesc + "</td>" +
                          "<td>" + jsonstr.list[i].AddDate + "</td>" +
                        "</tr>"
                    html.push(str);
                }
                $(html.join("")).insertAfter('#Subscribelist');
                if (parseInt(jsonstr.totalcount) != parseInt($("#divPagination").attr("totalcount"))) {
                    initSubscribesPagin(jsonstr.totalcount);
                }
            }
            else {
                $("<tr><td colspan=\"6\" align=\"center\">暂没有人投标...</td></tr>").insertAfter('#Subscribelist');
            }
        }
    });
}

//分页申购列表
function initSubscribesPagin(recordCount) {
    var num_entries = recordCount;
    $("#divPagination").pagination(num_entries, {
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

//获取投资人列表
function getSubscribes(page_index, jq) {
    if (parseInt(pageindex - 1) == page_index) {
        return false;
    }
    pageindex = (page_index + 1);
    SubscribeList();
    return false;
}

//加载还款记录列表
function SubscribeDetailList() {
    $("#subscribedetaillist").nextAll().remove();
    $("<tr><td colspan=\"6\" align=\"center\">数据加载中...</td></tr>").insertAfter('#subscribedetaillist');
    jQuery.ajax({
        async: true,
        type: "post",
        url: "/ajaxCross/ajax_invest.ashx",
        dataType: "json",
        data: { Cmd: "GetSubscribeDetailList", projectid: pId, pagesize: pagesize, pageindex: pageindex },
        success: function (jsonstr) {
            $("#subscribedetaillist").nextAll().remove();
            var html = new Array();
            var str = "";
            if (jsonstr.result == "1") {
                var temp1 = pagesize * (pageindex - 1);
                var autoDesc = "";
                for (var i = 0; i < jsonstr.list.length; i++) {
                    str = "<tr>" +
                          "<td>" + parseInt(parseInt(temp1) + parseInt(i + 1)) + "</td>" +
                          "<td>" + jsonstr.list[i].CycDate + "</td>" +
                          "<td class=\"c_ff6600\">￥" + jsonstr.list[i].TotalAmount + "</td>" +
                          "<td>" + jsonstr.list[i].AmountInterest + "</td>" +
                          "<td>" + jsonstr.list[i].Status.replace("待还款", "待结清").replace("已还款", "已结清") + "</td>" +
                        "</tr>"
                    html.push(str);
                }
                $(html.join("")).insertAfter('#subscribedetaillist');
                if (parseInt(jsonstr.totalcount) != parseInt($("#divDetailPagination").attr("totalcount"))) {
                    initSubscribeDetailPagin(jsonstr.totalcount);
                }
            }
            else {
                $("<tr><td colspan=\"7\" align=\"center\">暂没有还款记录...</td></tr>").insertAfter('#subscribedetaillist');
            }
        }
    });
}

//还款记录列表分页
function initSubscribeDetailPagin(recordCount) {
    var num_entries = recordCount;
    $("#divDetailPagination").pagination(num_entries, {
        callback: getSubscribeDetail,
        items_per_page: pagesize,
        num_display_entries: 5,
        current_page: parseInt(pageindex - 1),
        num_edge_entries: 2,
        link_to: "#subscribedetaillist",
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


//获取投资人列表
function getSubscribeDetail(page_index, jq) {
    if (parseInt(pageindex - 1) == page_index) {
        return false;
    }
    pageindex = (page_index + 1);
    SubscribeDetailList();
    return false;
}

//加载用户基本信息
function LoadUserInfo() {
    jQuery.ajax({
        async: true,
        type: "post",
        url: "/ajaxCross/ajax_invest.ashx",
        dataType: "json",
        data: { Cmd: "GetBorrowUserInfo", BorrowUserID: borrowUserId },
        success: function (jsonstr) {
            if (jsonstr.result == "1") {
                if (jsonstr.msg.UserTypeId == "2") {
                    $("#bandCity").text("所在城市：" + (jsonstr.msg.BankCity || ""));
                    $("#age").text("成立时间：" + (jsonstr.msg.Age || "")+"年");
                    $("#nickName").hide();
                    $("#marriage").hide();
                    $("#sex").hide();
                    $("#officeDomain").hide();
                    $("#salary").hide();
                    $("#haveHouse").hide();
                    $("#graduation").hide();
                    $("#position").hide();
                    $("#haveCar").hide();
                    $("#bandCity").show();
                    $("#age").show();
                    $("#officeScale").show();
                }
                else {
                    $("#bandCity").text("工作城市：" + (jsonstr.msg.BankCity || ""));
                    $("#age").text("年龄：" + (jsonstr.msg.Age || ""));
                    $("#nickName").show();
                    $("#marriage").show();
                    $("#sex").show();
                    $("#officeDomain").show();
                    $("#salary").show();
                    $("#haveHouse").show();
                    $("#graduation").show();
                    $("#position").show();
                    $("#haveCar").show();
                    $("#bandCity").show();
                    $("#age").show();
                    $("#officeScale").show();
                }
                $("#a1").attr("UserTypeId", jsonstr.msg.UserTypeId);
                $("#nickName").text("昵称：" + (jsonstr.msg.NickName || ""));

                $("#sex").text("性别：" + (jsonstr.msg.Sex || ""));

                $("div.bid_xygrade").text(jsonstr.msg.CreditRatingName || "")
            }
            else {

            }
        }
    });
}


//加载用户扩展信息
function LoadUserInfoExt() {
    jQuery.ajax({
        async: true,
        type: "post",
        url: "/ajaxCross/ajax_invest.ashx",
        dataType: "json",
        data: { Cmd: "GetBorrowUserInfoExt", BorrowUserID: borrowUserId },
        success: function (jsonstr) {
            if (jsonstr.result == "1") {
                if (jsonstr.userInfoExt.length > 0) {
                    $("#marriage").text("婚姻状况：" + (jsonstr.userInfoExt[0].Marriage || ""));
                    $("#officeDomain").text("所属行业：" + (jsonstr.userInfoExt[0].OfficeDomain || ""));
                    $("#salary").text("收入范围：" + (jsonstr.userInfoExt[0].Salary || ""));
                    $("#officeScale").text("公司规模：" + (jsonstr.userInfoExt[0].OfficeScale || ""));
                    $("#haveHouse").text("有无房产：" + (jsonstr.userInfoExt[0].IsHaveHouse || ""));
                    $("#graduation").text("学历：" + (jsonstr.userInfoExt[0].Graduation || ""));
                    $("#position").text("岗位职位：" + (jsonstr.userInfoExt[0].Position || ""));
                    $("#haveCar").text("有无车产：" + (jsonstr.userInfoExt[0].IsHaveCar || ""));
                }
            }
        }
    });
}

//加载用户扩展信息
function LoadCreditInfo() {
    jQuery.ajax({
        async: true,
        type: "post",
        url: "/ajaxCross/ajax_invest.ashx",
        dataType: "json",
        data: { Cmd: "GetZcbCreditInfo", BorrowUserID: borrowUserId },
        success: function (jsonstr) {
            if (jsonstr.result == "1") {
                $("#vipLevel").text("会员等级（级）：" + (jsonstr.model.VipLevel || ""));
                $("#prepaymentTime").text("提前结清（期）：" + jsonstr.model.PrepaymentTime);
                $("#onTimepayTime").text("准时结清（期）：" + jsonstr.model.OnTimepayTime);
                $("#dueOutPAndI").text("待还本息（元）：" + (jsonstr.model.DueOutPAndI || "0.00"));
                $("#totalOverdue").text("逾期未还（元）：" + (jsonstr.model.TotalOverdue || "0.00"));
                $("#overdueNum").text("逾期期数（期）：" + jsonstr.model.overdueNum);
                $("#overdueAdvanceTime").text("逾期垫付（期）：" + jsonstr.model.OverdueAdvanceTime);
            }
            else {

            }
        }
    });
}


