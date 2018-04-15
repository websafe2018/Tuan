
//相关变量初始化----------------------------------------------
//连续支付锁定，当大于0时提示“点击支付过于频繁”
var rechareWealthlock = 0;
var rechareLianLianlock = 0;
var rechareTenpaylock = 0;
var rechareWXfulock = 0;
var sltTab = 0;//选中的支付渠道  =0网银充值，=8快捷，=4财付通，=9微信


//支付金额验证不通过时信息提示
var arrBox = new Array();
arrBox["d_money"] = "<img style='margin:2px;' src='//js2.tdw.cn/images/users/regad/zhuce1.gif'/>&nbsp;请输入正确的金额，最小充值金额50元。";
var arrWrong = new Array();
arrWrong["d_money"] = "<img style='margin:2px;' src='//js2.tdw.cn/images/users/regad/zhuce2.gif'/>&nbsp请输入正确的金额，小数点后最多2位数。";
var arrWrong1 = new Array();
arrWrong1["d_money"] = "<img style='margin:2px;' src='//js2.tdw.cn/images/users/regad/zhuce2.gif'/>&nbsp;输入的金额不能为空！";
var arrWrong2 = new Array();
arrWrong2["d_money"] = "<img style='margin:2px;' src='//js2.tdw.cn/images/users/regad/zhuce2.gif'/>&nbsp;最低充值金额为100元！";
var arrWrong3 = new Array();
arrWrong3["d_money"] = "<img style='margin:2px;' src='//js2.tdw.cn/images/users/regad/zhuce2.gif'/>&nbsp;最低充值金额为100元！";
var arrWrong4 = new Array();
arrWrong4["d_money"] = "<img style='margin:2px;' src='//js2.tdw.cn/images/users/regad/zhuce2.gif'/>&nbsp;充值金额不能超过500000！";
var arrOk = new Array();
arrOk["d_money"] = "<img style='margin:2px;' src='//js2.tdw.cn/images/users/regad/zhuce3.gif'/>";

//---------------------------------------------------------


$(function () {
    //页面初始化
    Init();
    //页面相关事件绑定
    view_event_bind();

    $('#t_money').focus();
});

//页面初始化
function Init() {
    //给左边“充值”菜单添加样式
    setTimeout("$('#t_money').focus()", 800);
    $("#menu_recharge").addClass("currentMenu");
    switch (sltChannel) {
        case '0':
            {
                $('.in-tabox').hide();
                sltTab = 0;
                break;
            }
        case $("#KJsel").val():
            {
                $('.in-tabox').hide();
                sltTab = $("#KJsel").val();
                break;
            }
        case '4':
            {
                sltTab = 4;
                break;
            }
        case '9':
            {
                $('.in-tabox').show();
                sltTab = 9;
                break;
            }
        default:
            {
                sltTab = 0;
            }
    }

    tabBox('#re-tabtit li', '#re-tabbox .re-tab-content');
    secBank();
}

//页面相关事件绑定
function view_event_bind() {
    //确认充值clicks事件
    $('#confirmRecharge').click(function () {       
        try {
            if (IsOpenCGT == "1" && !checkIsOpen("other")) {
                return false;
            }
        } catch (e) { }

        $(this).removeAttr('href');

        //art.dialog({
        //    title: newTitle,
        //    zIndex: 9999999,
        //    content: '平台于3月10号~12号停服上线存管，3月10号12:00:00~12号23:59:59暂停充值、提现操作。给您造成不便之处，敬请谅解'
        //});

        //return false;
        //银行卡充值
        if (sltTab == 0) {
            return wealthrecharge();
        }

        if (sltTab == $("#KJsel").val()) {

            return paylianlian();
        }

        if (sltTab == 4) {
            return tenpay();
        }

        if (sltTab == 9) {
            return wx();
        }
    });

    //网银充值
    $('#wealthrecharge').click(function () {
        $('#rechargeBankCode').hide();
        $('.in-tabox').hide();
        changeChannelOp();
        var onepay = $("#onepay");
        onepay.find(".sec").removeClass("sec").end().find(".current").removeClass("current");
        onepay.find("li").first().addClass("sec").end().find("em").first().addClass("current");

        onepay.find(".sec").click();

        sltTab = 0;
        rechareLianLianlock = 0;
        rechareTenpaylock = 0;
        rechareWXfulock = 0;
    });

    //快捷充值
    $('#paylianlian').click(function () {
        try {           
            if (IsOpenCGT == "1" && !checkIsOpen("chongzhiother")) {
                $('#wealthrecharge').click();
                return false;
            }
        }
        catch (e) { }
        $('#rechargeBankCode').show();
		$("#eBankPayLimitDiv").hide();
        $('.in-tabox').hide();
        changeChannelOp();
        var kjsel = $("#KJsel").val();
        sltTab = kjsel;
        LianLianInit()
        rechareWealthlock = 0;
        rechareTenpaylock = 0;
        rechareWXfulock = 0;
    });

    //财付通/微信充值
    $("#tenpayorwx").click(function () {
        $('#wxrecharge').click();
        $('.in-tabox').show();
    })

    //财付通充值
    $('#paytenpay').click(function () {
        $('#rechargeBankCode').hide();
        changeChannelOp();

        sltTab = 4;
        rechareWealthlock = 0;
        rechareLianLianlock = 0;
        rechareWXfulock = 0;
    });

    //微信充值
    $('#wxrecharge').click(function () {
        $('#rechargeBankCode').hide();
        changeChannelOp();

        sltTab = 9;
        rechareWealthlock = 0;
        rechareLianLianlock = 0;
        rechareTenpaylock = 0;
    });
    //金额输入框属性改变事件
    $('#t_money').bind('input propertychange', function () {
        var money = $('#t_money').val();
        $("#spnRechargeAmountBig").text(Arabia_to_Chinese(money));
    });
    //快捷支付马上绑定点击事件
    $("#ImmeBind").click(function () {
        //
        $("#ImmeBind").removeAttr("href");
        if (IsOpenCGT == "1") {
            if (!checkIsOpen("chongzhi"))
                return false;
            else
                $("#ImmeBind").attr("href", "/member/bank/XM_BankBind_Complete.aspx");
        }
        else {
            identity($("#KJsel").val());
        }
    });
}

//切换支付渠道时清空操作
function changeChannelOp() {
    //$('#t_money').val('');
    $("#spnRechargeAmountBig").text("");
    $('#t_money').focus();
    $('#tip').html('');
}

//网银支付
function wealthrecharge() {
    $("#confirmRecharge").removeAttr("href");
    if (parseInt(rechareWealthlock) > 0) {
        art.dialog({
            title: newTitle,
            zIndex: 9999999,
            content: '您好,提交过于频繁.连续提交需要超过10秒,请稍后重试!'
        });
        return false;
    }
    if (BlurMoney1() && parseInt(rechareWealthlock) == 0) {
        var amount = $.trim($("#t_money").val());
        if (isEmpty(routeId) || isEmpty(OutCode) || isEmpty(Sel)) {
            art.dialog({
                title: newTitle,
                zIndex: 9999999,
                content: '页面失效请刷新后重试!'
            });

            return false;
        }
        var fileurl = $("#" + fileId).val();
        if (isMe == 1)
            fileurl = "";        
        var href = apiUrl + "/member/account_pay_route.aspx?Amount=" + amount + "&RouteId=" + routeId + "&InsiderCode=" + InsiderCode + "&OutCode=" + OutCode + "&Sel=" + Sel + "&fileurl=" + fileurl + "&PayType=1&CgtPayCompany=" + cgtPayCompany;
        rechareWealthlock = 1;
        setTimeout("frecharelock(" + rechareWealthlock + ");", 10000);
        try {
            SetWenXinRemind("chongzhi");
            $('#bankBindAlert').show();
            $('#diallayer').show();
        } catch (e) { }

        $("#confirmRecharge").attr("href", href);

        ////新手任务提示  
        //var IsFirstRechargea = 'false'
        //if (IsFirstRechargea.toLowerCase() == "true") {
        //    var htmlString = '<p style="height:25px; line-height:25px; margin-top:10px;font-weight: 700;font-style: normal;font-size: 18px;color: #FF7400;">请您在新打开的页面上完成付款。</p>';
        //    htmlString += '<p style="height:20px;line-height:20px;margin-top:10px; font-size:12px;color:#333;">完成付款后请根据您的情况选择：</p>';
        //    htmlString += '<p style="height:20px;line-height:20px;margin-top:10px; font-size:12px;color:#333;"><img src="/images/account/u20.png" style="vertical-align:middle; margin-right:6px;"><span style="margin-right:5px;">充值成功</span>|<span style="margin-left:5px;"></span><span style="margin-left:15px;"><a href="/member/account_rechagehistory.aspx" style="color:blue;">查看充值记录</a></span></p>';
        //    htmlString += '<p style="height:20px;line-height:20px;margin-top:10px; font-size:12px;color:#333;"><img src="/images/account/u22.png" style="vertical-align:middle; margin-right:6px;"><span style="margin-right:5px;">充值失败</span>|<span style="margin-left:5px;"><a href="/member/account_rechargealipaytenpay.aspx"  style="color:blue;">选择其他充值方式</a></span></p>';
        //    htmlString += '<p style="height:20px;line-height:20px;margin-top:10px; font-size:12px;color:#aeaeae;">无法支付？请致电团贷网客服  400-6410-888</p>';
        //    art.dialog({
        //        title: '充值提示信息',
        //        content: htmlString,
        //        width: 400,
        //        zIndex: 9999999,
        //        ok: function () {
        //        }
        //    });
        //}
        return true;
    }
    rechareWealthlock = 0;
    return false;
}

//连连支付
function paylianlian() {
    $("#confirmRecharge").removeAttr("href");
    if (identity($("#KJsel").val()) == false) {
        return false;
    }

    if (parseInt(rechareLianLianlock) > 0) {
        art.dialog({
            title: newTitle,
            zIndex: 9999999,
            content: '您好,提交过于频繁.连续提交需要超过10秒,请稍后重试!'
        });
        return false;
    }
    if (BlurMoney1() && parseInt(rechareLianLianlock) == 0) {

        var amount = $("#t_money").val();

        if (isEmpty(kjpaychannel)) {
            art.dialog({
                title: newTitle,
                zIndex: 9999999,
                content: '页面失效请刷新后重试!'
            });
            return false;
        }
        var fileurl = $("#" + fileId).val();
        if (isMe == 1)
            fileurl = "";
        var InsiderCode = $("#hd_bankcode").val();

        var href = apiUrl + "/member/account_kuaijie_pay.aspx?Amount=" + amount + "&RouteId=" + kjrouteid + "&Sel=" + kjpaychannel + "&OutCode=" + InsiderCode + "&fileurl=" + fileurl + "&PayType=1&CgtPayCompany=" + kjcgtpaycompany;
        setTimeout("frecharelock(" + rechareLianLianlock + ");", 10000);
        try {
            SetWenXinRemind("chongzhi");
            $('#bankBindAlert').show();
            $('#diallayer').show();
        } catch (e) { }

        $("#confirmRecharge").attr("href",href);
        //新手任务提示 
        //var IsFirstRechargea = '<%=IsFirstRechargea %>';
        //if (IsFirstRechargea.toLowerCase() == "true") {
        //    var htmlString = '<p style="height:25px; line-height:25px; margin-top:10px;font-weight: 700;font-style: normal;font-size: 18px;color: #FF7400;">请您在新打开的页面上完成付款。</p>';
        //    htmlString += '<p style="height:20px;line-height:20px;margin-top:10px; font-size:12px;color:#333;">完成付款后请根据您的情况选择：</p>';
        //    htmlString += '<p style="height:20px;line-height:20px;margin-top:10px; font-size:12px;color:#333;"><img src="/images/account/u20.png" style="vertical-align:middle; margin-right:6px;"><span style="margin-right:5px;">充值成功</span>|<span style="margin-left:5px;"></span><span style="margin-left:15px;"><a href="/member/account_rechagehistory.aspx" style="color:blue;">查看充值记录</a></span></p>';
        //    htmlString += '<p style="height:20px;line-height:20px;margin-top:10px; font-size:12px;color:#333;"><img src="/images/account/u22.png" style="vertical-align:middle; margin-right:6px;"><span style="margin-right:5px;">充值失败</span>|<span style="margin-left:5px;"><a href="/member/account_rechargealipaytenpay.aspx"  style="color:blue;">选择其他充值方式</a></span></p>';
        //    htmlString += '<p style="height:20px;line-height:20px;margin-top:10px; font-size:12px;color:#aeaeae;">无法支付？请致电团贷网客服  400-6410-888</p>';
        //    art.dialog({
        //        title: '充值提示信息',
        //        content: htmlString,
        //        width: 400,
        //        zIndex: 9999999,
        //        ok: function () {

        //        }
        //    });
        //}
        return true;
    }
    rechareLianLianlock = 0;
    return false;
}

//财付通支付
function tenpay() {
    if (parseInt(rechareTenpaylock) > 0) {
        art.dialog({
            title: newTitle,
            zIndex: 9999999,
            content: '您好,提交过于频繁.连续提交需要超过10秒,请稍后重试!'
        });
        return false;
    }
    if (BlurMoney1() && parseInt(rechareTenpaylock) == 0) {
        var amount = $("#t_money").val();
        var fileurl = $("#" + fileId).val();
        if (isMe==1)
            fileurl = "";
        var href = "/member/account_payRequest.aspx?Amount=" + amount + "&Sel=4&fileurl=" + fileurl;
        setTimeout("frecharelock(" + rechareTenpaylock + ");", 10000);
        document.getElementById("confirmRecharge").href = href;
        //新手任务提示 
        //var IsFirstRechargea = '<%=IsFirstRechargea %>';
        //if (IsFirstRechargea.toLowerCase() == "true") {
        //    var htmlString = '<p style="height:25px; line-height:25px; margin-top:10px;font-weight: 700;font-style: normal;font-size: 18px;color: #FF7400;">请您在新打开的页面上完成付款。</p>';
        //    htmlString += '<p style="height:20px;line-height:20px;margin-top:10px; font-size:12px;color:#333;">完成付款后请根据您的情况选择：</p>';
        //    htmlString += '<p style="height:20px;line-height:20px;margin-top:10px; font-size:12px;color:#333;"><img src="/images/account/u20.png" style="vertical-align:middle; margin-right:6px;"><span style="margin-right:5px;">充值成功</span>|<span style="margin-left:5px;"><a href="/member/account_rechagehistory.aspx" style="color:blue;">查看充值记录</a></span></p>';
        //    htmlString += '<p style="height:20px;line-height:20px;margin-top:10px; font-size:12px;color:#333;"><img src="/images/account/u22.png" style="vertical-align:middle; margin-right:6px;"><span style="margin-right:5px;">充值失败</span>|<span style="margin-left:5px;"><a href="/member/account_rechargeali_pay_lianlian.aspx"  style="color:blue;">选择其他充值方式</a></span></p>';
        //    htmlString += '<p style="height:20px;line-height:20px;margin-top:10px; font-size:12px;color:#aeaeae;">无法支付？请致电团贷网客服  400-6410-888</p>';
        //    art.dialog({
        //        title: '充值提示信息',
        //        content: htmlString,
        //        zIndex: 9999999,
        //        width: 400,
        //        ok: function () {
        //        }

        //    });
        //}
        return true;
    }
    rechareTenpaylock = 0;
    return false;
}

//微信支付
function wx() {
    if (identity(9) == false) {
        return false;
    }

    if (parseInt(rechareWXfulock) > 0) {
        art.dialog({
            title: newTitle,
            zIndex: 9999999,
            content: '您好,提交过于频繁.连续提交需要超过10秒,请稍后重试!'
        });
        return false;
    }

    if (BlurMoney1() && parseInt(rechareWXfulock) == 0) {
        var amount = $("#t_money").val();
        var fileurl = $("#" + fileId).val();
        if ($("#" + signId).val() != "1")
            fileurl = "";
        var href = "NativePayPage.aspx?Amount=" + amount + "&fileurl=" + fileurl;
        setTimeout("frecharelock(" + rechareWXfulock + ");", 10000);
        document.getElementById("confirmRecharge").href = href;
        showTC()
        ////新手任务提示 
        //var IsFirstRechargea = '<%=IsFirstRechargea %>';
        //if (IsFirstRechargea.toLowerCase() == "true") {
        //    var htmlString = '<p style="height:25px; line-height:25px; margin-top:10px;font-weight: 700;font-style: normal;font-size: 18px;color: #FF7400;">请您在新打开的页面上完成付款。</p>';
        //    htmlString += '<p style="height:20px;line-height:20px;margin-top:10px; font-size:12px;color:#333;">完成付款后请根据您的情况选择：</p>';
        //    htmlString += '<p style="height:20px;line-height:20px;margin-top:10px; font-size:12px;color:#333;"><img src="/images/account/u20.png" style="vertical-align:middle; margin-right:6px;"><span style="margin-right:5px;">充值成功</span>|<span style="margin-left:5px;"></span><span style="margin-left:15px;"><a href="/member/account_rechagehistory.aspx" style="color:blue;">查看充值记录</a></span></p>';
        //    htmlString += '<p style="height:20px;line-height:20px;margin-top:10px; font-size:12px;color:#333;"><img src="/images/account/u22.png" style="vertical-align:middle; margin-right:6px;"><span style="margin-right:5px;">充值失败</span>|<span style="margin-left:5px;"><a href="/member/account_rechargeali_pay_lianlian.aspx"  style="color:blue;">选择其他充值方式</a></span></p>';
        //    htmlString += '<p style="height:20px;line-height:20px;margin-top:10px; font-size:12px;color:#aeaeae;">无法支付？请致电团贷网客服  400-6410-888</p>';
        //    art.dialog({
        //        title: '充值提示信息',
        //        content: htmlString,
        //        width: 400,
        //        zIndex: 9999999,
        //        ok: function () {

        //        }

        //    });
        //}
        return true;
    }
    rechareWXfulock = 0;
    return false;
}

function isEmpty(obj) {
    if (obj == null || obj == undefined || obj == "") {
        return true;
    } else {
        return false;
    }
}

//解除因连续点击支付确认而锁定的支付渠道
function frecharelock(obj) {
    rechareWealthlock = 0;
    rechareLianLianlock = 0;
    rechareTenpaylock = 0;
    rechareWXfulock = 0;
}

//连连支付相关的实名认证
function LianLianInit() {
    if (identity(8) == false) {
        return;
    }

    //$("#t_money").val('');
}

//实名信息认证
function identity(sel) {
    if (IsValidateMobile != 'True' || IsValidateIdentity != 'True') {
        userbank.tips(IsValidateMobile, IsValidateIdentity, null, "充值");
        return false;
    }
    else {
        if (hasBankNo == "No") {
            var IsLogin = isCookieLogin();
            if (IsLogin == false) {
                art.dialog({
                    width: 300,
                    title: newTitle,
                    content: '您好，请先登录后再进行操作。',
                    okVal: '马上登录',
                    zIndex: 9999999,
                    ok: function () {
                        window.location.href = "/user/login.aspx?ReturnUrl=" + window.location.href;
                    }
                });
                return false;
            }
            if (sel == $("#KJsel").val()) {

                $.ajax({
                    async: false,
                    type: "get",
                    url: '/member/Bank/AddBank.aspx',
                    success: function (data) {
                        if ($("#bindBankWindows").length > 0) {
                            $("#bindBankWindows,#diallayer").remove();
                        }
                        $("body").append(data);

                    },
                    cache: false
                });

                return false;
            } else {
                return true;
            }


        }
    }
}

//当点击确定支付时进行充值金额合法验证
function BlurMoney1() {
    var txt = "#t_money";
    var td = "#tip";
    var pat = /^[0-9]*(\.[0-9]{1,2})?$/;

    var str = $(txt).val();
    if (str == "") {
        $(td).html(GetP("reg_wrong", arrWrong1["d_money"]));
        return false;
    }
    var m = parseFloat(str);
    if (m <= 0) {
        $(td).html(GetP("reg_wrong", arrWrong3["d_money"]));
        return false;
    }

    //限制50最小金额
    var m = parseInt(str);
    //alert(m);
	//取消网银充值最高500万元限制
//    if (m > 5000000) {
//        $(td).html(GetP("reg_wrong", arrWrong4["d_money"]));
//        return false;
//    }
    if (m < 100) {
        $(td).html(GetP("reg_wrong", arrWrong2["d_money"]));
        return false;
    }
    if (pat.test(str)) {
        $(td).html(GetP("reg_ok", arrOk["d_money"]));
        return true;
    }
    else {
        $(td).html(GetP("reg_wrong", arrWrong["d_money"]));
        return false;
    }
}

function ClickBox(id) {
    var ele = '#' + id;
    $(ele).html(GetP("reg_info", arrBox[id]));
}

//获取提示信息
function GetP(clsName, c) {
    return "<div class='" + clsName + "'>" + c + "</div>";
}

//弹出
function showTC() {
    $(".recharge_popup").removeClass("hidden");
    $(".mask").removeClass("hidden");
}

//关闭
function closeTC() {
    $(".recharge_popup").addClass("hidden");
    $(".mask").addClass("hidden");
}

//充值类型tab切换
function tabBox(oLis, oTab) {
    var oLis = $(oLis), oTab = $(oTab);
    for (var i = 0, len = oLis.length; i < len; i++) {
        oLis[i].index = i;
        oLis[i].onclick = function () {
            for (var n = 0; n < len; n++) {
                $(oTab[n]).addClass('hide');
                $('#t_money').focus();
            }
            $(this).addClass('on').siblings(oLis[i]).removeClass('on');
            $(oTab[this.index]).removeClass('hide');

        }
    }
}

//选择银行充值
function secBank() {
    $('#onepay .blanklist').click(function () {
        $(this).addClass('sec').siblings('.blanklist').removeClass('sec');
        $('#onepay .blanklist').find('em').removeClass('current');
        $(this).find('em').addClass('current');
    });

    $('#onepay .more').click(function () {
        $(this).parent().css({ 'height': 'auto' });
        $('#onepay .up').show();
        $(this).hide();
    });
    $('#onepay .up').click(function () {
        $(this).parent().css({ 'height': '155px' });
        $('#onepay .more').show();
        $(this).hide();
    });
}

//微信、财付通
$('#threepay li').click(function () {
    $(this).addClass('on').siblings('li').removeClass('on');
    $('#threepay li').find('em').removeClass('current');
    $(this).find('em').addClass('current');
    var index = $(this).index();
    number = index;
    $('.in-tabox .wechat').hide();
    $('.in-tabox .wechat:eq(' + index + ')').show();
    $('#t_money').focus();
});

//只能输入金额
function KeyPressNum(obj, evt) {

    if ($("#" + signId).val() == "1")
        return false;

    var key = window.event ? evt.keyCode : evt.which;
    if (key < 27 || key > 128) return true; //如果输入的是功能按键，则不限制
    else if (key >= 48 && key <= 57) return true;
    else if (key == 46) return true
    else
        return false;
    //var item = $(obj).val();

    //if (/^(?!(0[0-9]{0,}$))[0-9]{1,}[.]{0,}[0-9]{0,}$/.test(item)) {
    //    return true;
    //}
    //else {
    //    return false;
    //}
}

