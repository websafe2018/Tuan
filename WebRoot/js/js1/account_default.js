
$(window).ready(function () {
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

$(window).ready(function () { 
    if (tip.length > 0) {
        $("#p1").html(tip[0]);
        //$("#p2").html(tip[0]);
        if (tip.length == 1) {
            $("#changeTip").hide();
        }
        if (firstLogin == "1") {
            //$("#dahei").show();
        } else {
            $("#clocktip").attr("src", "//js2.tdw.cn/images/member/clock.png");
            $(".guanbi").hide();
            $("#dahei").hide();
        }
    } else {
        $("#p1").html("暂无消息提醒");
        $("#clocktip").attr("src", "//js2.tdw.cn/images/member/clock.png");
        $("#dahei").hide();
        $(".guanbi").hide();
    }
});
$(window).ready(function () {
    $(".jxbox").mouseover(function () {
        $(".jxtipbox").css("display", "block");
    }).mouseout(function () {
        $(".jxtipbox").css("display", "none");
    });
});

$(function () {
    $('#amout_left').find('li').hover(function () {
        //$(this).find('dl').show();
        //$(this).find('dl').css({ "z-index": "1000006" });
        //$(this).css({ "z-index": "1000006" });
    },
    function () {
        $(this).find('dl').hide();
    })
});
function openYellowTips() {
    $('#YellowTips').fadeIn();
}

jQuery("#ganbeng").slide({ mainCell: ".tupian ul", effect: "leftLoop", autoPlay: true, interTime: 3000, trigger: "click" });

$(document).ready(function () {
    var isShow = false;
    var delay_time = 1500;
    var myDelay;

    delayDo(delay_time);
    $(".wz_rebate").mouseover(function () {
        clearTimeout(myDelay);
        $(".rebate").show();
    });
    $(".wz_rebate").mouseout(function () {
        delayDo(500);
    });
    $(".rebate").hover(function () {
        clearTimeout(myDelay);
        $(".rebate").show();
    }, function () {

        $(".rebate").fadeOut();
    });
    function delayDo(time) {
        myDelay = setTimeout(function () {
            isShow = false;
            $(".rebate").fadeOut();
        }, time)
    }
});

$(".closed").click(function () {
    $(".members_beijing").hide();
    $(".members").hide();
    $(".members_welfare").hide();
});
////消息设置提示弹窗
//$("#setMes-alert").find(".closes").click(function () {
//    $(this).parent("#setMes-alert").hide();
//    $("#setmask").hide();
//});
//冒泡提示信息
$(".we_notice_icon").hover(function () {
    $(this).children("p").toggle();
});

//邀请有礼定向活动弹窗
$(".exclusive_tu").click(function () {
    $(".invitation_activities").show();
    $(".beijing").show();
})
$(".shut").click(function () {
    $(".invitation_activities").hide();
    $(".beijing").hide();
})
//518红包理团金弹窗
$(".shut").click(function () {
    $(".financial_bj").hide();
    $(".financial").hide();
})

function guandiao() {
    $("#dahei").hide();
    $(".guanbi").hide();
    $("#clocktip").attr("src", "//js2.tdw.cn/images/member/clock.png");
    
    if (isClosedYellowTips != "1" && isEnterAutoInvestSetPage2!="1")
    {
        setTimeout("openYellowTips()", 500);
    }
} 
function fn_slidechange() {
    $("#biaoti").html("<a href='" + $(".hd ul li.on").attr("ref") + "' target='_blank' style='color:#fff;'>" + $(".hd ul li.on").attr("val") + "</a>");
} 
   
//提示信息showtips
function ShowTips(){
    $("#ny-tip").mouseenter(function () {
        $(this).parent().find("#ny-showtips").show();
    }).mouseleave(function () {
        $(this).parent().find("#ny-showtips").hide();
    });
};
ShowTips();


//1218加息弹窗
$(document).ready(function () {
    var isShow = false;
    var delay_time = 2500;
    var myDelay;

    delayDo(delay_time);
    $(".wz_rebate1218").mouseover(function () {
        clearTimeout(myDelay);
        $(".rebate1218").show();
    });
    $(".wz_rebate1218").mouseout(function () {
        delayDo(500);
    });
    $(".rebate1218").hover(function () {
        clearTimeout(myDelay);
        $(".rebate1218").show();
    }, function () {

        $(".rebate1218").fadeOut();
    });
    function delayDo(time) {
        myDelay = setTimeout(function () {
            isShow = false;
            $(".rebate1218").fadeOut();
        }, time)
    }
});
 var newTitle = '团贷网提醒您：';
        var IsValidateMobile = 'True';
        var IsValidateIdentity = 'True';
        var IsSetPayPwd = "True";
        var isClosedYellowTips = "0";
        var isEnterAutoInvestSetPage2 = "0";//是否进入自动投标设置
        var tip = new Array();
        var firstLogin = "1"; // "1";
        var cgtStatus = '1';
        //tip.push("急周转，轻松借！资产标区借款期限≤1个月时免收管理费啦！<a style='color: rgb(0, 102, 255);' href='http://www.tuandai.com/pages/news/newsDetail.aspx?id=1143'>详情>></a>");

        if ("True" != "True") {
            tip.push("您尚未进行实名认证，会影响您的投资，请<a href='/member/Validate/index.aspx' style='color:orange;'>立即设置</a>！");
        }
        if ("True" != "True") {
            tip.push("您尚未进行邮件认证，会影响您的投资，请<a href='/member/Validate/index.aspx' style='color:orange;'>立即设置</a>！");
        }
        if ("True" != "True") {
            tip.push("您尚未进行安全问题设置，会影响您的投资，请<a href='/member/Validate/index.aspx' style='color:orange;'>立即设置</a>！");
        }
        if ("1" == "0") {
            tip.push("您尚未进行银行卡绑定，会影响您的投资，请<a href='/member/Validate/index.aspx' style='color:orange;'>立即设置</a>！");
        }
        if ("" != "") {
            tip.push("");
        }
        if ("" != "") {
            tip.push("");
        }

        $(window).ready(function () {
            $("#ymziframe").attr("height", "100%");

            $("#profitframe").attr("height", "510px");
            setTimeout(function () { $('#ymziloading').remove(); $("#profitloading").remove(); }, 2500);

            if (cgtStatus == "0") {
                $("#aOpen").show()
                $("#aActived").hide();
                $("#aBankBind").hide();
            }
            else if (cgtStatus == "2") {
                $("#aOpen").hide()
                $("#aActived").show();
                $("#aBankBind").hide();
            }

        });