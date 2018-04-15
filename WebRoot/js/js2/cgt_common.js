//－－－－－－－－－－－－－－－存管通验证－－－－－－－－－－－

$(function () {
    //关闭免密功能弹窗
    function CloseBox() {
        $('.cgt-close-x').on('click', function() {
            $(this).parent().parent().hide();
            $('#diallayer').hide();
            $(".xm-mask").hide();
            try {
                if (backUrlClose != "")
                    location.href = backUrlClose;
            } catch (e) {
            }
        });
        $('.alert-btn').on('click', function() {
            $(this).parent().parent().parent().hide();
            $('#diallayer').hide();
        });
        $('#hkBtn').on('click', function() {
            $(this).parent().parent().parent().parent().hide();
            $('#diallayer').hide();
            $(".xm-mask").hide();
            try {
                if (backUrlClose != "")
                    location.href = backUrlClose;
            } catch (e) {
            }
        });
        $("#qiyeBtn").on('click', function() {
            $(this).parent().parent().parent().hide();
            $('#diallayer').hide();
            $(".xm-mask").hide();
        });
    }

    CloseBox();

    //厦门银行弹窗
    function closePop(obj1, obj2) {
        $(obj1).click(function() {
            $(this).parent().hide();
            $(obj2).hide();
            try {
                if (backUrlClose != "")
                    location.href = backUrlClose;
            } catch (e) {
            }
        });
    }

    closePop(".xiamen-pop .close", ".xm-mask");

    //弹窗宽度自适应
    var bankBindAlertWidth = $('.bankBindAlert').width();
    $('.bankBindAlert').css({ 'margin-left': -(bankBindAlertWidth / 2) });


    $("#aActived").click(function() {
        $(this).removeAttr('herf');
        $.ajax({
            url: "/member/ajaxCross/ajax_CGT.ashx",
            type: "post",
            dataType: "json",
            async: false,
            data: { Cmd: "ACTIVATE_IMPORT_USER" },
            success: function (json) {
                var obj = json;
                if (obj.result == "1") {
                    var url = unescape(obj.msg);
                    //window.open(url);
                    //$("#aActived").attr("href", url);
                    var blankA = $("#blank_a");
                    if (blankA.length == 0) {
                        $("body").append("<a id='blank_a' style='display:none' target='_blank'><span></span></a>");
                    }
                    $("#blank_a").attr("href", url).find("span").click();

                    $(".xm-mask").hide();
                    $(".xiamen-pop").hide();

                }
                else if (obj.result == "-1") {
                    alert(obj.msg);
                }
                else {
                    alert("系统繁忙,请刷新再试！");
                }
            }
        });
    }); 

    $("#btn_showquan").click(function () {
        $(this).removeAttr('href');

        var setlist = [];       
        if ($("#mm_toubiao").css("display") == "block")
            setlist.push("TENDER");
        if ($("#mm_zhaiquan").css("display") == "block")
            setlist.push("CREDIT_ASSIGNMENT");
        if ($("#mm_huankuan").css("display") == "block")
            setlist.push("REPAYMENT");
        if ($("#mm_tixian").css("display") == "block")
            setlist.push("WITHDRAW");
        if (setlist.length < 1)
        {
            alert("授权设置失败，请联系客服！");
            return false;
        }

        $.ajax({
            url:  "/member/ajaxCross/ajax_CGT.ashx?jsoncallback=AsyncAuthor",
            type: "post",
            dataType: "jsonp",
            async: false,
            data: { Cmd: "USER_AUTHORIZATION", setlist: setlist.join(",") },
            success: function (json) {

            }
        });
    });

});
var Arr = ["2880323191", "2880323207", "2880761023"];

function getRandomValue() {
    
    var n = Math.floor(Math.random() * Arr.length + 1) - 1;
    $("#a_qq").attr("href", "http://wpa.qq.com/msgrd?v=3&uin=" + Arr[n] + "&site=qq&menu=yes");
    $("#a_qq").text("2880761023");
    $("#span_qq").html("2880761023");
}

function AsyncAuthor(data) {
    var obj = data;
    if (obj.result == "1") {
        var url = unescape(obj.msg);
        //$("#btn_showquan").attr("href", url);
        var blankA = $("#blank_a");
        if (blankA.length == 0) {
            $("body").append("<a id='blank_a' style='display:none' target='_blank'><span></span></a>");
        }
        $("#blank_a").attr("href", url).find("span").click();
    }
    else {
        alert("程序异常！");
    } 
}

function SetWenXinRemind(type)
{    
    var sptitle = "";   
    var aatitle = "";
    var url = "";
    $(".question").removeAttr("href");
    switch (type)
    {
        case "bangka":
            sptitle = "绑卡";
            aatitle = "绑卡成功，马上充值";
            url = portalWebsiteUrl + "/member/Bank/RechargeNew2016.aspx";
            $("#remind_aa").attr("href", url);
            $(".question").attr("href", "http://info.tuandai.com/help/index.html");
            break;
        case "jiaoyimima":
            sptitle = "密码修改";
            aatitle = "密码修改成功";
            url = portalWebsiteUrl + "/member/account_default.aspx";
            $("#remind_aa").attr("href", url);
            break;
        case "phone":
            sptitle = "预留手机号更换";
            aatitle = "预留手机号更换成功";
            url = portalWebsiteUrl + "/member/account_default.aspx";
            $("#remind_aa").attr("href", url);
            break;
        case "chongzhi":
            sptitle = "充值";
            aatitle = "充值成功，马上投资";
            url = portalWebsiteUrl + "/pages/weplan/welist.aspx";
            $("#remind_aa").attr("href", url);
            $(".question").attr("href", "http://info.tuandai.com/help/list.html?mark=42");
            break;
        case "tixian":
            sptitle = "提现";
            aatitle = "提现成功";
            url = portalWebsiteUrl + "/member/account_default.aspx";
            $("#remind_aa").attr("href", url);
            break;
        case "touzi":
            sptitle = "投资";
            aatitle = "投资成功";
            url = portalWebsiteUrl + "/pages/weplan/welist.aspx";
            $(".question").attr("href", "http://info.tuandai.com/help/list.html?mark=43");
            $(".question").click(function () {
                $("#layer").show();
                $("#td-art").show();
                $("#dial-window").hide();
                $("#td-atr-layer").hide();
                $("#diallayer").hide();
                $("#bankBindAlert").hide();
            });
            $("#remind_aa").click(function () {
                $("#diallayer").hide();
                $("#bankBindAlert").hide();
            });
            break;
    }
    

    $("#sp_title").html(sptitle);
    $("#aa_title").html(aatitle);
    if (type != "phone") {
        $("#sp_title2").html(sptitle);
        $("#sp_title3").html(sptitle);
    }
    else {
        $("#sp_title2").html("更换");
        $("#sp_title3").html("更换");
    }
}
function checkIsOpen(sign) {
    var isopen = false;
    var _sign = "tixian";
    if (undefined == sign || null == sign)
        _sign = "";
    else
        _sign = sign;

    $.ajax({
        url: "/member/ajaxCross/ajax_CGT.ashx",
        type: "post",
        dataType: "json",
        async: false,
        data: { cmd: "GetShowQuanStatus", opertype: _sign },
        success: function (data) {
            $("#aOpen").hide();
            $("#aActived").hide();
            $("#aBankBind").hide();
            $("#sp_open").hide();
            $("#sp_active").hide();

            $("#mm_toubiao").hide();
            $("#mm_zhaiquan").hide();
            $("#mm_huankuan").hide();
            $("#mm_tixian").hide();
            if (data == null || data == undefined) {

            }
            else if (data.result == "5") {
                $(".xm-mask").show();
                $('.xiamen-pop').show();
                $("#aBankBind").show();
                isopen = false;
            }
            else if (data.result == "4") {//设置银行卡信息
                $(".xm-mask").hide();
                $('.xiamen-pop').hide();
                isopen = false;
                completeBankBox();
            }
            else if (data.result == "1") {//已经开通
                $(".xm-mask").hide();
                $('.xiamen-pop').hide();
                isopen = true;
            }
            else if (data.result == "222")
            {
                $(".xm-mask").show();
                $("#TheadAlert").show();
                $("#sp_newtitle").hide();                
                var n = Math.floor(Math.random() * Arr.length + 1) - 1;
                var srcc = "http://wpa.qq.com/msgrd?v=3&uin=" + Arr[n] + "&site=qq&menu=yes";
                $("#sp_newcontent").html('注意：您目前还未开通存管账户，暂时不能进行充值、提现等资金操作，请尽快联系团贷网客服<a href="' + srcc + '" target="_blank" class="XMCGQQ">2880761023</a>或<a target="_blank" class="XMCGQQ XMCGQQ_code" style="background:url(//js.tuandai.com/images/member/my_capital/code20170426001.png) !important;cursor: pointer;">2880761023</a><div class="codexe" style="width:119px;height:124px;background:url(//js.tuandai.com/images/member/my_capital/codexe.png);position:absolute;top:10px;left:213px;display: none;z-index: 100;"></div>开通。');
                $("#sp_newcontent").css({ color: '#f00' });
                $("#btn_04").hide();
                $("#btn_03").show();

                isopen = false;
            }
            else if (data.result == "6") {
                if (_sign != "chongzhiother") {
                    isopen = true;
                }
                else {
                    $(".xm-mask").show();
                    $("#TheadAlert").show();
                    $("#sp_newtitle").hide();
                    $("#sp_newcontent").html('注意：由于您填写的预留手机号与银行预留手机号不符，您暂时不能进行快捷充值操作，请及时到"用户中心—安全中心"进行修改。');
                    $("#sp_newcontent").css({ color: '#f00' });
                    $("#btn_04").show();
                    $("#btn_03").hide();

                    isopen = false;
                }
            }
            else if (data.result == "7")
            {               
                $(".xm-mask").show();
                $("#TheadAlert").show();
                $("#sp_newtitle").hide();                
                var n = Math.floor(Math.random() * Arr.length + 1) - 1;
                var srcc = "http://wpa.qq.com/msgrd?v=3&uin=" + Arr[n] + "&site=qq&menu=yes";
                $("#sp_newcontent").html('注意：由于您的身份信息或银行卡信息有误，您暂时还不能进行充值、投资、提现等理财操作，请尽快联系团贷网客服<a href="' + srcc + '" target="_blank" class="XMCGQQ">' + Arr[n] + '</a>进行资料核实及修改。');
                $("#sp_newcontent").css({ color: '#f00' });
                $("#btn_04").hide();
                $("#btn_03").show();

                isopen = false;
               
            }
            else if (data.result == "-2" || data.result == "-3" || data.result == "-4") {
                $(".xm-mask").show();
                $("#gangaoAlert").show();

                var iicardtype = data.result * -1;
                switch (iicardtype) {
                    case 2:
                        sp_title = "港澳台通行证";
                        sp_content = "QQ或微信联系客服专员，需提交以下申请材料：手持港澳台通行证证件彩色半身照【保证证件号码清晰且不能是镜面照】港澳台通行证背面彩色照片,受理时间为：周一至周五9:00-12:00  13:30-18:00，周六日与法定节假日除外。";
                        break;
                    case 3:
                        sp_title = "外国人永久居留证";
                        sp_content = "QQ或微信联系客服专员，需提交以下申请材料：外国人永久居留证证件彩色半身照【保证证件号码清晰且不能是镜面照】外国人永久居留证背面彩色照片，受理时间为：周一至周五9:00-12:00  13:30-18:00，周六日与法定节假日除外。";
                        break;
                    case 4:
                        sp_title = "护照";
                        sp_content = "QQ或微信联系客服专员，需提交以下申请材料：手持护照证件彩色半身照,（含个人信息页）【保证证件号码清晰且不能是镜面照】,受理时间为：周一至周五9:00-12:00  13:30-18:00，周六日与法定节假日除外。";
                        break;
                }
                $("#sp_cardTypeName").html(sp_title);
                $("#sp_2Content").html(sp_content);
                isopen = false;
            }
            else if (data.result == "2") {//未激活
                $(".xm-mask").show();
                $('.xiamen-pop').show();
                $("#aActived").show();
                $("#sp_active").show();
                isopen = false;
            }
            else if (data.result == "31")//资产标页面授权提示
            {
                if ($("#AlertBorrowDW2").length > 0) {
                    $("#AlertBorrowDW2").show();
                    $('.xm-mask').show();
                    isopen = false;
                }
                else
                    isopen = true;
            }
            else if (data.result == "41")//投资页面授权提示
            {
                $(".passwordAlt").show();
                $('#diallayer').show();
                $("#mm_toubiao").show();
                $("#mm_zhaiquan").show();
                isopen = false;

            }
            else if (data.result == "3") {//未授权
                $(".passwordAlt").show();
                $('#diallayer').show();
                isopen = false;
            }
            else if (data.result == "0") {//未开通

                $(".xm-mask").show();
                $('.xiamen-pop').show();
                $("#aOpen").show();
                $("#sp_open").show();
                isopen = false;
            }
            else {
                $(".xm-mask").hide();
                $('.xiamen-pop').hide();
                isopen = true;
            }
        }
    });
    $(".XMCGQQ_code").mouseover(function () {
        $(".codexe").show();
    }).mouseout(function () {
        $(".codexe").hide();
    })
    return isopen;
}
function completeBankBox() {
    var IsLogin = isCookieLogin();
    if (IsLogin == false) {
        art.dialog({
            width: 300,
            title: newTitle,
            content: '您好，请先登录后再进行操作。',
            okVal: '马上登录',
            zIndex: 9999999,
            ok: function () {
                window.location.href = portalWebsiteUrl+"/user/login.aspx?ReturnUrl=" + window.location.href;
            }
        });
        return;
    } else {
        $.ajax({
            async: false,
            type: "get",
            url: portalWebsiteUrl+'/member/Bank/CompleteBank.aspx?modify=1&r=' + Math.random(),
            success: function (data) {
                if ($("#bindBankWindows").length > 0) {
                    $("#bindBankWindows,#diallayer").remove();
                }
                $("body").append(data);
            },
            cache: false
        });
    }
}
//－－－－－－－－－－－－－－－存管通验证结束－－－－－－－－－－－