$(function () {
    $('#txtPhone').click(function () { ClickBox("#txtPhone"); });
    $('#txtImgCode').click(function () { ClickBox("#txtImgCode") });
    $('#txtPhoneCode').click(function () { ClickBox("#txtPhoneCode") });

    $('#txtPhone').blur(function () { BlurPhone(1); });
    $('#txtImgCode').blur(function () { BlurImgCode(1); });
    $('#txtPhoneCode').blur(function () { BlurPhoneCode(1); });

    $("#btnSendMobileCode").click(function () { sendMobileValidSMSCode(); });
    $("#btnSendVoiceCode").click(function () { SendVoiceVerifyCode(); });

    $('#btn_mobile_ok').click(function () { MoblieOk(); });
    
    
})

function MoblieOk()
{
    BlurPhone(2);
    BlurImgCode(2);
    var mobile = $.trim($("#txtPhone").val());
    var code = $.trim($("#txtPhoneCode").val());
    $.ajax({
        url: "/ajaxCross/ajax_user.ashx",
        type: "post",
        dataType: "json",
        data: { Cmd: "CheckResetPasswordMobileCode", code: code, mobile: mobile },
        success: function (json) {
            var result = json.result;
            if (parseInt(result) == -100) { window.location.href = "/View/NoticeMessage.aspx?status=2"; }
            if (result == 1) {
                window.location.href = "/user/SetNewPwd_Telno.aspx";
            }
            else if (result == -1) {
                ChangeClass("#txtPhoneCode", "red-border-input");
                $("#dvCode").html(GetP("reg_wrong","手机验证码错误")).show();
            }
            else if (result == -2 || result == -3) {
                ChangeClass("#txtPhoneCode", "red-border-input");
                $("#dvCode").html(GetP("reg_wrong","手机验证码已过期")).show();
            }
            else if (result == 0) {
                ChangeClass("#txtPhoneCode", "red-border-input");
                $("#dvCode").html(GetP("reg_wrong","请输入手机验证码")).show();
            }
            else {
                ChangeClass("#txtPhoneCode", "red-border-input");
                $("#dvCode").html(GetP("reg_wrong","手机验证码错误")).show();
            }
        }
    });
}

function sendMobileValidSMSCode()
{
    $("#dvCode").html("");     //验证码发送失败后再次发送先隐藏提示框
    $("#btnSendMobileCode").unbind("click");
    $("#btnSendVoiceCode").unbind("click");
    BlurImgCode(2);
    var sVerCode = $.trim($("#txtImgCode").val());
    var mobile = $.trim($("#txtPhone").val());
    if (mobile == "") {
        ChangeClass("#txtPhone", "red-border-input");
        $("#dvPhone").html(GetP("reg_wrong", "请输入手机号码"));
        $("#btnSendMobileCode").click(function () { sendMobileValidSMSCode(); });
        $("#btnSendVoiceCode").click(function () { SendVoiceVerifyCode(); });
        return;
    }
    else if (!patTel.test(mobile)) {
        ChangeClass("#txtPhone", "red-border-input");
        $("#dvPhone").html(GetP("reg_wrong", "手机号格式错误"));
        $("#btnSendMobileCode").click(function () { sendMobileValidSMSCode(); });
        $("#btnSendVoiceCode").click(function () { SendVoiceVerifyCode(); });
        return;
    }
    $("#dvPhone").html("");
    $("#btnSendMobileCode").html("短信发送中...");
    $("#btnSendVoiceCode").hide();
    $.ajax({
        url: "/ajaxCross/ajax_user.ashx",
        type: "post",
        dataType: "json",
        data: { Cmd: "GetResetPasswordMobileCode", MobilePhone: mobile, vtype: "0", sVerCode: sVerCode },
        success: function (json) {
            var result = json.result;
            leftsecond = 180;
            if (parseInt(result) == -100) {
                window.location.href = "/View/NoticeMessage.aspx?status=2";
            }
            if (result == 1) {
                leftsecond = 180;
                clearInterval(timer);
                timer = setInterval(setLeftTime, 1000, "1");
                
                $("#dvCode").html("");
            }
            else {
                $("#btnSendVoiceCode").show();
                $("#btnSendMobileCode").html("获取短信验证码");
                //$("#dvCode").css("line-height", "19px");
                $("#dvCode").html(GetP("reg_wrong", json.msg));
                if (result = -4) {
                    $("#txtImgCode").val("");
                }
                $("#btnSendMobileCode").click(function () { sendMobileValidSMSCode(); });
                $("#btnSendVoiceCode").click(function () { SendVoiceVerifyCode(); });
                reloadCode(portalWebsiteUrl+'/ValidateCode.ashx');
            }
        }
    });
}

function SendVoiceVerifyCode()
{
    $("#dvCode").html("");    //验证码发送失败后再次发送先隐藏提示框
    $("#btnSendMobileCode").unbind("click");
    $("#btnSendVoiceCode").unbind("click");
    BlurImgCode(2);
    var sVerCode = $.trim($("#txtImgCode").val());
    var mobile = $.trim($("#txtPhone").val());
    if (mobile == "") {
        ChangeClass("#txtPhone", "red-border-input");
        $("#dvPhone").html(GetP("reg_wrong", "请输入手机号码"));
        $("#btnSendMobileCode").click(function () { sendMobileValidSMSCode(); });
        $("#btnSendVoiceCode").click(function () { SendVoiceVerifyCode(); });
        return;
    }
    else if (!patTel.test(mobile)) {
        ChangeClass("#txtPhone", "red-border-input");
        $("#dvPhone").html(GetP("reg_wrong", "手机号格式错误"));
        $("#btnSendMobileCode").click(function () { sendMobileValidSMSCode(); });
        $("#btnSendVoiceCode").click(function () { SendVoiceVerifyCode(); });
        return;
    }
    $("#dvPhone").html("");
    $("#btnSendMobileCode").html("语音发送中...");
    $("#btnSendVoiceCode").hide();
    $.ajax({
        url: "/ajaxCross/ajax_user.ashx",
        type: "post",
        dataType: "json",
        data: { Cmd: "GetResetPasswordMobileCode", MobilePhone: mobile, vtype: "1", sVerCode: sVerCode },
        success: function (json) {
            var result = json.result;
            leftsecond = 180;
            if (parseInt(result) == -100) {
                window.location.href = "/View/NoticeMessage.aspx?status=2";
            }
            if (result == 1) {
                leftsecond = 180;
                clearInterval(timer);
                timer = setInterval(setLeftTime, 1000, "1");

                $("#dvCode").html("");
            }
            else {
                $("#btnSendVoiceCode").show();
                $("#btnSendMobileCode").html("获取短信验证码");
                $("#btnSendVoiceCode").html("语音验证");
                //$("#dvCode").css("line-height", "19px");
                $("#dvCode").html(GetP("reg_wrong", json.msg));
                if (result = -4) {
                    $("#txtImgCode").val("");
                }
                $("#btnSendMobileCode").click(function () { sendMobileValidSMSCode(); });
                $("#btnSendVoiceCode").click(function () { SendVoiceVerifyCode(); });
                reloadCode('/ValidateCode.ashx');
            }
        }
    });
}

var timer = null;
//倒计时
var leftsecond = 180;
function setLeftTime() {
    var second = Math.floor(leftsecond);
    $("#btnSendMobileCode").html("重新获取(" + second + ")");
    leftsecond--;
    if (leftsecond < 1) {

        $("#btnSendMobileCode").html("短信验证码");
        $("#btnSendVoiceCode").show();
        clearInterval(timer);
        $("#btnSendMobileCode").click(function () { sendMobileValidSMSCode(); });
        $("#btnSendVoiceCode").click(function () { SendVoiceVerifyCode(); });
        return;
    }
}

function ClickBox(id1) {
    if ($(id1).hasClass("red-border-input")) {
        $(id1).removeClass("red-border-input");
    }
    if (!$(id1).hasClass("green-border-input")) {
        $(id1).addClass("green-border-input");
    }
}

function ChangeClass(id, classname) {
    if (classname == "") {
        if ($(id).hasClass("red-border-input")) {
            $(id).removeClass("red-border-input");
        }
        if ($(id).hasClass("green-border-input")) {
            $(id).removeClass("green-border-input");
        }
    } else if (classname == "red-border-input") {
        if (!$(id).hasClass("red-border-input")) {
            $(id).addClass("red-border-input");
        }
        if ($(id).hasClass("green-border-input")) {
            $(id).removeClass("green-border-input");
        }
    } else {
        if (!$(id).hasClass("green-border-input")) {
            $(id).addClass("green-border-input");
        }
        if ($(id).hasClass("red-border-input")) {
            $(id).removeClass("red-border-input");
        }
    }
}

var patTel = new RegExp("^(13|14|15|17|18)[0-9]{9}$", "i");

function BlurPhone(type) {
    var txt = "#txtPhone";
    var td = "#dvPhone";
    var str = $.trim($(txt).val());
    if (type == 1 && str == "") {
        ChangeClass(txt, "");
        $(td).html("");
        return;
    }
    $(td).css("line-height", "40px");
    if (str == "") {
        ChangeClass(txt, "red-border-input");
        $(td).html(GetP("reg_wrong", "请输入手机号码"));
        return;
    }

    if (patTel.test(str)) {
        $(td).html(GetP("reg_info", "正在检测手机号码……"));
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
                    ChangeClass(txt, "red-border-input");
                    $(td).html(GetP("reg_wrong", "该手机号未注册"));
                }
                else {
                    ChangeClass(txt, "");
                    $(td).html("");
                }
            }
        });
    }
    else {
        ChangeClass(txt, "red-border-input");
        $(td).html(GetP("reg_wrong", "手机号格式错误"));
        return;
    }
}

function BlurImgCode(type) {
    var pat = new RegExp("^[\\da-z]{4}$", "i");
    var str = $.trim($("#txtImgCode").val());
    if (type == 1 && str == "") {
        ChangeClass("#txtImgCode", "");
        $("#dvImgCode").html("");
        return;
    }
    if (str == "") {
        ChangeClass("#txtImgCode", "red-border-input");
        $("#dvImgCode").html(GetP("reg_wrong", "请输入图形验证码"));
        reloadCode('/ValidateCode.ashx');
        return;
    }
    if (!pat.test(str)) {   //格式不正确
        $("#dvImgCode").html(GetP("reg_wrong", "图形验证码错误"));
        ChangeClass("#txtImgCode", "red-border-input");
        reloadCode('/ValidateCode.ashx');
        return;
    }
    else {
        $("#dvImgCode").html("");
        ChangeClass("#txtImgCode", "");
    }
}

function BlurPhoneCode(type) {
    var pat = new RegExp("^[0-9]{6}$", "i");
    var str = $.trim($("#txtPhoneCode").val());
    if (type == 1 && str == "") {
        ChangeClass("#txtPhoneCode", "");
        $("#dvCode").html("");
        return;
    }
    if (str == "") {
        ChangeClass("#txtPhoneCode", "red-border-input");
        $("#dvCode").html(GetP("reg_wrong", "请输入手机验证码"));
        return;
    }
    if (!pat.test(str)) {   //格式不正确
        $("#dvCode").html(GetP("reg_wrong", "手机验证码错误"));
        ChangeClass("#txtPhoneCode", "red-border-input");
        return;
    } else {
        $("#dvCode").html("");
        ChangeClass("#txtPhoneCode", "");
    }
}

function GetP(clsName, c) { return "<div class='" + clsName + "' style='width:200px !important;'>" + c + "</div>"; }

function getbyid(id) {
    return document.getElementById(id);
}

function reloadCode(urlString) {
    getbyid("imVcode").src = urlString + "?id=" + Math.random();
}
