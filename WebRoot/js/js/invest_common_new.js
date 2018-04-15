var oMoney = null;
var oInterestRate = null;
var oPublisherRate = null;
var oTuandaiRate = null;
var oDeadline = null;
var oRepaymentType = null
var oldpid = "", tendval = "", protitle = "";
var deadLine = 12;
var IsScribeTanfer = false;
$(function () {
    //限制输入数字
    limitInt($("#jiek_Share"));

    oInterestRate = $("#span_InterestRate").attr("attrid");
    oPublisherRate = $("#td_Rate").attr("attr_PublisherRate");
    oTuandaiRate = $("#td_Rate").attr("attr_TuandaiRate");
    oDeadline = $("#span_Deadline").attr("attrid");
    oRepaymentType = $("#td_RepaymentType").attr("attrid");

    var deadType = $('#hiDeadType').val();
    if (deadType == 2) {
        deadLine = 365;
    }

    Calculate(2);
    //格式化输入份数
    $("#jiek_Share").blur(function () {
        Calculate(2);
    }).keyup(function () {
        Calculate(1);
    });

    //格式化输入份数
    $("#jiek_Share").blur(function () {
        if ($.trim($(this).val()).replace("份", "").replace(" ", "") == "0" || $.trim($(this).val()).replace("份", "").replace(" ", "") == "") {
            $(this).val("1");
        }
        else if (parseInt($.trim($(this).val()).replace("份", "").replace(" ", "")) > parseInt($(this).attr("maxshares"))) {
            $(this).val($(this).attr("maxshares"));
        }
        else {
            $(this).val($.trim($(this).val()).replace("份", "").replace(" ", ""));
        }
    });

    //减去
    $("#jiek_minus").click(function () {
        var obj = $("#jiek_Share");
        var currentShare = $(obj).val().replace("份", "").replace(" ", "");
        if (currentShare > 1) {
            $(obj).val((parseInt(currentShare) - 1));

            var profit = 0;
            if (IsScribeTanfer) {

                var interestAmountDeadLime = ((parseInt(currentShare) - 1) * parseFloat(lowerunit)) * parseFloat(rete) * 0.01 / 365 * deadline;
                profit = Math.floor(Number(interestAmountDeadLime) * 100) / 100;

            }
            else {
                if (typeof(oRepaymentType)=="undefined") {
                    profit = parseFloat(parseFloat(lowerunit) * (parseInt(currentShare) - 1) * parseInt(deadline) * parseFloat(rete) / 100 / deadLine);
                }
                else {
                    profit = GetInterestAmount(((parseInt(currentShare) - 1) * parseFloat(lowerunit)), parseInt(oRepaymentType), parseInt(deadline), parseFloat(rete));
                }
                //
            }
            profit = getNewHandRate(profit, (parseInt(currentShare) - 1) * parseFloat(lowerunit));
            $("#profit").html(GetMoney((Math.floor(profit * 100) / 100).toString()));
            $("#payamount").html((parseFloat(lowerunit) * (parseInt(currentShare) - 1)).toFixed(2));
        }

        if ((currentShare - 1) == 1) {
        }
    });
    //增加
    $("#jiek_plus").click(function () {
        var obj = $("#jiek_Share");
        var currentShare = $(obj).val().replace("份", "").replace(" ", "");
        if (currentShare != $(obj).attr("maxshares")) {
            $(obj).val((parseInt(currentShare) + 1));
            var profit = 0;
            if (IsScribeTanfer) {
                var interestAmountDeadLime = ((parseInt(currentShare) + 1) * parseFloat(lowerunit)) * parseFloat(rete) * 0.01 / 365 * deadline;
                profit = Math.floor(Number(interestAmountDeadLime) * 100) / 100;
            }
            else {
                if (typeof (oRepaymentType) == "undefined") {
                    profit = parseFloat(parseFloat(lowerunit) * (parseInt(currentShare) + 1) * parseInt(deadline) * parseFloat(rete) / 100 / deadLine);
                }
                else {
                    profit = GetInterestAmount(((parseInt(currentShare) + 1) * parseFloat(lowerunit)), parseInt(oRepaymentType), parseInt(deadline), parseFloat(rete));
                }
            }
            profit = getNewHandRate(profit, (parseInt(currentShare) + 1) * parseFloat(lowerunit));
            $("#profit").html(GetMoney((Math.floor(profit * 100) / 100).toString()));
            $("#payamount").html((parseFloat(lowerunit) * (parseInt(currentShare) + 1)).toFixed(2));
        }
        if ((currentShare + 1) > 1) {
        }
    });
    $("#btntools").click(function () {
        oMoney = $("#jiek_Share").val().replace("份", "").replace(" ", "") * $("#td_LowerUnit").attr("attrid");
        window.open("/View/tuandaitool_1_10.html", "_blank");
    });
    //申购按钮事件
    $("#btnSubscribe").click(function () {
        if ($("#ckbAgree").attr("checked") == "checked") {
            var id = $(this).attr("attrid");

            var tendValue = $("#jiek_Share").val().replace("份", "").replace(" ", "");

            var title = $("#projecttitle").attr("protitle");
            var shownewhand = (typeof ($(this).attr("shownewhand")) != "undefined") && ($(this).attr("shownewhand") == "True");
            if (!isCookieLogin()) {
                oldpid = id;
                tendval = tendValue
                protitle = title;
                fnLogin();
            } else if (shownewhand) {//非新手投资新手标
                try {
                    //-------存管通验证---2016-11-17----
                    if (IsOpenCGT=="1" && isOpenCgtSub == "1" && !checkIsOpen("touzi"))
                        return false;
                    //-------存管通验证结束----------
                } catch (e) {

                }
                showNewHandWarning();
            }
            else {
                try {
                    //-------存管通验证---2016-11-17----
                    if (IsOpenCGT == "1" && isOpenCgtSub == "1" && !checkIsOpen("touzi"))
                        return false;
                    //-------存管通验证结束----------
                } catch (e) {

                }
                shengou(id, tendValue, title);
            }
        } else {
            dialogTip("<div style='color:gray;line-height:21px;'>您还未阅读并同意服务协议!</div>"); 
        }
    });
          
     
})
//20160523  模拟下拉菜单
function simulationList() { //模拟下拉-->
$('.simulation-list').find('.text-box').click(function () {
        var str = $(".simulation-list .text").text();
        var len =  $(this).parent().find('li').length;       
        $(this).parents('.text-box').css({ position: "relative" });
        $(this).parent().find('ul').slideToggle(100);
        $('.text-box').mouseleave(function () {
            //$(this).find('ul').show().hide();
            $(this).css({ position: "static" });
        });
        $(this).parent().find('li').click(function () {
                var newVal = $(this).text();
                $(this).parents('.text-box').find('.text').text(newVal);
                //$(this).parent().hide();
                $(this).parents('.text-box').css({ position: "static",color:"#ff7800" });                
        });
        //判断字符串是否相等
        for(i=0; i<len; i++){
            var Litext = $($(this).parent().find('li')[i]).html();     
            if($.trim(str)==$.trim(Litext)){
                $($(this).parent().find('li')[i]).addClass("cur");
            }   
        }
        $(this).parent().find('li').hover(function(){
            $(this).addClass("cur").siblings("li").removeClass("cur");
        });  
        //li>5条 显示滚动条      
        if(len>5){
           $(this).parent().find('ul').addClass("overflow-y");
        }

    });
}

$(function(){
    simulationList(); 
    $(document).bind("click", function (e) {
        var target = $(e.target);
        if (target.closest(".simulation-list .text-box").length == 0) {
            $(".simulation-list .text-box").find('ul').slideUp(100);
         }
    });
});
function GetMoney(amount) {
    if (amount.indexOf('.') > -1) {
        var len = amount.substr(amount.indexOf('.')).length;
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
    var profit = 0;
    if (txt.replace(" ", "") == "") {
        if (type == 2) {
            $("#jiek_Share").val("1");

            if (IsScribeTanfer) {

                var interestAmountDeadLime = (parseFloat(lowerunit)) * parseFloat(rete) * 0.01 / 365 * deadline;
                profit = Math.floor(Number(interestAmountDeadLime) * 100) / 100;

            }
            else {
                profit = parseFloat(lowerunit) * parseInt(deadline) * parseFloat(rete) / 100 / deadLine;
            }
            profit = getNewHandRate(profit, parseFloat(lowerunit));
            $("#profit").html(GetMoney((Math.floor(profit * 100) / 100).toString()));
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
        if (IsScribeTanfer) {            
                var interestAmountDeadLime = (parseFloat(lowerunit)) * parseInt($("#jiek_Share").attr("maxShares")) * parseFloat(rete) * 0.01 / 365 * deadline;
                profit = Math.floor(Number(interestAmountDeadLime) * 100) / 100;
        }
        else {
            if (typeof (oRepaymentType) == "undefined") {//有的标没有赋值还款方式
                profit = parseFloat(parseFloat(lowerunit) * parseInt($("#jiek_Share").attr("maxShares")) * parseInt(deadline) * parseFloat(rete) / 100 / deadLine);
            }
            else {
                profit = GetInterestAmount((parseInt($("#jiek_Share").attr("maxShares")) * parseFloat(lowerunit)), parseInt(oRepaymentType), parseInt(deadline), parseFloat(rete));
            }            
        }
        profit = getNewHandRate(profit, parseInt($("#jiek_Share").attr("maxShares")) * parseFloat(lowerunit));
        $("#profit").html(GetMoney((Math.floor(profit * 100) / 100).toString()));
        $("#payamount").html((parseFloat(lowerunit) * parseInt($("#jiek_Share").attr("maxShares"))).toFixed(2));
    }
    else {
        if (IsScribeTanfer) {           
                var interestAmountDeadLime = (parseFloat(lowerunit) * parseInt(txt)) * parseFloat(rete) * 0.01 / 365 * deadline;
                profit = Math.floor(Number(interestAmountDeadLime) * 100) / 100;           
        }
        else {
            if (typeof (oRepaymentType) == "undefined") {
                profit = parseFloat(parseFloat(lowerunit) * parseInt(txt) * parseInt(deadline) * parseFloat(rete) / 100 / deadLine);
            }
            else {
                profit = GetInterestAmount((parseInt(txt) * parseFloat(lowerunit)), parseInt(oRepaymentType), parseInt(deadline), parseFloat(rete));
            }
           
        }

        profit = getNewHandRate(profit, parseInt(txt) * parseFloat(lowerunit));
        $("#profit").html(GetMoney((Math.floor(profit * 100) / 100).toString()));
        $("#payamount").html((parseFloat(lowerunit) * parseInt(txt)).toFixed(2));
    }
}

/**
 * 加新手标奖励利息计算
 */
function getNewHandRate(profit, payment) {
    if (typeof (newHandRate) == "undefined") return profit;
    if (isNaN(newHandRate)) return profit;
    var rewardAmount = GetInterestAmount(payment, oRepaymentType, parseInt(deadline), newHandRate);
    return profit + rewardAmount;
}


//获取借款人信息
function getBorrowUserInfo(borrowUserId, projId) {
    if (!isCookieLogin()) {
        return;
    }
    jQuery.ajax({
        async: true,
        type: "get",
        url: "/ajaxCross/ajax_invest.ashx",
        dataType: "json",
        data: { Cmd: "GetBorrowUserInfo", BorrowUserID: borrowUserId },
        success: function (jsonstr) {
            if (jsonstr.result == 1) {
                $("#borrow_NickName").text(jsonstr.msg.NickName || "");
                $("#borrow_Age").text(jsonstr.msg.Age || "");
                if ($("#spUserType").length > 0) {
                    if (jsonstr.msg.UserTypeId != "1") {
                        $("#spUserType").text("(企业)");
                    }
                }
                $("#borrow_TelNo").text(jsonstr.msg.TelNo || "");
                $("#borrow_Sex").text(jsonstr.msg.Sex || "");
                $("#borrow_AddDate").text(jsonstr.msg.AddDateStr || "");
                $("#borrow_BankCity").text(jsonstr.msg.BankCity || "");
                if ($("#borrow_Marriage").length > 0) 
                    $("#borrow_Marriage").text(jsonstr.msg.Marriage || "");
                if ($("#borrow_Graduation").length > 0)
                    $("#borrow_Graduation").text(jsonstr.msg.Graduation || "");
                if ($("#borrow_IsHasChildren").length > 0)
                    $("#borrow_IsHasChildren").text(jsonstr.msg.IsHasChildren || "");
                if ($("#borrow_RealName").length > 0)
                    $("#borrow_RealName").text(jsonstr.msg.RealName || "");
            }
        }
    });

    jQuery.ajax({
        async: true,
        type: "get",
        url: "/ajaxCross/ajax_invest.ashx",
        dataType: "json",
        data: { Cmd: "GetBorrowRecord", ProjectID: projId },
        success: function (jsonstr) {
            if (jsonstr.result == 1) {
                $.each(jsonstr.msg, function (i, j) {
                    var l = $("#" + i);
                    if (l.length > 0) {
                        l.text(j);
                    }
                });
            }
        }
    });
}

//获取还款汇总信息
function getRepayedMsg(projId) {
    jQuery.ajax({
        async: true,
        type: "get",
        url: "/ajaxCross/ajax_invest.ashx",
        dataType: "json",
        data: { Cmd: "GetRepayedMsg", ProjectID: projId },
        success: function (jsonstr) {
            if (jsonstr.result == 1) {
                var arr = jsonstr.msg.split('|');
                $("#repayedAmount").text(arr[0]);
                $("#overdueAmount").text(arr[1]);
                $("#duerepayAmount").text(arr[2]);
                $("#duerepayAmount2").text(arr[2]);
            }
        }
    });
}