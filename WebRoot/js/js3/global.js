!function () {
    //初始化登录
    initLogin();

    var topBox = jQuery('.top_bar').find('.top');
    topBox.find('#loginbar').hover(function () {
        if (jQuery(this).find('.member-list').find('ul').length != 0) {
            jQuery(this).find('.member-list').find('ul').stop().show();
        } else {
            jQuery(this).find('.account-child-list').show();
        }
        jQuery(this).find('i').addClass('member-arrow-hover');
    },
    function () {
        if (jQuery(this).find('.member-list').find('ul').length != 0) {
            jQuery(this).find('.member-list').find('ul').stop().hide();
        } else {
            jQuery(this).find('.account-child-list').hide();
        }
        jQuery(this).find('i').removeClass('member-arrow-hover');
    });
} ();
function weBoxMove() {
    jQuery('.we-box').find('#pre').click(function () {
        jQuery('.we-box').find('.we-list').find('ul').animate({ left: 0 }, 600);
        jQuery(this).parent().find('#pre').hide();
        jQuery(this).parent().find('#next').show();
    });
    jQuery('.we-box').find('#next').click(function () {
        jQuery('.we-box').find('.we-list').find('ul').animate({ left: -999 }, 600);
        jQuery(this).parent().find('#next').hide();
        jQuery(this).parent().find('#pre').show();
    })
}

jQuery(document).ready(function () {
    weBoxMove();
    initLogoRightImages("index_ad", "index_slider", "index_num");
    jQuery(function () {

        jQuery(".left_servers_title_none").click(function () {
            jQuery('.servers_content').show();
            jQuery(this).hide();

        });
        jQuery(".servers_content").click(function () {

            jQuery('.left_servers_title_none').show();
            jQuery(this).hide();


        });

    });
});

function initLogin() {
    var url = portalWebsiteUrl + "/user/services/helloService.ashx";
    if ("https:" == document.location.protocol)
        url = url.replace("http://", "https://");

    jQuery.ajax({
        url: url,
        dataType: "jsonp",
        scriptCharset: "gb2312",
        success: function (data) {
            data && data.info && jQuery("#loginbar").html(data.info),
            data && data.sso && jQuery.each(data.sso,
            function () {
                jQuery.ajax({
                    url: this,
                    type: "GET",
                    dataType: "text",
                    success: function (data) {
                        jQuery.ajax({
                            url: data,
                            dataType: "jsonp"
                        });
                    }
                });
            })
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
        }
    })
}

//LOGO右边切换图片
function initLogoRightImages(outBox, inBox, indexNum) {
    var len = jQuery("." + indexNum + " > li").length;
    var index = 0;
    var adTimer;
    //滑入 停止动画，滑出开始动画.
    jQuery("." + outBox).hover(function () {
        clearInterval(adTimer);
    }, function () {
        adTimer = setInterval(function () {
            index_showImg(index, outBox, inBox);
            index++;
            if (index == len) { index = 0; }
        }, 4000);
    }).trigger("mouseleave");
}

// 通过控制top ，来显示不同的幻灯片
function index_showImg(index, outBox, inBox) {
    var adHeight = jQuery("." + outBox).height();
    jQuery("." + inBox).stop(true, false).animate({ bottom: -adHeight * index }, 300);
}

//判断cookie是否有登录凭证
function isCookieLogin() {
    var cookieValue = jaaulde.utils.cookies.get("tuandaiw");
    if (cookieValue != "" && cookieValue != null)
        return true;
    else
        return false;
}
//限制只能输入数字(不可以含有小数)
function limitInt(fn) {
    jQuery(fn).keydown(function (e) {
        // 注意此处不要用keypress方法，否则不能禁用　Ctrl+V 与　Ctrl+V,具体原因请自行查找keyPress与keyDown区分，十分重要，请细查
        if (((e.keyCode > 47) && (e.keyCode < 58)) || (e.keyCode == 9) || (e.keyCode == 8) || ((e.keyCode >= 96) && (e.keyCode <= 105))) {// 判断键值  
            return true;
        } else {
            return false;
        }

    }).focus(function () {
        this.style.imeMode = 'disabled';   // 禁用输入法,禁止输入中文字符
    });

}
//弹出申购层2015-08-18
function shengou(id, tendValue, title) {

        var dialog = art.dialog({
            id: 'N1589' + Math.random(),
            title: title,
            content: "<img src=\"/img/icons/loading24.gif\" />&nbsp;正在加载页面，请稍候......",
            opacity: 0.5,
            fixed: false,
            lock: true,
            showborder: true,
            width: 350,
            zIndex: 9999999,
            drag: true,
            padding: 0,
            background: '#fff'
        });

    //    jQuery.ajax({
    //        async: true,
    //        type: "get",
    //        url: '/View/invest_dialog.aspx?projectId=' + id + '&unit=' + tendValue,
    //        success: function (data) {
    //            dialog.content(data);
    //        },
    //        cache: false
        //    });
//        var data = { Cmd: "GetSubscribeDiv", projectId: id, unit: tendValue }
//        if (type == 1) {
//            data = { Cmd: "GetZQZRSubscribe", projectId: id, unit: tendValue }
//        }
        jQuery.ajax({
            async: true,
            type: "post",
            url: "/ajaxCross/ajax_invest.ashx",
            dataType: "json",
            data: { Cmd: "GetSubscribeDiv", projectId: id, unit: tendValue },
            success: function (jsonstr) {
                if (jsonstr.result == "1") {
                    $("#art_UserName").html(jsonstr.list[0].UserName);
                    $("#art_ProjectAmount").html(jsonstr.list[0].ProjectAmount);
                    $("#art_ReTime").html(jsonstr.list[0].ReTime);
                    $("#art_Rate").html(jsonstr.list[0].Rate);
                    $("#txtLowerUnit").html(jsonstr.list[0].Unit);
                    $("#art_ReType").html(jsonstr.list[0].ReType);
                    var type = jsonstr.list[0].Type;
                    if (type == 1 || type == 3 || type == 5 || type == 9 || type == 10 || type == 11 || type == 15) {
                        $("#art_PublicRate").show();
                        $("#art_PublicRate").html("<p><i class='i-1'></i>" + jsonstr.list[0].PRate + "</p><p class='padding-bottom-0'><i class='i-2'></i>" + jsonstr.list[0].TRate + "</p>");
                    } else {
                        $("#art_PublicRate").hide();
                    }
                    $("#art_UserFund").html(jsonstr.list[0].UserFund + "元");
                    if (type == 3) {
                        $("#txtMaxUnit1").html("最大认购份数：<span class='font-000' id='txtMaxUnit'>" + jsonstr.list[0].MaxUnit + "份</span>");
                        $("#PostData").html("确认认购");
                    } else if (type == 21) {
                        var showTip = "<span class='tip-wrap inline-block-debug'><span class='tip'></span>"+
                                        "<i class='arrow' style='display: none'></i>"+
                                        "<span class='detail' style='left: -140px; width: 258px; display: none;'>"+
                                         "  您持有的活期宝金额。（每人最多持有10万元）"+
                                        "</span>" +
                                        "</span>";
                        $("#txtMaxUnit1").html("您的持有金额：<span class='font-000' id='txtMaxUnit'>" + GetConvertMoney(jsonstr.list[0].HQBAmount) + "元</span>&nbsp;<input type='hidden' id='hiMaxUnit' value='" + jsonstr.list[0].MaxUnit + "'/>" + showTip);
                        $("#PostData").html("确认出借");
                    }
                    else {
                        $("#txtMaxUnit1").html("最大出借份数：<span class='font-000' id='txtMaxUnit'>" + jsonstr.list[0].MaxUnit + "份</span>");
                        if (jsonstr.list[0].IsScribeTanfer == "false") {
                            $("#PostData").html("确认出借");
                        }
                        else {
                            $("#PostData").html("确认承接");
                        }
                    }
                    $("#PostData").attr("projectid", jsonstr.list[0].ProjectId);
                    $("#PostData").attr("attr_expected", jsonstr.list[0].Expected);
                    $("#PostData").attr("attr_commission", jsonstr.list[0].Commission);
                    $("#txtUnit").val(jsonstr.list[0].NowUnit);
                    $("#btnPlus").attr("attrid", jsonstr.list[0].PerAmout);
                    $("#btnPlus").attr("rewardamount", jsonstr.list[0].RewardAmount);

                    $("#hiDeadline").val(jsonstr.list[0].Deadline);
                    $("#hiInterestRate").val(jsonstr.list[0].InterestRate);
                    $("#hiRepaymentType").val(jsonstr.list[0].RepaymentType);
                    $("#hiProjectType").val(type);
                    $("#hiUnit").val(jsonstr.list[0].LowerUnit);
                    $("#txtPublicRate").val(jsonstr.list[0].PublisherRate);
                    $("#txtTuandaiRate").val(jsonstr.list[0].TuandaiRate);
                    $("#hiNewHandRate").val(jsonstr.list[0].NewHandRate);
                    $("#hiHQBAmount").val(jsonstr.list[0].HQBAmount);

                    $("#hiNeedPassWord").val(jsonstr.list[0].NeedPayPassword);
                    if (jsonstr.list[0].NeedPayPassword == "True") {
                        $("#art_PayPassword").show();
                        $("#art_NeedPassword").show();
                    } else {
                        $("#art_PayPassword").hide();
                        $("#art_NeedPassword").hide();
                    }
                    if (jsonstr.list[0].SMBType == "0") {
                        $("#p_Expected").hide();
                    } else {
                        $("#p_Expected").show();
                    }
                    if (jsonstr.list[0].IsNewUser == "True" && jsonstr.list[0].Amount < 100000 && jsonstr.list[0].IsAwardOverdue == "False") {
                        $("#divPackage").show();
                        $("#lblPackage").html("温馨提示：您已累计投资" + GetConvertMoney(jsonstr.list[0].Amount) + "元，本次投资" + GetConvertMoney(jsonstr.list[0].NeedInvest) + "元，<br/>即可获" + jsonstr.list[0].CanGetPackage + "元红包！<a target='_blank' href='/activity/20150211/index.aspx' style='color:#ed8900; text-decoration:underline;'>了解详情</a>");
                    } else {
                        $("#divPackage").hide();
                    }
                    //
                    $("#hiTotalInvest").val(jsonstr.list[0].Amount);
                    $("#hiCanGetPackage").val(jsonstr.list[0].CanGetPackage);
                    $("#hiNeedInvest").val(jsonstr.list[0].NeedInvest);
                    $("#hiIsNewUser").val(jsonstr.list[0].IsNewUser);
                    $("#hiIsAwardOverdue").val(jsonstr.list[0].IsAwardOverdue);
                    $("#hiAreaInvest").val(jsonstr.list[0].AreaInvest);
                    $("#hiIsScribeTanfer").val(jsonstr.list[0].IsScribeTanfer);
                    $("#hiProjectDeadline").val(jsonstr.list[0].ProjectDeadline);
                    $("#hiDeadType").val(jsonstr.list[0].DeadType)

                    if (jsonstr.list[0].IsScribeTanfer == "false") { 
                        if (type == 1 || type == 3 || type == 5) {//商友贷
                            $("#AgreeDiv").html("<label><input type='checkbox' id='ckbInvestAgree' checked='checked'/>我已阅读并同意</label><a href='/member/contract/ContractType1.html' target='_blank'>《团贷网商友贷合同》</a>");
                        } else if (type == 9 || type == 10 || type == 11) {//微团贷
                            $("#AgreeDiv").html("<label><input type='checkbox' id='ckbInvestAgree' checked='checked'/>我已阅读并同意</label><a href='/member/contract/ContractType" + type + ".html' target='_blank'>《团贷网微团贷合同》</a>");
                        } else if (type == 15) {//分期宝
                            $("#AgreeDiv").html("<label><input type='checkbox' id='ckbInvestAgree' checked='checked'/>我已阅读并同意</label><a href='/member/contract/fqbServiceContract.html' target='_blank'>《团贷网分期宝专区服务协议》</a>");
                        } else if (type == 6 || type == 7) {//资产标
                            $("#AgreeDiv").html("<label><input type='checkbox' id='ckbInvestAgree' checked='checked'/>我已阅读并同意</label><a href='/member/contract/ContractType" + type + ".html' target='_blank'>《团贷网资产标借款合同》</a>");
                        } else if (type == 18) {//私募宝
                            $("#AgreeDiv").html("<label><input type='checkbox' id='ckbInvestAgree' checked='checked'/>我已阅读并同意</label><a href='/member/contract/ContractType18_" + jsonstr.list[0].SmbProfitTypeId + ".html' target='_blank'>《团贷网私募宝合同》</a>");
                        } else if (type == 20) {//私募宝
                            $("#AgreeDiv").html("<label><input type='checkbox' id='ckbInvestAgree' checked='checked'/>我已阅读并同意</label><a href='/member/contract/ContractType" + type + ".html' target='_blank'>《团贷网供应链专区服务协议》</a>");
                        } else if (type == 21) {//活期宝
                            $("#AgreeDiv").html("<label><input type='checkbox' id='ckbInvestAgree' checked='checked'/>我已阅读并同意</label><a href='/member/contract/ContractType" + type + ".html' target='_blank'>《活期宝借贷合同》</a>");
                        } 
                    } else {
                        $("#art_PublicRate").hide();
                        $("#AgreeDiv").html("<label><input type='checkbox' id='ckbInvestAgree' checked='checked'/>我已阅读并同意</label><a href='/member/contract/ContractZqzr.html' target='_blank'>《债权转让协议》</a>");
                    }
                    $("#TranPwd").val("");
                    $("#IsTenderNeedPayPassword").removeAttr("checked");
                    shengouInit();
                    showMyTip(".tip-wrap", ".tip-wrap .arrow, .detail", ".tip-wrap .arrow, .detail");
                    dialog.close();
                    showDiv();
                } else {
                    globalDialog("团贷网提醒您", jsonstr.msg, "", "1");
                }
            },
            error: function (a, b, c) {
                globalDialog("团贷网提醒您", c, "", "1");
            }
        });
}
function showMyTip(el, show, hide) {
    $(el).hover(function () {
        $(this).parent().find(show).show();
    }, function () {
        $(this).parent().find(hide).hide();
    });
}
//全局提示层
//function globalDialogNew(newTitle, strmsg, strurl) {
//    if (newTitle == "") {
//        newTitle = "消息";
//    }
//    if (strurl == "") {
//        $popdialog({
//            title: newTitle,
//            content: strmsg,
//            width: 300,
//            zIndex: 9999999,
//            lock: true,
//            ok: function () { }
//        });
//    }
//    else {
//        $popdialog({
//            title: newTitle,
//            content: strmsg,
//            width: 300,
//            zIndex: 9999999,
//            lock: true,
//            ok: function () {
//                window.location.href = strurl;
//            },
//            close: function () {
//                window.location.href = strurl;
//            }
//        });
//    }
//}

function GetConvertMoney(money) {
    var amount = Math.floor(money * 100) / 100;
    return amount.toFixed(2).replace(".00", "");
}
//弹出申购层2015-08-18
function showDiv() {
    $("#td-art").show();
    $("<div id='td-atr-layer'>").appendTo('body');
    var z_index = 0;
    $('#td-atr-layer').css({ "z-index": 111111111 });
    $('#td-art').css({ "z-index": 111111112 });
    //    $("*").each(function () {
    //        if (parseInt($(this).css("z-index")) > z_index) {
    //            z_index = $(this).css("z-index");
    //        }
    //        $('#td-atr-layer').css({ "z-index": z_index });
    //        $('#td-art').css({ "z-index": z_index + 1 });
    //    });
    outW = $('#td-art').outerWidth() / 2;
    $('#td-art').css({ 'margin-left': -outW });
    $('#td-art .invent-form').find('i').mouseenter(function () {
        $('#td-art .invent-form').find('i').css({ "z-index": "1" });
        $(this).css({ "z-index": "2" });
    });
    $('#recharge-art').find('.form-box').find('i').mouseenter(function () {
        $(this).parent().find('i').css({ "z-index": "0" });

    });
    $('#td-art .left').height($('#td-art .right').height());
    $('#td-art .right').find('.red-package, i.arrow').click(function () {
        $(this).find('.list').slideDown(200);
        $(this).find('li').click(function () {

        })
    });
    $('#td-art .right').find('.red-package').bind("mouseleave", function () {
        $(this).find('.list').slideUp(200);
        return false
    }).end().find('.list').bind("click", function () {
        $(this).parent().find('.list').slideUp(200);
        0
        return false
    });
    $('#td-art').find('.close').bind("click", function () {
        $(this).parents('#td-art').fadeOut(200);
        $('#td-atr-layer').remove();
    });
}
/*
aaron
2015/03/16
计算预计收益
还款方式：0:不确定还款方式1:到期还本息2.每月付息到期还本3.每月等本等息4:先息后本5.每月等额本息6.满标付息7.等额本金
amount          申购金额
repaymentType   还款方式
deadline        还款期限
interestRate    申购利率
*/
function GetInterestAmount(amount, repaymentType, deadline, interestRate) {
    var interestAmount = 0.00;
    if (amount == "" || amount == "0" || repaymentType == "" || repaymentType == "0" || deadline == "" || deadline == "0" || interestRate == "" || interestRate == "0")
        return interestAmount;
    switch (repaymentType) {
        case 1:
        case 2:
        case 3:
            {
                var _deadLine = 12.00;
                var deadType = $('#hiDeadType').val();
                if (deadType == 2) {
                    _deadLine = 365;
                }
                interestAmount = amount * interestRate * 0.01 / _deadLine * deadline;
                interestAmount = Math.floor(Number(interestAmount) * 100) / 100;
                break;
            }
        case 5:
            {
                var deadType = $('#hiDeadType').val();
                if (deadType == "2" && deadline>=60) {
                    deadline = deadline/30
                }
                var _deadLine = 12.00;
                var monthRate = interestRate * 0.010000000000 / _deadLine;
                var tempAmount = 0.00, tempInterestAmount = 0.00, tempAmountAndInterest = 0.00, totalInterest = 0.00, totalAmount = 0.00;
                var index = 1;
                while (index <= deadline) {
                    tempAmount = Number(amount * monthRate * Math.pow(1 + monthRate, index - 1) / (Math.pow(1 + monthRate, deadline) - 1)).toFixed(4);
                    tempAmountAndInterest = Number(amount * monthRate * Math.pow(1 + monthRate, deadline) / (Math.pow(1 + monthRate, deadline) - 1)).toFixed(4);
                    tempInterestAmount = Number(tempAmountAndInterest - tempAmount).toFixed(4);
                    if (index == deadline) {
                        tempAmount = Number(amount) - Number(totalAmount);
                        tempInterestAmount = Number(tempAmountAndInterest - tempAmount);
                    }
                    totalInterest += Number(tempInterestAmount);
                    totalAmount += Number(tempAmount);
                    index++;
                }

                interestAmount = Math.floor(Number(totalInterest) * 100) / 100;
                break;
            }
        case 6:
            {
                interestAmount = amount * interestRate * 0.01 / 360 * deadline;
                interestAmount = Math.floor(Number(interestAmount) * 100) / 100;
                break;
            }
        default:
            {
                interestAmount = amount * interestRate * 0.01 / 12 * deadline;
                interestAmount = Math.floor(Number(interestAmount) * 100) / 100;
                break;
            }
    }
    return interestAmount;
}