var oldname = "", oldtelno = "", oldnamestatus = "", oldtelnostatus = "", oldnametip = "", oldtelnotip = "";


var arrBox = new Array();
arrBox["dvPhone"] = "请输入手机号码";
arrBox["dvPhone1"] = "请输入手机号码";
arrBox["dvPwd"] = "6-16个字符，建议由字母+数字和符号两种以上组合";
arrBox["dvCode2"] = "请输入图形验证码";
arrBox["dvCode"] = "请输入手机验证码";

var arrWrong = new Array();
arrWrong["dvPhone"] = "手机号码格式有误，请输入正确的手机号";
arrWrong["dvPhone1"] = "邀请人手机号码格式不正确，请重新输入";
arrWrong["dvPwd"] = "6-16个字符，建议由字母+数字和符号两种以上组合";
arrWrong["dvCode2"] = "请输入图形验证码";
arrWrong["dvCode"] = "手机验证码不正确或已过期";
arrWrong["dvPwd2"] = "密码不能含有空格";

var arrOk = new Array();
arrOk["dvPhone"] = "";;
arrOk["dvPhone1"] = "";
arrOk["dvPwd"] = "";
arrOk["dvRepwd"] = "";
arrOk["dvCode"] = "";
arrOk["dvCode2"] = "";



function simulationList() {
    $('.simulation-list').find('.arrow').click(
        function () {
            $(this).parents('.text-box').css({ position: "relative" });
            $(this).parent().find('ul').slideToggle('fast');
            $('.text-box').mouseleave(function () {
                $(this).find('ul').show().hide();
                $(this).css({ position: "static" });
            });
            $(this).parent().find('li').click(
                function () {
                    var newVal = $(this).text();
                    $(this).parents('.text-box').find('.text').text(newVal);
                    $(this).parent().hide();
                    $(this).parents('.text-box').css({ position: "static" });
                }
            );
        }
    );
}
///点击输入框提示,点击的框,显示的div的ID
function ClickBox(id1, id2) {
    //有红色要去掉
    if ($(id1).hasClass("red-border-input")) {
        $(id1).removeClass("red-border-input");
    }
    //如果没有绿色添加
    if (!$(id1).hasClass("green-border-input")) {
        $(id1).addClass("green-border-input");
    }
    if (id2 == "dvPwd") {
        $("#dvPwd").css("line-height", "19px");
    }
    if (id2 == "dvPhone") {
        $("#dvPhone").css("line-height", "40px");
    }
    if (id2 == "dvPhone1") {
        $("#dvPhone1").css("line-height", "40px");
    }
    $("#" + id2).html(GetMessage("info-mes", arrBox[id2]));
}

function ClickBoxYellow(id1, id2) {
    //有红色要去掉
    if ($(id1).hasClass("red-border-input")) {
        $(id1).removeClass("red-border-input");
    }
    //如果没有绿色添加
    if (!$(id1).hasClass("yellow-border-input")) {
        $(id1).addClass("yellow-border-input");
    }
    if (id2 == "dvPwd") {
        $("#dvPwd").css("line-height", "19px");
    }
    if (id2 == "dvPhone") {
        $("#dvPhone").css("line-height", "40px");
    }
    if (id2 == "dvPhone1") {
        $("#dvPhone1").css("line-height", "40px");
    }

    $("#" + id2).html(GetMessage("info-mes", arrBox[id2]));
}

//获取提示
function GetMessage(clsName, tips) {
    return "<div class='" + clsName + "'>" + tips + "</div>";
}
function getbyid(id) {
    return document.getElementById(id);
}
///重新加载验证码
function reloadCode(urlString) {
    getbyid("imVcode").src = urlString + "?id=" + Math.random();
}
function GetQueryString(name) {
    var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)");
    var r = window.location.search.substr(1).match(reg);
    if (r != null) return unescape(r[2]); return null;
}
//提交注册
function RegSubmit(ctrl) {

    $(ctrl).unbind("click");
    var arrTds = new Array("#dvPwd", "#dvPhone", "#dvCode", "#dvCode2");

    BlurPwd(2);
    BlurPhone(2);
    BlurCode2(2);
    BlurCode(2);
    for (var i = 0; i < arrTds.length; i++) {
        if ($(arrTds[i]).html().indexOf('reg_wrong') > -1) {
            $(ctrl).click(function () { RegSubmit(this); });
            return false;
        }
    }

    if (!checkagree()) {
        $(ctrl).click(function () { RegSubmit(this); });
        return;
    }
    var extendKey = $("#hd_extendKey").val();
    var inviteUn = request("invite");
    ClosePhoneDial();
    showDialWindowsWithoutBtn("团贷网提醒你", "<img class=\"vm\" src=\"//js.tuandai.com/images/default/loading24.gif\" />&nbsp;正在提交注册信息，请稍候...");
    //注册来源
    var from = "TuanDaiPhone";
    var regFrom = GetQueryString("tdfrom");
    if (regFrom == "" || regFrom == null) {
        regFrom = GetQueryString("from");
        if (regFrom == "" || regFrom == null) {
            regFrom = getCookie("tdfrom");
            if (regFrom == "" || regFrom == null) {
                regFrom = from;
            }
        }
    }
    var returnUrl = request("ReturnUrl");
    if (returnUrl.indexOf(niwoWebsiteUrl) != -1) {
        regFrom = "niwo";
    }
    //推荐手机号
    var exTelNo = $("#txtPhone1").val();
    //borrowerTypeIdの
    var borrowerTypeId = $("#txtBorrowerTypeId").val();
    $.ajax({
        async: true,
        url: "/user/new_tuandai_ajax/Reg.ashx",
        dataType: "json",
        data: { Cmd: "User_Insert_Phone", UserTypeId: 1, phoneCode: $("#txt_smsCode").val(), Phone: $("#txtPhone").val(), Pwd: $("#txtPwd").val(), Invite: inviteUn, Rec: inviteUn, extendKey: extendKey, dec: regFrom, ExtendTelNo: exTelNo, BorrowerTypeId: borrowerTypeId },
        success: function (json) {
            AsyncReg(json, ctrl);
        }
    });
}  
function AsyncReg(data, ctrl) {
    if (data.result == "True") { 
        var borrowerTypeId = $("#txtBorrowerTypeId").val();
        if (borrowerTypeId == "9") {
            window.location.href = portalWebsiteUrl + "/member/bank/xm_bankbind.aspx?borrowerTypeId=9";
        } else {
            AsyncReg_Back();
        }

    }
    else if (data.result == "False") {
        //showDialWindows("团贷网提醒你", data.msg, "确定", function () { colosenewWindow(); }, null, null);
        colosenewWindow();

        reloadCode('/ValidateCode.ashx');
        $("#txtCode").val('');
        ChangeClass("#txtCode", "red-border-input");
        $("#dvCode2").html(GetMessage("reg_wrong", "重新输入验证码"));

        $("#txt_smsCode").val('');
        ChangeClass("#txt_smsCode", "red-border-input");
        $("#dvCode").html(GetMessage("reg_wrong1", data.msg));
        ShowInputPhoneCode();
        $(ctrl).click(function () { RegSubmit(this); });
    }
    else if (data.result == "-100") {
        window.location.href = "/View/NoticeMessage.aspx?status=2";
    }
    else {
        window.location.href = data;
    }
}

function AsyncReg_Back() {
    // var caipiaoReturnUrl = getCookie("caipiaoReturnUrl");
    // if (caipiaoReturnUrl != null && caipiaoReturnUrl != "") {
    //     window.location.href = "/user/CaiPiaoRegistered.aspx";
    //     return false;
    // }
    var returnUrl = request("ReturnUrl");
    if (returnUrl.indexOf(portalWebsiteUrl) != -1 || returnUrl == "") {
        //20140827 14:36:00 lzz修改  调整到主页并且带参数showbox=1
        //returnUrl = "/user/Registered.aspx";
        //returnUrl = portalWebsiteUrl + "/?showbox=1";

        //2015/5/7
        returnUrl = portalWebsiteUrl + "/user/new_tuandai/Register_succeed.aspx";
    }
    window.location.href = PassportWebUrl + "/2login?ret=" + encodeURIComponent(returnUrl);
    return false;
}

//弹框手机验证码

 

/*
*邀请人手机号码检查
*/
function extendTelNoCheck(fun) {
    var exTelNo = $("#txtPhone1").val();
    $("#dvPhone1").css("line-height", "40px");
    if (exTelNo == "") {
        fun();
        return;
    }
    var patTel = new RegExp("^(13|14|15|17|18)[0-9]{9}$", "i");
    if (patTel.test(exTelNo)) {
        var telNo = $("#txtPhone").val();
        if (telNo == exTelNo) {
            ChangeClass("#txtPhone1", "red-border-input");
            $("#dvPhone1").css("line-height", "19px").html(GetMessage("reg_wrong", "推荐人手机号和注册手机号不能一样"));
            return;
        }
        //检查是否注册
        //$.ajax({
        //    type: "get",
        //    async: true,
        //    url: "/user/new_tuandai_ajax/Reg.ashx",
        //    data: "Cmd=CheckPhone&sPhone=" + exTelNo,
        //    dataType: "json",
        //    timeout: 3000,
        //    success: function (jsondata) {
        //        var data = jsondata.result;
        //        if (data == "False") {
        //            ChangeClass("#txtPhone1", "red-border-input");
        //            $("#dvPhone1").html(GetMessage("reg_wrong", "推荐手机未注册"));
        //        }
        //        else {
        //            ChangeClass("#txtPhone1", "");
        //            $("#dvPhone1").html(GetMessage("reg_ok", arrOk["dvPhone1"]));
        //            fun();
        //        }
        //    },
        //    error: function () {
        //        fun();
        //    }
        //});
        ChangeClass("#txtPhone1", "");
        $("#dvPhone1").html(GetMessage("reg_ok", arrOk["dvPhone1"]));
        fun();
    } else {
        ChangeClass("#txtPhone1", "red-border-input");
        $("#dvPhone1").css("line-height", "19px").html(GetMessage("reg_wrong", arrWrong["dvPhone1"]));
    }
}

//检查是否同意
function checkagree() {
    var agree = $("#agreexieyi").attr("checked");
    if (agree == "checked" || agree) {
        return true;

    } else {
        showDialWindows("团贷网提醒你", "注册成为团贷网会员，一定要同意团贷网协议。", "确定", function () { colosenewWindow(); }, null, null);
        return false;
    }
}

//检测手机号
/*function BlurPhone(type) {
    var txt = "#txtPhone";
    var td = "#dvPhone";
    var patTel = new RegExp("^(13|14|15|17|18)[0-9]{9}$", "i");
    var str = $(txt).val();
    if (type == 1 && str == "") {
        ChangeClass(txt, "");
        $(td).html("");
        return;
    }
    $(td).css("line-height", "40px");
    if (str == "") {
        ChangeClass(txt, "red-border-input");
        $(td).html(GetMessage("reg_wrong", "请输入手机号码"));
        return;
    }

    if (patTel.test(str)) {
        if (oldtelno != str) {
            oldtelno = str;
        } else {
            ChangeClass(txt, oldtelnostatus);
            $(td).html(oldtelnotip);
            return;
        }

        $(td).html(GetMessage("info-mes", "正在检测手机号码……"));
        $.ajax({
            type: "post",
            async: true,
            url: "/user/new_tuandai_ajax/Reg.ashx",
            data: "Cmd=CheckPhone&sPhone=" + str,
            dataType: "json",
            timeout: 3000,
            success: function (jsondata) {
                var data = jsondata.result;
                if (data == "False") {
                    ChangeClass(txt, "");
                    oldtelnostatus = "";
                    oldtelnotip = GetMessage("reg_ok", arrOk["dvPhone"]);
                    $("#dvPhone").html(oldtelnotip);
                }
                else {
                    ChangeClass(txt, "red-border-input");
                    oldtelnostatus = "red-border-input";
                    oldtelnotip = GetMessage("reg_wrong", "手机已注册");
                    $("#dvPhone").html(oldtelnotip);
                }
            }
        });
    }
    else {
        ChangeClass(txt, "red-border-input");
        oldtelno = "";
        oldtelnostatus = "";
        oldtelnotip = GetMessage("reg_wrong", arrWrong["dvPhone"]);
        $(td).css("line-height", "19px");
        $(td).html(oldtelnotip);
    }
}*/


///校验密码
function BlurPwd(type) {
    var txtH = "#txtShowPwd";
    var txt = "#txtPwd";
    var td = "#dvPwd";
    var str = $(txt).val();
    if (type == 1 && str == "") {
        ChangeClass(txtH, "");
        ChangeClass(txt, "");
        $(td).html("");
        return;
    }
    $(td).css("line-height", "40px");
    if (str == "") {
        ChangeClass(txtH, "red-border-input");
        ChangeClass(txt, "red-border-input");
        $(td).html(GetMessage("reg_wrong", "请输入密码"));
        return;
    }
    var txtPassword = str.replace(/[ ]/g, "");
    if (txtPassword != str) {
        ChangeClass(txtH, "red-border-input");
        ChangeClass(txt, "red-border-input");
        $(td).css("line-height", "19px");
        $(td).html(GetMessage("reg_wrong", arrWrong["dvPwd2"]));
        return;
    }

    if (/^.*?[\d]+.*$/.test(str) && /^.*?[A-Za-z].*$/.test(str) && /^.{6,16}$/.test(str)) {
        //格式正确
        $(td).html(GetMessage("reg_ok", arrOk["dvPwd"]));
        ChangeClass(txt, "");
        ChangeClass(txtH, "");
    }
    else {
        ChangeClass(txtH, "red-border-input");
        ChangeClass(txt, "red-border-input");
        $(td).css("line-height", "19px");
        $(td).html(GetMessage("reg_wrong", arrWrong["dvPwd"]));
    }
}

//检验 手机验证码
/*function BlurCode(type) {
    var pat = new RegExp("^[0-9]{6}$", "i");
    var str = $("#txt_smsCode").val();
    if (type == 1 && str == "") {
        ChangeClass("#txt_smsCode", "");
        $("#dvCode").html("");
        return;
    }
    if (str == "") {
        ChangeClass("#txt_smsCode", "red-border-input");
        $("#dvCode").html(GetMessage("reg_wrong1", "请输入手机验证码"));
        return;
    }
    if (!pat.test(str)) {   //格式不正确
        $("#dvCode").html(GetMessage("reg_wrong1", arrWrong["dvCode"]));
        ChangeClass("#txt_smsCode", "red-border-input");
    } else {
        $("#dvCode").html("");
        ChangeClass("#txt_smsCode", "");
    }
}*/

//检验 图片验证码
/*function BlurCode2(type) {
    var pat = new RegExp("^[\\da-z]{4}$", "i");
    var str = $("#txtCode").val();
    if (type == 1 && str == "") {
        ChangeClass("#txtCode", "");
        $("#dvCode2").html("");
        return;
    }
    if (str == "") {
        ChangeClass("#txtCode", "red-border-input");
        $("#dvCode2").html(GetMessage("reg_wrong", "请输入图形验证码"));
        return;
    }
    if (!pat.test(str)) {   //格式不正确
        $("#dvCode2").html(GetMessage("reg_wrong", arrWrong["dvCode2"]));
        ChangeClass("#txtCode", "red-border-input");
    }
    else {
        $("#dvCode2").html("");
        ChangeClass("#txtCode", "");
    }
}
*/
///改变样式
function ChangeClass(id, classname) {
    if (classname == "") {
        if ($(id).hasClass("red-border-input")) {
            $(id).removeClass("red-border-input");
        }
        if ($(id).hasClass("green-border-input")) {
            $(id).removeClass("green-border-input");
        }
        if ($(id).hasClass("yellow-border-input")) {
            $(id).removeClass("yellow-border-input");
        }
    }
    else if (classname == "red-border-input") {
        if (!$(id).hasClass("red-border-input")) {
            $(id).addClass("red-border-input");
        }
        if ($(id).hasClass("green-border-input")) {
            $(id).removeClass("green-border-input");
        }
        if ($(id).hasClass("yellow-border-input")) {
            $(id).removeClass("yellow-border-input");
        }
    }
    else {
        if (!$(id).hasClass("green-border-input")) {
            $(id).addClass("green-border-input");
        }
        if ($(id).hasClass("red-border-input")) {
            $(id).removeClass("red-border-input");
        }
    }
}


var msgtype = 1;
var timer = null;
var leftsecond = 180; //60; //倒计时
var mbTest = /^(13|14|15|17|18)[0-9]{9}$/;
//获取手机验证码
/*function sendMobileValidSMSCode() {
    msgtype = 1;
    $("#btnSendMsg").unbind("click");
    $("#btnVoice").unbind("click");
    BlurPhone(2);
    BlurCode2(2);
    $("#dvCode").html("");
    var mobile = $.trim($("#txtPhone").val());
    var sVerCode = $.trim($("#txtCode").val());
    if (mobile == "" || sVerCode == "") {
        $("#btnSendMsg").click(function () { sendMobileValidSMSCode(); });
        $("#btnVoice").click(function () { SendVoiceVerifyCode(); });
        return;
    }
    if (mbTest.test(mobile)) {
        $("#btnSendMsg").html("短信发送中...");
        $.ajax({
            url: "/user/new_tuandai_ajax/Reg.ashx",
            type: "post",
            dataType: "json",
            data: { Cmd: "getPhoneRegCode2", mobile: mobile, sVerCode: sVerCode },
            success: function (json) {
                var result = json.result;
                leftsecond = 180;
                if (parseInt(result) == -100) { window.location.href = "/View/NoticeMessage.aspx?status=2"; }
                if (result == "true") {
                    //$("#dvCode").html("");
                    $("#dvCode").html(GetMessage("reg_wrong1", "验证码已经发送至您的手机，请查收！"));
                    clearInterval(timer);
                    timer = setInterval(setLeftTime, 1000, "1");
                    $("#txtPhone").attr("readonly", true);
                }
                else if (result == "-2") {
                    $("#btnSendMsg").html("获取短信验证码");
                    $("#dvCode").html(GetMessage("reg_wrong1", "手机号码已被其他用户使用"));
                    $("#btnSendMsg").click(function () { sendMobileValidSMSCode(); });
                    $("#btnVoice").click(function () { SendVoiceVerifyCode(); });
                    $("#txtPhone").removeAttr("readonly");
                }
                else if (result == "-3") {
                    $("#btnSendMsg").html("获取短信验证码");
                    $("#dvCode").html(GetMessage("reg_wrong1", json.msg));
                    $("#btnSendMsg").click(function () { sendMobileValidSMSCode(); });
                    $("#btnVoice").click(function () { SendVoiceVerifyCode(); });
                    $("#txtPhone").removeAttr("readonly");
                }
                else if (result == "-4") {
                    reloadCode('/ValidateCode.ashx');
                    $("#txtCode").val('');
                    $("#btnSendMsg").html("获取短信验证码");
                    $("#dvCode").html(GetMessage("reg_wrong1", json.msg));
                    $("#btnSendMsg").click(function () { sendMobileValidSMSCode(); });
                    $("#btnVoice").click(function () { SendVoiceVerifyCode(); });
                    $("#txtPhone").removeAttr("readonly");

                    //ChangeClass("#txtCode", "red-border-input");
                    //$("#dvCode2").html(GetMessage("reg_wrong", json.msg));

                }
                else {
                    $("#btnSendMsg").html("获取短信验证码");
                    $("#dvCode").html(GetMessage("reg_wrong1", "验证码发送失败"));

                    $("#btnSendMsg").click(function () { sendMobileValidSMSCode(); });
                    $("#btnVoice").click(function () { SendVoiceVerifyCode(); });
                    $("#txtPhone").attr("readonly", true);
                }

            }
        });
    }
}*/

//获取语音验证码验证码
/*function SendVoiceVerifyCode() {
    $("#btnSendMsg").unbind("click");
    $("#btnVoice").unbind("click");

    BlurPhone(2);
    BlurCode2(2);

    var mobile = $.trim($("#txtPhone").val());
    var sVerCode = $.trim($("#txtCode").val());
    if (mobile == "" || sVerCode == "") {
        $("#btnSendMsg").click(function () { sendMobileValidSMSCode(); });
        $("#btnVoice").click(function () { SendVoiceVerifyCode(); });
        return;
    }

    var arrTds = new Array("#dvCode", "#dvCode2");

    for (var i = 0; i < arrTds.length; i++) {
        if ($(arrTds[i]).html().indexOf('reg_wrong') > -1) {
            $("#btnSendMsg").click(function () { sendMobileValidSMSCode(); });
            $("#btnVoice").click(function () { SendVoiceVerifyCode(); });
            return false;
        }
    }



    $("#dvCode").html("");
    if (mbTest.test(mobile)) {
        $("#btnVoice").html("发送中...");

        $.ajax({
            url: "/user/new_tuandai_ajax/Reg.ashx",
            type: "post",
            dataType: "json",
            data: { Cmd: "GetVoiceVerifyCode2", mobile: mobile, sVerCode: sVerCode },
            success: function (json) {
                var result = json.result;
                leftsecond = 180;
                if (parseInt(result) == -100) { window.location.href = "/View/NoticeMessage.aspx?status=2"; }
                if (result == "true") {
                    $("#dvCode").html(GetMessage("reg_wrong1", "验证码已经发送,请留意手机来电！"));
                    clearInterval(timer);
                    timer = setInterval(setLeftTime, 1000, "1");
                    $("#txtPhone").attr("readonly", true);
                }
                else if (result == "-2") {
                    $("#btnVoice").html("语音验证");
                    $("#dvCode").html(GetMessage("reg_wrong1", "手机号码已被其他用户使用"));
                    $("#btnSendMsg").click(function () { sendMobileValidSMSCode(); });
                    $("#btnVoice").click(function () { SendVoiceVerifyCode(); });
                    $("#txtPhone").removeAttr("readonly");
                }
                else if (result == "-3") {
                    $("#btnVoice").html("语音验证");
                    $("#dvCode").html(GetMessage("reg_wrong1", json.msg));
                    $("#btnSendMsg").click(function () { sendMobileValidSMSCode(); });
                    $("#btnVoice").click(function () { SendVoiceVerifyCode(); });
                    $("#txtPhone").removeAttr("readonly");
                }
                else if (result == "-4") {
                    reloadCode('/ValidateCode.ashx');
                    $("#txtCode").val('');
                    $("#btnVoice").html("语音验证");
                    $("#dvCode").html(GetMessage("reg_wrong1", json.msg));
                    $("#btnSendMsg").click(function () { sendMobileValidSMSCode(); });
                    $("#btnVoice").click(function () { SendVoiceVerifyCode(); });
                    $("#txtPhone").removeAttr("readonly");
                }
                else {
                    $("#btnVoice").html("语音验证");
                    $("#dvCode").html(GetMessage("reg_wrong1", json.msg));
                    //clearInterval(timer);
                    //timer = setInterval(setLeftTime, 1000, "1");
                    $("#btnSendMsg").click(function () { sendMobileValidSMSCode(); });
                    $("#btnVoice").click(function () { SendVoiceVerifyCode(); });
                    $("#txtPhone").attr("readonly", true);
                }
            }
        });
    }
}*/

function setLeftTime() {
    var second = Math.floor(leftsecond);
    $("#btnSendMsg").html("重新获取(<b style='color:orange;'>" + second + "</b>S)");
    $(".hav-other").hide();
    leftsecond--;
    if (leftsecond < 1) {
        $("#btnSendMsg").html("获取短信验证码");
        $("#btnVoice").html("语音验证");
        $(".hav-other").show();
        $("#dvCode").html("");
        clearInterval(timer);
        try {
            $("#btnSendMsg").click(function () { sendMobileValidSMSCode(); });
            $("#btnVoice").click(function () { SendVoiceVerifyCode(); });
            $("#txtPhone").removeAttr("readonly");
        } catch (E) { }
        return;
    }
}

function Init() {
    $('#txtPhone').click(function () { ClickBox("#txtPhone", "dvPhone"); });
    $('#txtPhone1').click(function () { ClickBox("#txtPhone1", "dvPhone1"); });
    $("#txtPwd").click(function () { ClickBox("#txtPwd", "dvPwd"); });
    //密码显示聚集事件
    $("body").delegate("#txtShowPwd", "click", function () {
        ClickBox("#txtShowPwd", "dvPwd");
    });

    $('#txtCode').click(function () { ClickBoxYellow("#txtCode", "dvCode2"); ClickBoxYellow("#txt_smsCode", "dvCode"); });
    $("#txt_smsCode").click(function () { ClickBoxYellow("#txtCode", "dvCode2"); ClickBoxYellow("#txt_smsCode", "dvCode"); });

    //离焦事件
 
    $('#txtPwd').blur(function () { BlurPwd(1); });
    $('#txtCode').blur(function () { BlurCode2(1); });
    $('#txt_smsCode').blur(function () { BlurCode(1); });
    $("body").delegate("#txtShowPwd", "blur", function () {
        BlurPwd(1);
    });
}

///关闭手机弹框


$(function () {
    simulationList();
    //$(".hav-other .other-btn").click(function () {
    //    $("#VoiceCode").show();
    //    $("#ChitCode").hide();
    //});
    Init();
    $("#btnReg").click(function () { ShowInputPhoneCode(this); });
    $("#btnSendMsg").click(function () { sendMobileValidSMSCode(); });
    $("#btnVoice").click(function () { SendVoiceVerifyCode(); });
    $("#btnSubReg").click(function () { RegSubmit(this); });
    $("#txt_smsCode").keypress(function (e) {
        if (e.keyCode == "13")
            $("#btnSubReg").click();
    });
    $("#txtPwd").keypress(function (e) {
        if (e.keyCode == "13")
            $("#btnReg").click();
    });
    $("#agreexieyi").keypress(function (e) { if (e.keyCode == "13") $("#btnReg").click(); });

    // 显示隐藏密码
    $('.password').password().on('show.bs.password', function (e) {
        $('#methods').prop('checked', true);
    }).on('hide.bs.password', function (e) {
        $('#methods').prop('checked', false);
    });
    $('#methods').click(function () {
        $('.password').password('toggle');
    });

    /*$("#txtPhone").focus();
    ShowRecom();*/

});


//检测手机号
/*function BlurPhone2(type) {
    var txt = "#txtPhone1";
    var td = "#dvPhone1";
    var patTel = new RegExp("^(13|14|15|17|18)[0-9]{9}$", "i");
    var str = $(txt).val();
    if (type == 1 && str == "") {
        ChangeClass(txt, "");
        $(td).html("");
        return;
    }
    $(td).css("line-height", "40px");
    if (str == "") {
        ChangeClass(txt, "red-border-input");
        $(td).html(GetMessage("reg_wrong", arrBox["dvPhone1"]));
        return;
    }
    if (patTel.test(str)) {
        var telNo = $("#txtPhone").val();
        if (telNo == str) {
            ChangeClass("#txtPhone1", "red-border-input");
            $(td).css("line-height", "19px");
            $("#dvPhone1").html(GetMessage("reg_wrong", "推荐人手机号和注册手机号不能一样"));
            return;
        }
        ChangeClass(txt, oldtelnostatus);
        $(td).html('');
        return;
    }
    else {
        ChangeClass(txt, "red-border-input");
        $(td).css("line-height", "19px");
        $(td).html(GetMessage("reg_wrong", arrWrong["dvPhone1"]));
    }
}*/

