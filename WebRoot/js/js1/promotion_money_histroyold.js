var isEnterAutoInvestSetPage = getCookie("45410e0a" + "isEnterAutoInvestSetPage"); //是否进入自动投标设置
var isClosedYellowTip2 = getCookie("45410e0a" + "isClosedYellowTip"); //手动点击关闭黄标签
var isDefaultShowed = getCookie("45410e0a" + "_account_default"); //是否首页显示
var tuandaiw = getCookie("tuandaiw");
$(function() {
    $(".a_code").mouseover(function() {
        $(".codexe").show();
    }).mouseout(function() {
        $(".codexe").hide();
    });

    try {
        getRandomValue();
    } catch (e) {}
    $('#menu_autoTender').hover(function() {
            $('#YellowTips').fadeIn(150);
        },
        function() {
            $('#YellowTips').stop().fadeOut();
        }
    );
    $('#menu_myWePlan').hover(function() {
            $('#YellowTips2').fadeIn(150);
        },
        function() {
            $('#YellowTips2').stop().fadeOut();
        }
    );
    $("#menu_withdraw,#menu_recharge").click(function() {
        try {
            getRandomValue();
            if (IsOpenCGT == "1" && !checkIsOpen("chongzhi"))
                return false;
        } catch (e) {}
    });

    $("#menu_borrowMiniEdit").click(function() {
        try {
            if (IsOpenCGT == "1" && !checkIsOpen("noshouquan"))
                return false;
        } catch (e) {}
    });
    $("#menu_userservice").click(function() {
        try {
            if (IsOpenCGT == "1" && !checkIsOpen())
                return false;
        } catch (e) {}
    });
    $("#menu_autoTender").click(function() {
        try {
            if (IsOpenCGT == "1" && !checkIsOpen("touzi"))
                return false;
        } catch (e) {}
    });

    if (isEnterAutoInvestSetPage != null && isEnterAutoInvestSetPage != "") {
        isEnterAutoInvestSetPage = "1";
    }
    if (isClosedYellowTip2 != null && isClosedYellowTip2 != "") {
        isClosedYellowTip2 = "1";
    }
    if (isDefaultShowed != null && isDefaultShowed != "") {
        isDefaultShowed = "1";
    }

    if (isEnterAutoInvestSetPage != "1") {

        $('#menu_autoTender').find('em').addClass("emClass");
    }

    if (window.location.href.indexOf("member/account_default.aspx") < 0) {
        //不是主页,自动提示
        if (isClosedYellowTip2 != "1" && isEnterAutoInvestSetPage != "1") {
            $('#YellowTips').fadeIn();
        }
    } else {
        //是主页,如果大黑不显示自动提示
        if (isClosedYellowTip2 != "1" && isEnterAutoInvestSetPage != "1" && isDefaultShowed != "1") {
            $('#YellowTips').fadeIn();
        }
    }

    $('#menu_autoTender').find('.close').click(function() {
        $('#YellowTips').fadeOut();
        setCloseYellowTips();
    });
});

function setCloseYellowTips() {
    setCookie("45410e0a" + "isClosedYellowTip", "1");
}

function left_CheckAllowDraw() {
    if (IsOpenCGT != "1") {
        if (left_IsValidateMobile != 'True' || left_IsValidateIdentity != 'True' || left_IsSetPayPwd != 'True') {
            userbank.tips(left_IsValidateMobile, left_IsValidateIdentity, left_IsSetPayPwd, "提现");
            return false;
        } else if (IsbindBankNo == "False") {
            $.ajax({
                async: false,
                type: "get",
                url: '/member/Bank/CompleteBank.aspx?ReturnUrl=/member/Bank/drawmoney.aspx',
                success: function(data) {
                    if ($("#bindBankWindows").length > 0) {
                        $("#bindBankWindows,#diallayer").remove();
                    }
                    $("body").append(data);
                },
                cache: false
            });
            return false;
        }
    }
    return true;
}

function left_CheckAllowBindBank() {
    if (left_IsValidateMobile != 'True' || left_IsValidateIdentity != 'True') {
        userbank.tips(left_IsValidateMobile, left_IsValidateIdentity);
        return false;
    }
    return true;
}

$(document).ready(function() {

    $("#ContentPlaceHolder1_AspNetPager1 span").css("color", "#fff");
    //$("#menu_PartnerPromotion").addClass("currentMenu");
    $("#menu_promotionList").addClass("currentMenu");

    $(".tip-box1").mouseover(function() {
        $(".partnership").show();
    }).mouseout(function() {
        $(".partnership").hide();
    });

    $(".tip-box2").mouseover(function() {
        $(".partnership").show();
    }).mouseout(function() {
        $(".partnership").hide();
    });
    $("#filterSelect li").bind("click", function() {
        var months = $(this).attr("attrval");
        window.location.href = 'Account_PartnerPromotionMoneyHistroyOld.aspx?months=' + months;
    });

    var monthsStr = request("months");
    chanageSelect($("#filterSelect  li[attrval='" + monthsStr + "']"));
});

function chanageSelect(selectValue) {
    var newVal = $(selectValue).text();
    $(selectValue).parents('.text-box').find('.text').text(newVal);
    $(selectValue).parent().hide();
    $(selectValue).parents('.text-box').css({
        position: "static"
    });
}