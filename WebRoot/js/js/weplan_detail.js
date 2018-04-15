var newTitle = '团贷网提醒您：';
var oldpid = "", tendval = "", protitle = "";
//申购页面函数
var pagesize = "15";
var pageindex = "1";
var pageindex1 = "1";
isWePlanProject = true; //标记在We计划详情页

$(function () {
    //20160317分期宝特点 滑过效果
    $("#traitCon .x-icons").hover(function(){
        $(this).toggleClass("hover");
    });

    //正合普惠介绍
    $("#weSource .s-item a").hover(function(){
        $(this).find("span").toggleClass("arrow-right");
    });
    //正合普惠介绍 弹窗
    $("#teambtn").click(function(){
        $(".zh-layer").show();
        $(".zh-win-alert").css({"visibility":"visible"});
        jQuery(".picScroll-left").slide({titCell:".hd ul",mainCell:".bd ul",autoPage:true,effect:"left",autoPlay:false,vis:1,defaultIndex:0,trigger:"click"});
    });
    $("#servicebtn").click(function(){
        $(".zh-layer").show();
        $(".zh-win-alert").css({"visibility":"visible"});
        jQuery(".picScroll-left").slide({titCell:".hd ul",mainCell:".bd ul",autoPage:true,effect:"left",autoPlay:false,vis:1,defaultIndex:1,trigger:"click"});

    });
    $("#businessbtn").click(function(){
        $(".zh-layer").show();
        $(".zh-win-alert").css({"visibility":"visible"});
        jQuery(".picScroll-left").slide({titCell:".hd ul",mainCell:".bd ul",autoPage:true,effect:"left",autoPlay:false,vis:1,defaultIndex:2,trigger:"click"});
    });
    $("#windbtn").click(function(){
        $(".zh-layer").show();
        $(".zh-win-alert").css({"visibility":"visible"});
        jQuery(".picScroll-left").slide({titCell:".hd ul",mainCell:".bd ul",autoPage:true,effect:"left",autoPlay:false,vis:1,defaultIndex:3,trigger:"click"});


    });
    $(".zh-close").click(function(){
        $(".zh-layer").hide();
        $(".zh-win-alert").css({"visibility":"hidden"});
        jQuery(".picScroll-left").slide({titCell:".hd ul",mainCell:".bd ul",autoPage:true,effect:"left",autoPlay:false,vis:1,defaultIndex:4,trigger:"click"});


    });

    //tips 信息
    $(".ask-icon").mouseover(function () {
        $(this).parent().find(".we-showtips").show();
    }).mouseout(function(){
        $(this).parent().find(".we-showtips").hide();
    });

    //if (isFenQiBao == "True") {
    //    InvestProjectList();
    //}

    //表格斑马线
    $(".tablebox tr:even").addClass("gray");
    //$(".tablebox-1 tr:even").addClass("gray");



    //限制输入数字
    limitInt($("#jiek_Share"));
    //加载分页
    initSubscribesPagin($("#divPagination").attr("totalcount"));

    
    
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
        $("#profit").html(parseFloat(parseFloat(lowerunit) * parseInt(maxShares) * parseInt(deadline) * parseFloat(rate) / 100 / 12).toFixed(2));
        $("#payamount").html((parseFloat(lowerunit) * maxShares).toFixed(2));
        if (isFenQiBao == "True" && $("#benjin").attr("checked"))
            $("#profit").html(parseFloat(parseFloat(lowerunit) * maxShares * parseInt(deadline) * parseFloat(rate2) / 100 / 12).toFixed(2));
    });

    //加入按钮事件
    $("#btnSubscribe").click(function () {       
        buyWePlan();
    });
    //本息复投
    $("#benxi").click(function () {
        $("#profitRate").html(rate);
        var fenshu = parseInt($("#jiek_Share").val());
        $("#profit").html(parseFloat(lowerunit * fenshu * rate / 100 * deadline / 12).toFixed(2));
    });
    //本金复投
    $("#benjin").click(function () {
        $("#profitRate").html(rate2);
        var fenshu = parseInt($("#jiek_Share").val());
        $("#profit").html(parseFloat(lowerunit * fenshu * rate2 / 100 * deadline / 12).toFixed(2));
    });
    Calculate(2);
});

function PlusShare() {
    var obj = $("#jiek_Share");
    var currentShare = $(obj).val().replace("份", "").replace(" ", "");
    var maxShares = parseInt($(obj).attr("maxshares"));
    if (currentShare >= maxShares)
        return; 
    if (currentShare != $(obj).attr("maxShares")) {
        $(obj).val(parseInt(currentShare) + 1);
        $("#profit").html(parseFloat(parseFloat(lowerunit) * (parseInt(currentShare) + 1) * parseInt(deadline) * parseFloat(rate) / 100 / 12).toFixed(2));
        $("#payamount").html((parseFloat(lowerunit) * (parseInt(currentShare) + 1)).toFixed(2));

        if (isFenQiBao == "True" && $("#benjin").attr("checked"))
            $("#profit").html(parseFloat(parseFloat(lowerunit) * (parseInt(currentShare) + 1) * parseInt(deadline) * parseFloat(rate2) / 100 / 12).toFixed(2));
    }
}

function MinusShares() {
    var obj = $("#jiek_Share");
    var currentShare = $(obj).val().replace("份", "").replace(" ", "");
     
    if (currentShare > 1) {
        $(obj).val(parseInt(currentShare) - 1);
        $("#profit").html(parseFloat(parseFloat(lowerunit) * (parseInt(currentShare) - 1) * parseInt(deadline) * parseFloat(rate) / 100 / 12).toFixed(2));
        $("#payamount").html((parseFloat(lowerunit) * (parseInt(currentShare) - 1)).toFixed(2)); 
        if (isFenQiBao == "True" && $("#benjin").attr("checked"))
            $("#profit").html(parseFloat(parseFloat(lowerunit) * (parseInt(currentShare) - 1) * parseInt(deadline) * parseFloat(rate2) / 100 / 12).toFixed(2));
    }
}
 

function buyWePlan() {
    if ($("#ckbAgree").attr("checked") == "checked") {
        var tendValue = $("#jiek_Share").val().replace(" ", "");
        var applyType = 0;
        if (isFenQiBao == "True") {
            if ($("#benxi").attr("checked"))
                applyType = 1;
            if ($("#benjin").attr("checked"))
                applyType = 2;
        }
        if (!isCookieLogin()) { 
            oldpid = productId;
            tendval = tendValue
            protitle = $("#btnSubscribe").attr("title");
            fnLogin();
        }
        else {
            try {
                //-------存管通验证---2016-11-17----
                if (IsOpenCGT=="1" && isOpenCgtSubWe == "1" && !checkIsOpen("touzi"))
                    return false;
                //-------存管通验证结束----------
            } catch (e) {

            }
            JoinWePlan(productId, parseInt(tendValue), $("#btnSubscribe").attr("title"), applyType);
        }
    } else {
        dialogTip("<div style='color:gray;font-size:13px;line-height:21px;'>您还未阅读并同意服务协议！</div>");
        //art.dialog({
        //    title: '提示',
        //    width: 300,
        //    zIndex: 9999999,
        //    content: '您还末阅读并同意服务协议'
        //});
    }
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
    //if (isFenQiBao == "True" && parseInt(txt) < 100) {
    //    txt = "100";
    //    $("#jiek_Share").val("100");
    //}
        
    if (txt.replace(" ", "") == "") {
        if (type == 2) {
            $("#jiek_Share").val("1");
            $("#profit").html(GetMoney((parseFloat(lowerunit) * parseInt(deadline) * parseFloat(rate) / 100 / 12).toFixed(2)));
            $("#payamount").html(lowerunit);
        } else {
            $("#profit").html("0.00");
            $("#payamount").html("0.00");
        }
    } else if (txt.replace(" ", "") == "0") {
        $("#jiek_Share").val("1");
        $("#profit").html("0.00");
        $("#payamount").html("0.00");
    }
    else if (parseInt(txt.replace(" ", "")) > parseInt($("#jiek_Share").attr("maxShares"))) {
        $("#jiek_Share").val($("#jiek_Share").attr("maxShares"));
        $("#profit").html(parseFloat(parseFloat(lowerunit) * parseInt($("#jiek_Share").attr("maxShares")) * parseInt(deadline) * parseFloat(rate) / 100 / 12).toFixed(2));
        $("#payamount").html((parseFloat(lowerunit) * parseInt($("#jiek_Share").attr("maxShares"))).toFixed(2));

        if (isFenQiBao == "True" && $("#benjin").attr("checked"))
            $("#profit").html(parseFloat(parseFloat(lowerunit) * (parseInt(txt)) * parseInt(deadline) * parseFloat(rate2) / 100 / 12).toFixed(2));
    }
    else {
        $("#profit").html(parseFloat(parseFloat(lowerunit) * parseInt(txt) * parseInt(deadline) * parseFloat(rate) / 100 / 12).toFixed(2));
        $("#payamount").html((parseFloat(lowerunit) * parseInt(txt)).toFixed(2));

        if (isFenQiBao == "True" && $("#benjin").attr("checked"))
            $("#profit").html(parseFloat(parseFloat(lowerunit) * (parseInt(txt)) * parseInt(deadline) * parseFloat(rate2) / 100 / 12).toFixed(2));
    }
}

//加载申购列表
function SubscribeList() {
    $("#Subscribelist").nextAll().remove();
    $("<tr><td colspan=\"6\" align=\"center\">数据加载中...</td></tr>").insertAfter('#Subscribelist');
    jQuery.ajax({
        async: false,
        type: "post",
        url: "/ajaxCross/ajax_invest.ashx",
        dataType: "json",
        data: { Cmd: "GetWePlanSubscribeList", projectid: productId, pagesize: pagesize, pageindex: pageindex },
        success: function (jsonstr) {
            $("#Subscribelist").nextAll().remove();
            var html = new Array();
            var str = "";
            if (jsonstr.result == "1") {
                var temp1 = pagesize * (pageindex - 1);
                var autoDesc = "";
                for (var i = 0; i < jsonstr.list.length; i++) {
                    if (i % 2 == 0) {
                        str = "<tr>";
                    }
                    else {
                        str = "<tr class=\"gray\">"
                    }
                    str +="<td>" + parseInt(parseInt(temp1) + parseInt(i + 1)) + "</td>" +
                          "<td>" + jsonstr.list[i].NickName + "</td>" +
                          "<td><span>￥" + jsonstr.list[i].Amount + "</span></td>" +
                         (isFenQiBao == "True" ? "<td>" + (jsonstr.list[i].RepeatInvestType == "1" ? "本息复投" : "本金复投") + "</td>" : "") +
                          "<td>" + jsonstr.list[i].OrderDate + "</td>" +
                        "</tr>"
                    html.push(str);
                }
                $(html.join("")).insertAfter('#Subscribelist');
                if (parseInt(jsonstr.totalcount) != parseInt($("#divPagination").attr("totalcount"))) {
                    initSubscribesPagin(jsonstr.totalcount);
                }
            }
            else {
                var colspan = isFenQiBao == "True" ? 5 : 4;
                $("<tr><td colspan=\"" + colspan + "\" align=\"center\">暂没有人加入...</td></tr>").insertAfter('#Subscribelist');
            }
            location.hash = "a3";
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

//加载投资项目
function InvestProjectList() {
    $("#InvestProjectList").nextAll().remove();
    $("<tr><td colspan=\"5\" align=\"center\">数据加载中...</td></tr>").insertAfter('#InvestProjectList');
    jQuery.ajax({
        async: false,
        type: "post",
        url: "/ajaxCross/ajax_invest.ashx",
        dataType: "json",
        data: { Cmd: "GetWePlanInvestProjectList", productId: productId, pagesize: pagesize, pageindex: pageindex1 },
        success: function (jsonstr) {
            $("#InvestProjectList").nextAll().remove();
            var html = new Array();
            var str = "";
            if (jsonstr.result == "1") {
                var temp1 = pagesize * (pageindex1 - 1);
                var autoDesc = "";
                for (var i = 0; i < jsonstr.list.length; i++) {
                    if (i%2==0) {
                        str = "<tr>";
                    }
                    else {
                        str = "<tr class=\"gray\">"
                    }
                    str +="<td>" + parseInt(parseInt(temp1) + parseInt(i + 1)) + "</td>" +
                          "<td><a target=\"_blank\" href=\"//www.tuandai.com/pages/invest/detail.aspx?id=" + jsonstr.list[i].ProjectId + "\">" + jsonstr.list[i].Title + "</a></td>" +
                          "<td>" + jsonstr.list[i].RealName + "</td>" +
                         "<td>" + jsonstr.list[i].UnitAddress + "</td>" +
                         "<td>￥" + jsonstr.list[i].Amount + "</td>" +
                        "</tr>"
                    html.push(str);
                }
                $(html.join("")).insertAfter('#InvestProjectList');
                //if (parseInt(jsonstr.totalcount) != parseInt($("#divPagination1").attr("totalcount"))) {
                    initInvestProjectPagin(jsonstr.totalcount);
                //}
            }
            else {
                $("<tr><td colspan=\"5\">客官莫急~We计划投标中，请稍后查看债权列表信息......</td></tr>").insertAfter('#InvestProjectList');
            }

        }
    });
}


//分页投资项目
function initInvestProjectPagin(recordCount) {
    var num_entries = recordCount;
    $("#divPagination1").pagination(num_entries, {
        callback: getInvestProject,
        items_per_page: pagesize,
        num_display_entries: 5,
        current_page: parseInt(pageindex1 - 1),
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


//获取投资项目列表
function getInvestProject(page_index, jq) {
    if (parseInt(pageindex1 - 1) == page_index) {
        return false;
    }
    pageindex1 = (page_index + 1);
    InvestProjectList();
    return false;
}
 
//弹出申购层
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
    ////删除其他弹出层
    //var list = art.dialog.list;
    //for (var i in list) {
    //    list[i].close();
    //}; 
    //art.dialog({
    //    zIndex: 1111111102,
    //    width: 300,
    //    time: 5,
    //    title: newTitle,
    //    content: str
    //});
    showDialWindowsWithoutBtn(newTitle, str);
    $("#diallayer").show();
}

//function colosenewWindow() {
//    $("#dial-window").hide();
//    $("#diallayer").hide();
//}
//弹出弹框
function showDialWindowsWithoutBtn(title, content) {
    showDialWindows(title + "<i class=\"close icons close-x icon abs\" onclick=\"colosenewWindow()\"></i>", content, null, null, null, null);
}
///弹框,title:弹框标题
///content：弹框内容
/// okString ok按钮内容, okbtnEvent ok按钮触发事件, cancleString取消按钮内容, cancleEvent取消按钮触发事件
function showDialWindows(title, content, okString, okbtnEvent, cancleString, cancleEvent) {
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











 