﻿var dialogInvest = null; //弹出申购层 
var oldpid = '',
	tendval = '',
	protitle = '';

var newTitle = '团贷网提醒您';
var Unit_expected = 0;
var Unit_commission = 0;
var LowerUnit = 0;
var maxUnit = 0;
var nowUnit = 0;
var perAmout = 0;
var RewardAmount = 0;
var projectId = null;
//
var totalInvest = 0;
var canGetPackage = 0;
var needInvest = 0;
var isNewUser = 0;
var areaInvest = 0;
var IsAwardOverdue = 0;
var isNewHandProject = false; //是否新手标
var RedPacketObj = {};//红包初始查询列表
var PrizeAddRate = 0; //选择加息券利率
var investProjectType = 0;//申购标的类型，1智享计划，0其他通用

/*弹出登录Div层*/
$(document).ready(function () {
    initLogin();
    //LOGO右边切换图片
    initLogoRightImages("index_ad", "index_slider", "index_num");
});

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
            if (index == len) {
                index = 0;
            }
        }, 4000);
    }).trigger("mouseleave");
}
// 通过控制top ，来显示不同的幻灯片
function index_showImg(index, outBox, inBox) {
    var adHeight = jQuery("." + outBox).height();
    jQuery("." + inBox).stop(true, false).animate({
        bottom: -adHeight * index
    }, 300);
}

function fnLogin() {
    Init();
    $("#txtPwd").val("");
    $(".tips").html("");
    $(".tips").css("visibility", "hidden");
    //$("#layer").show();
    //$("#login-window").show();
    fnLoginRedirect();
    $("#txtUser").focus();

}
function fnLoginRedirect()
{
    window.location.href = PassportWebUrl + "/2login?ret=" + encodeURIComponent(window.location.href);
}

function Init() {
    var cookieValue = jaaulde.utils.cookies.get("TDUserName");
    if (cookieValue != '' && cookieValue != null) {
        $("#txtUser").val(cookieValue);
        $("#cbRememberMe").attr("checked", true);
    } else {
        $("#txtUser").val("");
    }
}

function GetP(clsName, c) {
    return "<div class='" + clsName + "'>" + c + "</div>";
}
var fialcount = 0;

function ChangeClass(id, newclass) {
    if (newclass == "") {
        if ($(id).hasClass("red-border-input")) {
            $(id).removeClass("red-border-input");
        }
        if ($(id).hasClass("green-border-input")) {
            $(id).removeClass("green-border-input");
        }
    } else if (newclass == "red-border-input") {
        if (!$(id).hasClass("red-border-input")) {
            $(id).addClass("red-border-input");
        }
        if ($(id).hasClass("green-border-input")) {
            $(id).removeClass("green-border-input");
        }
    }
}


//登录错误次数大于等于3次，登录时需要验证码
function IsFailCountPassThree() {
    var userName = $("#txtUser").val()
    if (userName == "用户名/手机号/邮箱" || userName == "") {
        return false;
    }
    $.ajax({
        async: false,
        type: "post",
        url: "/ajaxCross/Login.ashx",
        dataType: "json",
        data: {
            Cmd: "GetLoginFailed",
            sUserName: userName
        },
        success: function (json) {
            fialcount = parseInt(json.result);
            if (parseInt(json.result) >= 3) {
                $("#divCode").show();
            } else {
                $("#divCode").hide();
            }
        }
    });
    return true;
}

function link(url) {
    location.href = url;
}
/*弹出申购框*/
//弹出申购层2015-08-18
function shengou(id, tendValue, title) {
    showDialWindowsWithoutBtn("加载中", "<img src=\"//js.tuandai.com/images/default/loading24.gif\" />&nbsp;正在加载页面，请稍候......");

    jQuery.ajax({
        async: true,
        type: "post",
        url: "/ajaxCross/ajax_invest.ashx",
        dataType: "json",
        data: {
            Cmd: "GetSubscribeDiv",
            projectId: id,
            unit: tendValue,
            type: investProjectType
        },
        success: function (jsonstr) {
            closeLoadingWindows();
            if (jsonstr.result == "1") {
                $("#art_UserName").html(jsonstr.list[0].UserName);
                $("#art_ProjectAmount").html(jsonstr.list[0].ProjectAmount);
                $("#art_ReTime").html(jsonstr.list[0].ReTime);
                $("#art_Rate").html(jsonstr.list[0].Rate);
                $("#txtLowerUnit").html(jsonstr.list[0].Unit);
                $("#art_ReType").html(jsonstr.list[0].ReType);
                var type = jsonstr.list[0].Type;
                if ((type == 1 || type == 3 || type == 5 || type == 9 || type == 10 || type == 11 || type == 15 || type == 22 || type == 23 || type == 19 || type == 20 || type == 29) && jsonstr.list[0].NewHandRate <= 0) {
                    $("#art_PublicRate").show();
                    //$("#art_PublicRate").html("<p><i class='i-1'></i>" + jsonstr.list[0].PRate + "</p><p class='padding-bottom-0'><i class='i-2'></i>" + jsonstr.list[0].TRate + "</p>");
                    var trate = "";
                    if (jsonstr.list[0].PRate && jsonstr.list[0].PRate != "发标人投标奖励【无】")
                        trate += "<p><i class='i-1'></i>" + jsonstr.list[0].PRate + "</p>";
                    if (jsonstr.list[0].TRate && jsonstr.list[0].TRate != "团贷网投标奖励【无】")
                        trate += "<p class='padding-bottom-0'><i class='i-2'></i>" + jsonstr.list[0].TRate + "</p>";
                    if (trate != "") {
                        $("#art_PublicRate").html(trate);
                    } else {
                        $("#art_PublicRate").hide();
                    }
                } else {
                    $("#art_PublicRate").hide();
                }
                $("#art_UserFund").html(jsonstr.list[0].UserFund + "元");
                if (type == 3) {
                    $("#txtMaxUnit1").html("我可申购：<span class='font-000' id='txtMaxUnit'>" + jsonstr.list[0].MaxUnit + "份</span>");
                    $("#PostData").html("确认认购");
                } else if (type == 21) {
                    var showTip = "<span class='tip-wrap inline-block-debug'><span class='tip'></span>" +
						"<i class='arrow' style='display: none'></i>" +
						"<span class='detail' style='left: -140px; width: 258px; display: none;'>" +
						"  您持有的活期宝金额。（每人最多持有10万元）" +
						"</span>" +
						"</span>";
                    $("#txtMaxUnit1").html("您的持有金额：<span class='font-000' id='txtMaxUnit'>" + GetConvertMoney(jsonstr.list[0].HQBAmount) + "元</span>&nbsp;<input type='hidden' id='hiMaxUnit' value='" + jsonstr.list[0].MaxUnit + "'/>" + showTip);
                    $("#PostData").html("确认出借");
                } else {
                    $("#txtMaxUnit1").html("我可申购：<span class='font-000' id='txtMaxUnit'>" + jsonstr.list[0].MaxUnit + "份</span>");
                    if (jsonstr.list[0].IsScribeTanfer == "false") {
                        $("#PostData").html("确认出借");
                    } else {
                        $("#PostData").html("确认承接");
                    }
                }
                //ZQZR MobileCode
                if (jsonstr.list[0].IsScribeTanfer == "True" && jsonstr.list[0].IsPassCode == "False") {
                    $("#MobileCode").css("border", "1px solid #d5d5d5").attr('placeholder', "请输入手机验证码");
                    $("#GetCode").html("发送验证码");
                    ctime = 0;
                    $("#dCode").show().addClass("abcd_1234");
                } else {
                    $("#dCode").hide().removeClass("abcd_1234");
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
                if (jsonstr.list[0].SMBType == "0" || (type == 23 && $("#art_PublicRate").css("display") == "none")) {
                    $("#p_Expected").hide();
                } else {
                    $("#p_Expected").show();
                }
                if (jsonstr.list[0].IsNewUser == "True" && jsonstr.list[0].Amount < 100000 && jsonstr.list[0].IsAwardOverdue == "False") {
                    $("#divPackage").show();
                    $("#lblPackage").html("温馨提示：您已累计投资" + GetConvertMoney(jsonstr.list[0].Amount) + "元，本次投资" + GetConvertMoney(jsonstr.list[0].NeedInvest) + "元，<br/>即可获" + jsonstr.list[0].CanGetPackage + "元红包！<a target='_blank' href='/pages/activity/20150211/index.aspx' style='color:#ed8900; text-decoration:underline;'>了解详情</a>");
                } else {
                    $("#divPackage").hide();
                }
                //债权转让:成功投资债权转让标三次后需正确输入图形验证码功能
                //if ((jsonstr.list[0].IsScribeTanfer == "True") && (jsonstr.list[0].SubZQZRCount >= 3)) {
                //    $("#verify_div").show();
                //    $("#imgCode").attr("src", "/ValidateCode.ashx");
                //} else {
                //    $("#verify_div").hide();
                //}
                $("#hiTotalInvest").val(jsonstr.list[0].Amount);
                $("#hiCanGetPackage").val(jsonstr.list[0].CanGetPackage);
                $("#hiNeedInvest").val(jsonstr.list[0].NeedInvest);
                $("#hiIsNewUser").val(jsonstr.list[0].IsNewUser);
                $("#hiIsAwardOverdue").val(jsonstr.list[0].IsAwardOverdue);
                $("#hiAreaInvest").val(jsonstr.list[0].AreaInvest);
                $("#hiIsScribeTanfer").val(jsonstr.list[0].IsScribeTanfer);
                $("#hiProjectDeadline").val(jsonstr.list[0].ProjectDeadline);
                $("#hiDeadType").val(jsonstr.list[0].DeadType);
                LowerUnit = parseFloat(jsonstr.list[0].LowerUnit);

                //处理红包显示列表 allen 2017-05-31 
                if (jsonstr.list[0].UserPrizeList) {
                    RedPacketObj = jsonstr.list[0].UserPrizeList;
                    if (RedPacketObj.Status == 1) {
                        $("#redpackform").html(getShowRedPacketList());
                        autoSelPrize("init");
                        //注册红包选择事件
                        selectMenu('.select-redbox .select-menu');
                    } else {
                        $("#redpackform").html('<div class="noselect-redbox"><span>无优惠券可用</span></div> ');
                    }
                }
               
                var jiaxi = $("#jiaxi");
                if (jiaxi != null) {
                    jiaxi.hide();
                }
                if (jsonstr.list[0].IsScribeTanfer == "false") {
                    if (type == 1 || type == 3 || type == 5) { //商友贷
                        $("#AgreeDiv").html("<label><input type='checkbox' id='ckbInvestAgree' checked='checked'/>我已阅读并同意</label><a class='font-orange' href='" + contractViewUrl + "/P2P/Web/ContractType1.html' target='_blank'>《团贷网商友贷合同》</a> <a class='font-orange' href='" + contractViewUrl + "/P2P/Web/RiskWarningContract.html' target='_blank'>《风险揭示书》</a>");
                        if (jiaxi != null) {
                            jiaxi.show();
                        }
                    } else if (type == 9 || type == 10 || type == 11 || type == 26) { //微团贷
                        $("#AgreeDiv").html("<label><input type='checkbox' id='ckbInvestAgree' checked='checked'/>我已阅读并同意</label><a class='font-orange' href='" + contractViewUrl + "/P2P/Web/ContractType" + type + ".html' target='_blank'>《团贷网微团贷合同》</a> <a class='font-orange' href='" + contractViewUrl + "/P2P/Web/RiskWarningContract.html' target='_blank'>《风险揭示书》</a>");
                        if (jiaxi != null) {
                            jiaxi.show();
                        }
                    } else if (type == 15 || type == 28) { //分期宝
                        $("#AgreeDiv").html("<label><input type='checkbox' id='ckbInvestAgree' checked='checked'/>我已阅读并同意</label><a class='font-orange' href='" + contractViewUrl + "/P2P/Web/fqbServiceContract.html' target='_blank'>《团贷网分期宝专区服务协议》</a> <a class='font-orange' href='" + contractViewUrl + "/P2P/Web/RiskWarningContract.html' target='_blank'>《风险揭示书》</a>");
                    } else if (type == 24 || type == 25 || type == 27 || type == 29 || type == 33) {
                        $("#AgreeDiv").html("<label><input type='checkbox' id='ckbInvestAgree' checked='checked'/>我已阅读并同意</label><a class='font-orange' href='" + contractViewUrl + "/P2P/Web/phkxServiceContract.html' target='_blank'>《团贷网分期宝借款协议》</a> <a class='font-orange' href='" + contractViewUrl + "/P2P/Web/RiskWarningContract.html' target='_blank'>《风险揭示书》</a>");
                    } else if (type == 6 || type == 7) { //资产标
                        $("#AgreeDiv").html("<label><input type='checkbox' id='ckbInvestAgree' checked='checked'/>我已阅读并同意</label><a class='font-orange' href='" + contractViewUrl + "/P2P/Web/ContractType" + type + ".html' target='_blank'>《团贷网资产标借款合同》</a> <a class='font-orange' href='" + contractViewUrl + "/P2P/Web/RiskWarningContract.html' target='_blank'>《风险揭示书》</a>");
                    } else if (type == 18) { //私募宝
                        $("#AgreeDiv").html("<label><input type='checkbox' id='ckbInvestAgree' checked='checked'/>我已阅读并同意</label><a class='font-orange' href='" + contractViewUrl + "/P2P/Web/ContractType18_" + jsonstr.list[0].SmbProfitTypeId + ".html' target='_blank'>《团贷网私募宝合同》</a>  <a class='font-orange' href='" + contractViewUrl + "/P2P/Web/RiskWarningContract.html' target='_blank'>《风险揭示书》</a>");
                        if (jiaxi != null && jsonstr.list[0].SMBType != "0") {
                            jiaxi.show();
                        }
                    } else if (type == 19 || type == 20 || type == 36) { //供应链
                        $("#AgreeDiv").html("<label><input type='checkbox' id='ckbInvestAgree' checked='checked'/>我已阅读并同意</label><a class='font-orange' href='" + contractViewUrl + "/P2P/Web/ContractType" + type + ".html?deadtype=" + jsonstr.list[0].DeadType + "' target='_blank'>《团贷网供应链借款协议》</a> <a class='font-orange' href='" + contractViewUrl + "/P2P/Web/RiskWarningContract.html' target='_blank'>《风险揭示书》</a>");
                    } else if (type == 21) { //活期宝
                        $("#AgreeDiv").html("<label><input type='checkbox' id='ckbInvestAgree' checked='checked'/>我已阅读并同意</label><a  class='font-orange' href='" + contractViewUrl + "/P2P/Web/ContractType" + type + ".html' target='_blank'>《活期宝借贷合同》</a> <a class='font-orange' href='" + contractViewUrl + "/P2P/Web/RiskWarningContract.html' target='_blank'>《风险揭示书》</a>");
                    } else if (type == 22 || type == 23) { //项目宝
                        $("#AgreeDiv").html("<label><input type='checkbox' id='ckbInvestAgree' checked='checked'/>我已阅读并同意</label><a class='font-orange' href='" + contractViewUrl + "/P2P/Web/ContractType" + type + ".html' target='_blank'>《团贷网项目宝合同》</a> <a class='font-orange' href='" + contractViewUrl + "/P2P/Web/RiskWarningContract.html' target='_blank'>《风险揭示书》</a>");
                        if (jiaxi != null && type == 22) {
                            jiaxi.show();
                        }
                    } else if (type == 40) { //一点车贷沿用车贷的合同
                        $("#AgreeDiv").html("<label><input type='checkbox' id='ckbInvestAgree' checked='checked'/>我已阅读并同意</label><a class='font-orange' href='" + contractViewUrl + "/P2P/Web/ContractType40.html' target='_blank'>《团贷网微团贷借款合同》</a> <a class='font-orange' href='" + contractViewUrl + "/P2P/Web/RiskWarningContract.html' target='_blank'>《风险揭示书》</a>");
                    } else if (type == 31) {
                        $("#AgreeDiv").html("<label><input type='checkbox' id='ckbInvestAgree' checked='checked'/>我已阅读并同意</label><a class='font-orange' href='" + contractViewUrl + "/P2P/Web/ContractType31.html' target='_blank'>《团贷网分期宝借款协议》</a>  <a class='font-orange' href='" + contractViewUrl + "/P2P/Web/RiskWarningContract.html' target='_blank'>《风险揭示书》</a>");
                    } else if (type == 32) {
                        $("#AgreeDiv").html("<label><input type='checkbox' id='ckbInvestAgree' checked='checked'/>我已阅读并同意</label><a class='font-orange' href='" + contractViewUrl + "/P2P/Web/ContractType32.html' target='_blank'>《团贷网微团贷借款合同》</a>  <a class='font-orange' href='/member/contract/RiskWarningContract.html' target='_blank'>《风险揭示书》</a>");
                    } else if (type == 37 || type == 38) { //智享计划
                        $("#AgreeDiv").html("<label><input type='checkbox' id='ckbInvestAgree' checked='checked'/>我已阅读并同意</label><a class='font-orange' href='" + contractViewUrl + "/p2p/web/contractType37.html' target='_blank'>《团贷网智享计划合同》</a> <a class='font-orange' href='" + contractViewUrl + "/P2P/Web/RiskWarningContract.html' target='_blank'>《风险揭示书》</a>");
                    }

                } else {
                    $("#art_PublicRate").hide();
                    $("#AgreeDiv").html("<label><input type='checkbox' id='ckbInvestAgree' checked='checked'/>我已阅读并同意</label><a class='font-orange' href='" + contractViewUrl + "/P2P/Web/ContractZqzr.html' target='_blank'>《债权转让协议》</a>  <a class='font-orange' href='" + contractViewUrl + "/P2P/Web/RiskWarningContract.html' target='_blank'>《风险揭示书》</a>");
                }
                $("#TranPwd").val("");
                $("#IsTenderNeedPayPassword").removeAttr("checked");

                shengouInit();
                showMyTip(".tip-wrap", ".tip-wrap .arrow, .detail", ".tip-wrap .arrow, .detail");
                //closeLoadingWindows();
                showDiv();
            } else if (jsonstr.result == "-5") { //非新手投资新手标
                showNewHandWarning();
            } else {
                dialogTip("<div style='color:gray;font-size:13px;line-height:21px;'>" + jsonstr.msg + "</div>");
            }
        },
        error: function (a, b, c) {
            dialogTip("<div style='color:gray;font-size:13px;line-height:21px;'>" + c + "</div>");
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

function GetConvertMoney(money) {
    var amount = Math.floor(money * 100) / 100;
    return amount.toFixed(2).replace(".00", "");
}
//弹出申购层2015-08-18
function showDiv() {
    $("#td-art").show();
    $('#td-atr-layer').remove();
    $("<div id='td-atr-layer' class='z100'>").appendTo('body');
    var z_index = 0;
    //$('#td-atr-layer').addClass(.css({ "z-index": 111111111 });
    $('#td-art').addClass("z101");
    //    $("*").each(function () {
    //        if (parseInt($(this).css("z-index")) > z_index) {
    //            z_index = $(this).css("z-index");
    //        }
    //        $('#td-atr-layer').css({ "z-index": z_index });
    //        $('#td-art').css({ "z-index": z_index + 1 });
    //    });
    outW = $('#td-art').outerWidth() / 2;
    $('#td-art').css({
        'margin-left': -outW
    });
    $('#td-art .invent-form').find('i').mouseenter(function () {
        $('#td-art .invent-form').find('i').css({
            "z-index": "1"
        });
        $(this).css({
            "z-index": "2"
        });
    });
    $('#recharge-art').find('.form-box').find('i').mouseenter(function () {
        $(this).parent().find('i').css({
            "z-index": "0"
        });

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
        return false
    });
    $('#td-art').find('.close').bind("click", function () {
        $(this).parents('#td-art').fadeOut(200);

        $('#td-atr-layer').remove();
        $('#diallayer').hide();
        $('#layer').hide();
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
                if (deadType == "2" && deadline >= 60) {
                    deadline = deadline / 30
                }
                var _deadLine = 12.00;
                var monthRate = interestRate * 0.010000000000 / _deadLine;
                var tempAmount = 0.00,
					tempInterestAmount = 0.00,
					tempAmountAndInterest = 0.00,
					totalInterest = 0.00,
					totalAmount = 0.00;
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

function limitPaste(fn) {
    jQuery(fn).bind({
        copy: function () {
            return false;
        },
        paste: function () {
            return false;
        },
        cut: function () {
            return false;
        },
        contextmenu: function () {
            return false;
        }
    });
}

function limitSelectText(fn) {
    jQuery(fn).bind({
        selectstart: function () {
            return false;
        }
    });
}

//给申购按钮加事件
function investInitActive() {
    //限制输入数字
    limitInt($('.jiek_Share2'));
    //禁用复制粘贴事件
    limitPaste($('.jiek_Share2'));

    limitSelectText($(".jiek_minus2"));
    limitSelectText($(".jiek_plus2"));

    //格式化输入份数
    $('.jiek_Share2').blur(function () {
        if ($.trim($(this).val()).replace('份', '').replace(' ', '') == '0' || $.trim($(this).val()).replace('份', '').replace(' ', '') == '') {
            $(this).val('1 份');
        } else if (parseInt($.trim($(this).val()).replace('份', '').replace(' ', '')) > parseInt($(this).attr('maxShare'))) {
            $(this).val($(this).attr('maxShare') + ' 份');
        } else {
            $(this).val($.trim($(this).val()).replace('份', '').replace(' ', '') + ' 份');
        }
    });
    //减去
    $(".jiek_minus2").unbind("click");
    $('.jiek_minus2').click(function () {
        var obj = $(this).parent().find('input');
        var currentShare = $(obj).val().replace('份', '').replace(' ', '');
        if (currentShare > 1) {
            $(obj).val((parseInt(currentShare) - 1) + ' 份');
        }
    });
    //增加
    $(".jiek_plus2").unbind("click");
    $('.jiek_plus2').click(function () {
        var obj = $(this).parent().find('input');
        var currentShare = $(obj).val().replace('份', '').replace(' ', '');
        if (currentShare != $(obj).attr('maxShare')) {
            $(obj).val((parseInt(currentShare) + 1) + ' 份');
        }
    });

    //申购按钮事件
    $(".jiek_action2").unbind("click");
    $('.jiek_action2').click(function (event) {
        var id = $(this).attr('attrid');
        var title = $(this).attr('protitle');
        var tendValue = '1';
        tendValue = $(this).prev().find('.jiek_Share2').val().replace('份', '').replace(' ', '');

        if (!isCookieLogin()) {
            oldpid = id;
            tendval = tendValue;
            protitle = title;
            fnLogin();
        } else {

            try {
                //-------存管通验证---2016-11-17----
                if (IsOpenCGT == "1" && isOpenCgtSub == "1" && !checkIsOpen("touzi"))
                    return false;
                //-------存管通验证结束----------
            } catch (e) {

            }

            investProjectType = $(this).attr("attrType") || 0;
            shengou(id,tendValue,title);
        }
        event.stopPropagation(); //  阻止事件冒泡
    });

    //申购按钮事件
    $(".jiek_action").unbind("click");
    $('.jiek_action').click(function (event) {
        var id = $(this).attr('attrid');
        var title = $(this).attr('protitle');

        if (!isCookieLogin()) {
            oldpid = id;
            tendval = '1';
            protitle = title;
            fnLogin();
        } else {

            try {
                //-------存管通验证---2016-11-17----
                if (IsOpenCGT == "1" && isOpenCgtSub == "1" && !checkIsOpen("touzi"))
                    return false;
                //-------存管通验证结束----------
            } catch (e) {

            }

            investProjectType = $(this).attr("attrType") || 0;
            shengou(id,1,title);
        }
        event.stopPropagation(); //  阻止事件冒泡
    });

    $('.join_action').click(function () {
        if (!isCookieLogin()) {
            fnLogin();
        } else {
            var id = $(this).attr('attrid');
            var title = $(this).attr('protitle');

            showDialWindowsWithoutBtn(title, "<img src=\'//js.tuandai.com/images/default/loading24.gif\' />&nbsp;正在加载页面，请稍候......");

            $.ajax({
                async: true,
                type: 'get',
                url: '/pages/weplan/weplan_dialog.aspx?productId=' + id + '&unit=1',
                success: function (data) {
                    closeLoadingWindows();
                    showDialWindowsWithoutBtn(title, data);
                },
                cache: false
            });
        }
    });
}

function shengouInit() {
    projectId = $("#PostData").attr("projectid");
    nowUnit = $("#txtUnit").val().replace("份", "").replace(" ", "");
    if ($("#hiProjectType").val() == "21") {
        maxUnit = $("#hiMaxUnit").val();
    } else {
        maxUnit = $("#txtMaxUnit").text().replace("份", "").replace(" ", "");
    }

    if (parseInt(nowUnit) < 1) {
        nowUnit = 1;
    }
    if (parseInt(maxUnit) > 0) {
        Unit_expected = $("#PostData").attr("attr_expected") / nowUnit;
        Unit_commission = $("#PostData").attr("attr_commission") / nowUnit;
    } else {
        nowUnit = 0;
        $("#txtUnit").val(nowUnit);
    }
    // PublicRate = $(".shengou_Award_01").attr("attrid");
    // TuandaiRate = $(".shengou_Award_02").attr("attrid");
    perAmout = $("#btnPlus").attr("attrid");
    RewardAmount = $("#btnPlus").attr("RewardAmount");

    LowerUnit = $("#hiUnit").val();
    //计算收益
    SaveChanges(nowUnit)
    //
    totalInvest = $("#hiTotalInvest").val();
    canGetPackage = $("#hiCanGetPackage").val();
    needInvest = $("#hiNeedInvest").val();
    isNewUser = $("#hiIsNewUser").val();
    areaInvest = $("#hiIsAwardOverdue").val();
    IsAwardOverdue = $("#hiAreaInvest").val();
}

function AddOrSubtract(type) {
    var oldUnit = 0;
    nowUnit = $("#txtUnit").val();
    if ('' == nowUnit) {
        oldUnit = 0;
    } else {
        oldUnit = parseInt(nowUnit);
    }
    if ('Plus' == type) {
        if (oldUnit < parseInt(maxUnit)) {
            nowUnit = parseInt(oldUnit) + 1;
        } else {
            nowUnit = parseInt(maxUnit);
        }
    } else if ('Minus' == type) {
        nowUnit = parseInt(oldUnit) - 1;
        if (parseInt(nowUnit) < 1) {
            return;
        }
    }

    $("#txtUnit").val(nowUnit);
    if (nowUnit != oldUnit) {
        SaveChanges(nowUnit);
    }
}

//计算收益
function SaveChanges(nowUnit) {
    nowUnit = $("#txtUnit").val().replace("份", "").replace(" ", "");
    var InterestAmount = 0;
    if (nowUnit == "") {
        nowUnit = 0;
    }

    var deadline = 0;
    var Profit = 0;
    if ($("#hiIsScribeTanfer").val() == "True") {
        deadline = parseInt($("#hiDeadline").val());
        var interestAmountDeadLime = (parseInt(nowUnit) * parseFloat(LowerUnit)) * parseFloat($("#hiInterestRate").val()) * 0.01 / 365 * deadline;
        Profit = Math.floor(Number(interestAmountDeadLime) * 100) / 100;
    } else {
        deadline = parseInt($("#hiProjectDeadline").val());
        Profit = GetInterestAmount((parseInt(nowUnit) * parseFloat(LowerUnit)), parseInt($("#hiRepaymentType").val()), deadline, parseFloat($("#hiInterestRate").val()));
    }
    var NewHandRate = parseFloat($("#hiNewHandRate").val());
    var RewardAmount = parseFloat(RewardAmount * nowUnit); //团贷或借款人奖励金额
    if (isNaN(RewardAmount)) {
        RewardAmount = 0;
    }

    var type = parseInt($("#hiProjectType").val());
    if (type == 15 || type == 20 || NewHandRate > 0) { //分期宝及供应链的奖励
        //var RewardRate = parseFloat($("#txtPublicRate").html().replace("%", "").replace("无", "0")) + parseFloat($("#txtTuandaiRate").html().replace("%", "").replace("无", "0"));
        var RewardRate = parseFloat($("#txtPublicRate").val()) + parseFloat($("#txtTuandaiRate").val());
        if (NewHandRate > 0)
            RewardRate += NewHandRate;
        RewardAmount = GetInterestAmount((parseInt(nowUnit) * parseFloat(LowerUnit)), parseInt($("#hiRepaymentType").val()), deadline, RewardRate);
    }

    Profit = parseFloat(Profit) + parseFloat(RewardAmount);
    if (type == 21) {
        //活期宝收益单独处理
        var hqbAmount = parseFloat($("#hiHQBAmount").val());
        nowUnit = parseFloat(nowUnit);
        if ((hqbAmount + nowUnit) < 100) {
            $("#txtExpected").html("持有金额低于100元将不产生收益");
        } else {
            var showTip = "<span class='tip-wrap inline-block-debug'><span class='tip'></span>" +
				"<i class='arrow' style='display: none'></i>" +
				"<span class='detail' style='left: -140px; width: 230px; display: none;font-weight:normal'>" +
				"资金转入活期宝后，次日开始计算收益，<br/>第三天首笔收益到账，转入到可用余额" +
				"</span>" +
				"</span>";
            if (nowUnit < 100) {
                $("#txtExpected").html("<0.01元/天 &nbsp;" + showTip);
            } else {
                Profit = parseInt(nowUnit) * parseFloat(LowerUnit) * 0.01 * parseFloat($("#hiInterestRate").val()) / 365;
                $("#txtExpected").html(fmoney((Math.floor(Number(Profit) * 100) / 100).toString()) + "元/天 &nbsp;" + showTip);
            }
            showMyTip(".tip-wrap", ".tip-wrap .arrow, .detail", ".tip-wrap .arrow, .detail");
        }
    } else {
        $("#txtExpected").text(fmoney((Math.floor(Number(Profit) * 100) / 100).toString()) + "元");
    }
    $("#txtInvestAmount").text(fmoney((parseInt(nowUnit) * parseFloat(LowerUnit)).toFixed(2)) + "元");
}

var ctime = 0;//验证码倒计时
$(function () {
    $("#PostData").click(function () {
        $("#PostData").removeAttr("href");

        try {
            //-------存管通验证---2016-11-17----
            if (IsOpenCGT == "1" && isOpenCgtSub == "1" && !checkIsOpen("touzi"))
                return false;
            //-------存管通验证结束----------
        } catch (e) {

        }

        if ($("#ckbInvestAgree").attr("checked") != "checked") {
            dialogTip("<div style='color:gray;line-height:21px;'>您还未阅读并同意服务协议！</div>");
            return;
        }
        if ($(".abcd_1234").length > 0) {  //需要验证手机验证码
            if ("" == $("#MobileCode").val()) {
                $("#MobileCode").focus();
                return;
            }
        }
        if ($("#hiNeedPassWord").val() == "True") { //需要验证交易密码
            if ("" == $("#TranPwd").val()) {
                $("#TranPwd").focus();
                return;
            }
            if ($("#IsTenderNeedPayPassword").attr("checked") == "checked") { //设置以后投标不在输入密码
                var str = SaveIsTenderNeedPayPassword();
                if (str == false) {
                    return;
                }
            }
        }
        if ("" == $("#txtUnit").val()) {
            $("#txtUnit").focus();
            return;
        }
        //if ($("#verify_div").css("display") === 'block') { //图像验证码如果可视，需输入验证码
        //    if ($("#txtVerifyCode").val() == "") {
        //        $("#txtVerifyCode").focus();
        //        return;
        //    }
        //}
        var nowUnit = $("#txtUnit").val().replace("份", "").replace(" ", "");
        if (maxUnit > 0 && parseInt(nowUnit) < 1) {
            nowUnit = 1;
        }
        if ('' == nowUnit) {
            nowUnit = maxUnit;
        } else {
            nowUnit = parseInt(nowUnit);
        }
        if (nowUnit < 1) {
            dialogTip("<div style='color:gray;line-height:21px;'>您还未选择投资份数!</div>");
            $("#txtUnit").focus();
            return;
        }
        var tendValue = (parseInt(nowUnit) * parseFloat(LowerUnit)).toFixed(2);
        if (isNewHandProject) {
            var newHandMax = _NewHandMax || 0;
            if (tendValue > newHandMax) {
                dialogTip("<div style='color:gray;font-size:13px;line-height:21px;'>新手标每位用户仅有一次机会，最高限投" + newHandMax + "元</div>");
            } else {
                //判断是否首次申购
                $.ajax({
                    url: "/ajaxCross/ajax_invest.ashx",
                    type: "post",
                    dataType: "json",
                    data: {
                        Cmd: "IsFirstSubscribe"
                    },
                    success: function (json) {
                        if (json.msg == "0") {
                            showNewHandWarning();
                            return;
                        } else {
                            PostFinalDataNew(projectId, tendValue, nowUnit);
                        }
                    }
                });
            }
            return;
        }
        PostFinalDataNew(projectId, tendValue, nowUnit);
    });

    $("#txtUnit").keyup(function () {
        $this = $(this);
        var thevalue = $this.val().toString().replace(/[^\d]+/, "");
        $this.val(thevalue);
        $("#txtUnit").val(thevalue);
        if (parseInt($this.val()) <= 0) {
            $this.val("1");
        } else if (parseInt($this.val()) > parseInt(maxUnit)) {
            $this.val(maxUnit);
        }
        SaveChanges($this.val());
    });

    $("#btnPlus").click(function () {
        AddOrSubtract("Plus");
    });
    $("#btnMinus").click(function () {
        AddOrSubtract("Minus");
    });
    //全额
    $("#AllInvest").click(function () {
        $("#txtUnit").val(maxUnit);
        SaveChanges(maxUnit);
    });

    $("#TranPwd").keyup(function () {
        if ($("#art_PayPassword").attr("class") == "pass-word pass-word-err") {
            $("#art_PayPassword").attr("class", "pass-word");
            $("#TranPwd").attr('placeholder', "请输入交易密码");
        }
    });
    //发送验证码
    $("#GetCode").bind("click", function () {
        if (ctime > 0) {
            return;
        }
        ctime = 60;
        //MobileCode
        $("#GetCode").html("发送中...");
        $.ajax({
            url: "/ajaxCross/TenderRequest.ashx",
            type: "post",
            dataType: "json",
            data: {
                Cmd: "GetCodeByZQZR"
            },
            success: function (json) {
                if (json.result == "1") {
                    $("#GetCode").html(ctime + "s");
                    $("#MobileCode").attr('placeholder', "验证码发送成功");
                    var timeSub = setInterval(function () {
                        ctime--;
                        $("#GetCode").html(ctime + "s");
                        if (ctime < 1) {
                            $("#GetCode").html("发送验证码");
                            $("#MobileCode").attr('placeholder', "请输入手机验证码");
                            clearInterval(timeSub);
                        }
                    }, 1000);
                } else {
                    $("#MobileCode").attr('placeholder', json.msg);
                    if (json.result == "-190") {
                        $("#MobileCode").attr('placeholder', "");
                        showDialWindows(newTitle, "<div style='color:gray;line-height:21px;'>您今天的验证码已用完，请您明天再来抢债权转让标</div>", "确定", function () {
                            window.location.href = "/pages/weplan/welist.aspx";
                        }, null, null);
                    } else if (json.result == "-180") {
                        $("#MobileCode").attr('placeholder', "");
                        showDialWindows(newTitle, "<div style='color:gray;line-height:21px;'>您当前操作过于频繁，请" + json.msg.substr(json.msg.indexOf("_") + 1, json.msg.length - json.msg.indexOf("_") - 1) + "s后再来操作</div>", "确定", function () {
                            $("#dial-window").hide();
                            $("#td-art").hide();
                            $("#td-atr-layer").hide();
                            $("#diallayer").hide();
                        }, null, null);
                    }
                    $("#GetCode").html("发送验证码");
                    ctime = 0;
                }
            }
        });
    });

    if (isExitsFunction("initProjectFormEvent")) {
        //注册红包选择框事件
        initProjectFormEvent();
    }
});

function isExitsFunction(funcName) {
    try {
        if (typeof (eval(funcName)) == "function") {
            return true;
        }
    } catch (e) { }
    return false;
}
var investlock = 0;

function PostFinalDataNew(id, tendValue, nowUnit) {
    if (parseInt(investlock) > 0) {
        investlock = parseInt(investlock) + 1;
        dialogTip("<div style='color:gray;line-height:21px;'>申购过于频繁,连续申购要超过30秒,请稍后重新申购！</div>");
        if (parseInt(investlock) == 1) {
            window.setTimeout("fun_investlock()", 30000);
        }
        return;
    }
    var sign = 0;
    try {
        if (IsOpenCGT == "1")
            sign = 1;
    }
    catch (e) { }
    if (sign == 0)
        showDialWindowsWithoutBtn(newTitle, "<div style='color:gray;line-height:21px;'><img src=\"//js.tuandai.com/images/default/loading24.gif\" />&nbsp;正在投标中，请稍后...</div>");

    investlock = 1;
    var tranpwd = $("#TranPwd").val();
    if (undefined == tranpwd)
        tranpwd = "";

    var projectType = parseInt($("#hiProjectType").val());
    var sVerCode = $("#txtVerifyCode").val();
    var mobileCode = $("#MobileCode").val();
    var prizeId = $("#redValue").attr("prizeid");
    if (prizeId == undefined)
        prizeId = "";

    if ($("#hiNeedPassWord").val() == "True" && sign == 1) {
        sign = 1;
    }
    $.ajax({
        url: "/ajaxCross/TenderRequest.ashx",
        type: "post",
        dataType: "json",
        data: {
            Cmd: "addloan",
            bid: id,
            tendAmount: tendValue,
            TranPwd: tranpwd,
            unit: nowUnit,
            isNewHandProject: isNewHandProject,
            sVerCode: sVerCode,
            code: mobileCode,
            sign: sign,
            PrizeId: prizeId,
            projectType: projectType
        },
        async: false,
        success: function (json) {
            var d = json.result;
            investlock = 0;
            if (d == "-999") {
                checkCount = 0;
                AsyncGetBuyProjectStutas(id, tendValue, nowUnit, json);
            } else if (d == "8888") {

                $("#layer").hide();
                $("#td-art").hide();
                $("#dial-window").hide();
                $("#td-atr-layer").hide();
                $("#diallayer").show();
                $("#bankBindAlert").show();
                SetWenXinRemind("touzi");

                var url = unescape(json.msg);
                //$("#PostData").attr("href", url);
                var blankA = $("#blank_a");
                if (blankA.length == 0) {
                    $("body").append("<a id='blank_a' style='display:none' target='_blank'><span></span></a>");
                }
                $("#blank_a").attr("href", url).find("span").click();

            } else {
                ShowBuProjectStutas(id, tendValue, nowUnit, json);
            }
        }
    });
}

//异步请求申购结果
function AsyncGetBuyProjectStutas(id, tendValue, nowUnit, jsonData) {
    var d = jsonData.result;
    var msg = jsonData.msg;
    var subscribeId = jsonData.msg.split("|")[1];
    $.ajax({
        url: "/ajaxCross/TenderRequest.ashx",
        type: "post",
        dataType: "json",
        cache: false,
        data: {
            Cmd: "GetSubscribeStatus",
            subscribeId: subscribeId
        },
        success: function (json) {
            investlock = 0;
            if (json.result == "-998") {
                //2秒后再执行一次查询
                setTimeout(function () {
                    AsyncGetBuyProjectStutasAgain(id, tendValue, nowUnit, jsonData);
                }, 2000);
            } else {
                ShowBuProjectStutas(id, tendValue, nowUnit, json);
            }
        }
    });
}

//延时再次请求结果
var checkCount = 0;

function AsyncGetBuyProjectStutasAgain(id, tendValue, nowUnit, jsonData) {

    //console.debug("第"+checkCount+1+"次查询");
    if (checkCount < 3) {
        checkCount++;
        AsyncGetBuyProjectStutas(id, tendValue, nowUnit, jsonData);
    } else {
        showDialWindowsWithoutBtn(newTitle, "<div style='color:gray;line-height:21px;'><img src=\"//js.tuandai.com/images/default/loading24.gif\" />&nbsp;投标失败，请稍后再试...</div>");
    }
}
//显示购买计划
function ShowBuProjectStutas(id, tendValue, nowUnit, jsonData) {

    var d = jsonData.result;
    var msg = jsonData.msg;
    if (d != "1") {
        if (d == "-22") {
            dialogTip("<div style='color:gray;line-height:21px;'>您的可用金额不足，请充值!&nbsp;&nbsp;&nbsp;&nbsp;【<a href=\"/member/Bank/Recharge.aspx\" target=\"_blank\" class=\"b\">立即充值</a>】</div>");
        } else if (d == "-11") {
            showDialWindows(newTitle, "<div style='color:gray;line-height:21px;'>为保证您的合法权益,请完成所有信息验证之后进行投标！</div>", "马上验证", function () {
                window.location.href = "/member/Validate/index.aspx";
            }, null, null);
        } else if (d == "-99") {
            showDialWindows(newTitle, "<div style='color:gray;line-height:21px;'>您好，请先登录后再进行投标操作。</div>", "马上登录", function () {
                window.location.href = "/user/login.aspx?ReturnUrl=" + window.location.href;
            }, null, null);
        } else if (d == "-112") {
            showDialWindows(newTitle, "<div class='lh24 tl g3 mt10 pl30'>您尚未进行风险承受能力评测，请先完成评测后<br/>再进行投资</div>", "立即测评",
            function () {
                window.location.href = ActivityWebsiteUrl + "/web/20170309test/index.aspx?tdfrom=" + decodeURIComponent(location.href);
            }, null, null);
            $("#divTiQian").html("您今年还有3次评估机会").attr("style", "font-size: 12px; padding: 15px 0px 10px 5px; color:#999;").show();
        } else if (d == "-15") {
            dialogTip(msg);
            $("#art_PayPassword").attr("class", "pass-word pass-word-err");
            $("#TranPwd").val("");
            $("#TranPwd").attr('placeholder', msg);
        } else if (d == "-4") {
            dialogTip(msg);
            $("#imgCode").attr("src", "/ValidateCode.ashx");
        } else if (d = "-111") {
            dialogTip(msg);
            $("#MobileCode").css("border", "1px solid #ff0000").val("").attr('placeholder', msg);
        } else {
            dialogTip(msg);
            $("#art_PayPassword").attr("class", "pass-word");
        }
    } else if (d == "1") {
        var tipContent = "<div style='color:gray;line-height:21px;text-align:center;'>恭喜您，您投标{tendValue}元已经成功。</div>".replace("{tendValue}", tendValue);
        if (jsonData.IsSelPrize == 1) {
            var prizeicon = "icon-fail";
            if (jsonData.PrizeStatus == 1) {
                if (jsonData.PrizeType == 1)
                    prizeicon = "icon-quan";
                else
                    prizeicon = "icon-red";
            }
            tipContent += "<div class='coup-description'><span class='coupon-icon " + prizeicon + "'></span>" + jsonData.UserPrizeDesc + "</div>";
        }
        if (isNewUser == "True" && IsAwardOverdue == "False") {
            var m_areaInvest = areaInvest;
            var m_canGetPackage = canGetPackage;

            if (needInvest > 0 && tendValue >= needInvest) {

                if ((parseFloat(totalInvest) + parseFloat(tendValue)) >= 1000) {
                    m_areaInvest = 1000;
                    m_canGetPackage = 5;
                }
                if ((parseFloat(totalInvest) + parseFloat(tendValue)) >= 8000) {
                    m_areaInvest = 8000;
                    m_canGetPackage = 15;
                }
                if ((parseFloat(totalInvest) + parseFloat(tendValue)) >= 20000) {
                    m_areaInvest = 20000;
                    m_canGetPackage = 20;
                }
                if ((parseFloat(totalInvest) + parseFloat(tendValue)) >= 50000) {
                    m_areaInvest = 50000;
                    m_canGetPackage = 160;
                }
                if ((parseFloat(totalInvest) + parseFloat(tendValue)) >= 100000) {
                    m_areaInvest = 100000;
                    m_canGetPackage = 188;
                }

                tipContent += "<div style='color:#ed8900;line-height:21px; margin-top:15px;text-align:center;'>您已累计投资超过" + m_areaInvest + "元，获" + m_canGetPackage + "元红包！赶快领取吧！</div><div style=\"margin:0 auto; margin-top:15px; margin-bottom:55px; width:140px;\"><div onclick=\"javascript:location.href=location.href;\" style=\"float:left;display:block; width:77px;height:24px; background:url(//js.tuandai.com/images/default/bg_ctIvst.png?v=20150619001); text-align:center; cursor:pointer;\"><span style=\"line-height:24px; color:white; font-size:13px;\">继续投资</span></div><a href=\"/member/my_prize.aspx\" style=\"color:#999999; font-size:13px; text-decoration:underline; float:left; padding:4px 0px 0px 8px;\">领取红包</a></div>";
                showDialWindowsWithoutBtn(newTitle, tipContent);
                $('#dial-window').find('.close').attr("isrefresh", "1");
                return;
            }
        } else {
            var projectType = parseInt($("#hiProjectType").val());
            showDialWindows(newTitle, tipContent,
				"继续投资",
				function () {
				    window.location.reload();
				},
				"查看投资记录",
				function () {
				    if (projectType == 18) {
				        window.location.href = portalWebsiteUrl + "/member/account_smbAll.aspx";
				    } else if (projectType == 22 || projectType == 23) {
				        window.location.href = portalWebsiteUrl + "/member/XiangMuBao/account_xmbAll.aspx";
				    } else if (projectType == 21) {
				        window.location.href = portalWebsiteUrl + "/member/account_hqb.aspx";
				    } else if (projectType == 12) {
				        window.location.href = portalWebsiteUrl + "/member/account_loanInFangBaoBao.aspx";
				    } else if (projectType == 37) {
				        window.location.href = (portalWebsiteUrlTdw || "//www.tdw.cn") + "/member/account_zxloaninbid.aspx";
				    } else {
				        var isScribeTanfer = $("#hiIsScribeTanfer").val();
				        if (isScribeTanfer == "True")
				            window.location.href = portalWebsiteUrl + "/member/account_bondsundertake.aspx";
				        else
				            window.location.href = portalWebsiteUrl + "/member/account_loaninbid.aspx";
				    }
				});
            $('#dial-window').find('.close').attr("isrefresh", "1");
        }
    }
}

function fun_investlock() {
    investlock = 0;
}

function dialogTip(str) {
    ////删除其他弹出层
    //var list = art.dialog.list;
    //for (var i in list) {
    //    list[i].close();
    //};
    //art.dialog({
    //    zIndex: 999999999,
    //    width: 300,
    //    time: 5,
    //    title: newTitle,
    //    content: str
    //});
    // $("#td-art").hide();
    showDialWindowsWithoutBtn(newTitle, str);
    $("#diallayer").show();
}

//保存下次不需要输入支付密码
function SaveIsTenderNeedPayPassword() {
    var TranPwd = $("#TranPwd").val();
    var result = false;
    $.ajax({
        async: false,
        type: "POST",
        url: "/ajaxCross/TenderRequest.ashx",
        dataType: "json",
        data: {
            Cmd: "SaveIsTenderNeedPayPassword",
            tranpwd: TranPwd
        },
        success: function (json) {
            var d = json.result;
            if (d == "1") {
                result = true;
            } else if (d == "-99") {
                //art.dialog({
                //    zIndex: 999999999,
                //    width: 300,
                //    title: newTitle,
                //    content: "<div style='color:gray;font-size:13px;line-height:21px;'>您好，请先登录后再进行投标操作。</div>",
                //    okVal: '马上登录',
                //    ok: function () {
                //        window.location.href = "/View/login.aspx?ReturnUrl=" + window.location.href;
                //    }
                //});
                showDialWindows(newTitle, "<div style='color:gray;line-height:21px;'>您好，请先登录后再进行投标操作。</div>", "马上登录", function () {
                    console.log(213);
                    window.location.href = "/user/login.aspx?ReturnUrl=" + window.location.href;
                }, null, null);
                result = false;
            } else if (d == "-2") {
                dialogTip("<div style='color:gray;line-height:21px;'>操作失败：请输入交易密码！</div>");
                result = false;
            } else if (d == "-3") {
                dialogTip("<div style='color:gray;line-height:21px;'>操作失败：用户不存在！</div>");
                result = false;
            } else if (d == "-4") {
                dialogTip("<div style='color:gray;line-height:21px;'>操作失败：" + json.msg + "</div>");
                result = false;
            } else if (d == "-5") {
                dialogTip("<div style='color:gray;line-height:21px;'>操作失败：交易密码已错误5次，请24小时后再进行此操作！</div>");
                result = false;
            } else if (d == "0") {
                dialogTip("<div style='color:gray;line-height:21px;'>操作失败：系统异常请稍后在试！</div>");
                result = false;
            }
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            dialogTip("<div style='color:gray;line-height:21px;'>操作失败：网络异常！</div>");
            result = false;
        }
    });
    return result;
}
// /*悬浮导航 收缩

/**
 * 非新手投资新手标弹出警告弹框
 */
function showNewHandWarning() {
    var showDiv = $("#div_showNewHandWarning");
    if (showDiv.length > 0) {
        $("#div_showNewHandWarning").show();
    } else {
        var html = '<div class="dial-window dial-window-prompt z103" id="div_showNewHandWarning" >' +
			'<div class="body">' +
			'<div class="promptbox">' +
			'<div class="f6 lh30 promptbox-innder">' +
			'<span class="l mr10 icon prom-icon"></span>' +
			'<span class="db l f16 fc9">新手标仅限未成功投资过的用户！</span>' +
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