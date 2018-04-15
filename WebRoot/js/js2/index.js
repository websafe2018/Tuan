$(function () {
    //关闭弹窗
    $(".loan-dial .title i.close").on("click", function (e) {
         $("#td-atr-layer").hide();
        $('.close').parents('.loan-dial').hide();
    })

    $("#txtName").on("blur", function (e) {
        CheckAddressWarning("#mortgageProvince div.selected", "#mortgageCity div.selected", "#checkAddress");
        CheckName(false, "#txtName", "#checkName");
    })
    $("#txtNameCredit").on("blur", function (e) {
        CheckAddressWarning("#mortgageProvince div.selected", "#mortgageCity div.selected", "#checkAddressCredit");
        CheckName(false, "#txtNameCredit", "#checkNameCredit");
    })

    $("#txtPhone").on("blur", function (e) {
        CheckAddressWarning("#mortgageProvince div.selected", "#mortgageCity div.selected", "#checkAddress");
        CheckPhone(false, "#txtPhone", "#checkPhone");
    })
    $("#txtPhoneCredit").on("blur", function (e) {
        CheckAddressWarning("#mortgageProvince div.selected", "#mortgageCity div.selected", "#checkAddressCredit");
        CheckPhone(false, "#txtPhoneCredit", "#checkPhoneCredit");
    })

    $("#txtAmount").on("blur", function (e) {
        BlurAmount(false);
    })

    $("#txtCode").on("blur", function (e) {
        CheckAddressWarning("#mortgageProvince div.selected", "#mortgageCity div.selected", "#checkAddress");
        CheckCode(false, "#txtCode", "#checkCode");
    })
    $("#txtCodeCredit").on("blur", function (e) {
        CheckAddressWarning("#mortgageProvince div.selected", "#mortgageCity div.selected", "#checkAddressCredit");
        CheckCode(false, "#txtCodeCredit", "#checkCodeCredit");
    })
});

//借款弹窗
function ShowBorrowDial(id, title, type, num) {
    //try {
    //    if (IsOpenCGT == "1" && !checkIsOpen())
    //        return false;
    //} catch (e) { }

    if (id == "creditBorrow") {
        IniCreditBox();
    } else {
        IniMortgageBox();
    }

    $("#td-atr-layer").show();
    $("#" + id).show();
    $("#" + id).find(".title p").text(title);

    var index = parseInt(num);
    if (type == 1) {
        ClearDial(2);
        $("#creditBorrow .fix div.right").hide().eq(index - 1).show();
    }
    else {
        $("#mortgageBorrow .fix div.right").hide().eq(index - 1).show();
        ClearDial(1);
    }
}

//分期宝跳转
function ShowFqb(url) {
    try {
        if (IsOpenCGT == "1" && !checkIsOpen())
            return false;
    } catch (e) { }

    window.location = url;
}

//提交成功弹窗
function ShowAlert(removeCssClass, addCssClass, title, message) {
    $("#td-atr-layer").show();
    $("#submitAlert .title p").text(title);
    $("#submitAlert").find(".loan-icon").removeClass(removeCssClass).addClass(addCssClass);
    $("#submitAlert").find("span").html(message);
    $("#submitAlert").show();
}

//刷新验证码
function reload(urlString, id) {
    $(id).attr("src", urlString + "?id=" + Math.random());
}
//提交借款意向
/*
function SubmitBorrow() {
    var result = true;
    if (!CheckAddress("#mortgageProvince div.selected", "#mortgageCity div.selected", "#checkAddress")) {
        result = false;
    }
    if (!CheckName(true, "#txtName", "#checkName")) {
        result = false;
    }
    if (!CheckPhone(true, "#txtPhone", "#checkPhone")) {
        result = false;
    }
    if (!CheckCode(true, "#txtCode", "#checkCode")) {
        result = false;
    }
    if (!BlurAmount(true)) {
        result = false;
    }

    if (!result)
        return false;

    var title = $("#mortgageBorrow .title p").text();
    var borrowType = 0;
    if (title == "申请小微企业") {
        borrowType = 5
    } else if (title == "申请车贷") {
        borrowType = 6;
    } else {
        borrowType = 7;
    }

    var province = $("#mortgageProvince div.selected").text();
    var city = $("#mortgageCity div.selected").text();

    var name = $("#txtName").val();

    var phone = $("#txtPhone").val();

    var amount = $("#txtAmount").val();

    var code = $("#txtCode").val();

    var sex = "1";
    if ($("#female").hasClass("selected")) {
        sex = "2";
    }

    $.ajax({
        async: false,
        type: "post",
        url: "./submitData",
        dataType: "json",
        data: {
            Cmd: "BorrowIntention",
            sBorrowType: borrowType,
            sProvince: province,
            sCity: city,
            sName: name,
            sPhone: phone,
            sAmount: amount,
            sVerCode: code,
            sSex: sex
        },
        success: function (json) {
            if (json.result == "-4") {
                $("#checkCode").html("<i class=\"err loan-icon\"></i>验证码错误");
                $("#checkCode").show();
                reload("/ValidateCode.ashx", "#imVcode");
                result = false;
            }
            else if (json.result == "1") {
                $("#mortgageBorrow").hide();
                ShowAlert("err", "success", "提交成功", "提交成功 <br>我们将会尽快与您联系！");
                result = true;
            }
            else if (json.result == "-6") {
                $("#mortgageBorrow").hide();
                ShowAlert("success", "err", "提交失败", "您今天已进行过借款申请<br>我们将会尽快联系您！");
                reload("/ValidateCode.ashx", "#imVcode");
                result = false;
            }
            else {
                $("#mortgageBorrow").hide();
                ShowAlert("success", "err", "提交失败", "提交失败<br>请检查申请内容后重试！");
                reload("/ValidateCode.ashx", "#imVcode");
                result = false;
            }
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            $("#mortgageBorrow").hide();
            ShowAlert("success", "err", "提交失败", "提交失败<br>请稍后重试！");
            reload("/ValidateCode.ashx", "#imVcode");
            result = false;
        }
    });

    return result;
}*/

//提交快速信用借款意向
/*function SubmitCreditBorrow() {
    var result = true;
    if (!CheckAddress("#creditProvince div.selected", "#creditCity div.selected", "#checkAddressCredit")) {
        result = false;
    }
    if (!CheckName(true, "#txtNameCredit", "#checkNameCredit")) {
        result = false;
    }
    if (!CheckPhone(true, "#txtPhoneCredit", "#checkPhoneCredit")) {
        result = false;
    }
    if (!CheckCode(true, "#txtCodeCredit", "#checkCodeCredit")) {
        result = false;
    }

    if (!result)
        return false;

    var title = $("#creditBorrow .title p").text();
    var borrowType = 0;
    if (title == "申请公务员方案") {
        borrowType = 1
    } else if (title == "申请公积金方案") {
        borrowType = 2;
    } else if (title == "申请精英方案") {
        borrowType = 3;
    }else {
        borrowType = 4;
    }

    var province = $("#creditProvince div.selected").text();
    var city = $("#creditCity div.selected").text();

    var name = $("#txtNameCredit").val();

    var phone = $("#txtPhoneCredit").val();

    var code = $("#txtCodeCredit").val();

    var sex = "1";
    if ($("#femaleCredit").hasClass("selected")) {
        sex = "2";
    }

    $.ajax({
        async: false,
        type: "post",
        url: "./submitData",
        dataType: "json",
        data: {
            Cmd: "CreditBorrowIntention",
            sBorrowType: borrowType,
            sProvince: province,
            sCity: city,
            sName: name,
            sPhone: phone,
            sVerCode: code,
            sSex: sex
        },
        success: function (json) {
            if (json.result == "-4") {
                $("#checkCodeCredit").html("<i class=\"err loan-icon\"></i>验证码错误");
                $("#checkCodeCredit").show();
                reload("/ValidateCode.ashx", "#imVcodeCredit");
                result = false;
            }
            else if (json.result == "1") {
                $("#creditBorrow").hide();
                ShowAlert("err", "success", "提交成功", "提交成功 <br>我们将会尽快与您联系！");
                result = true;
            }
            else if (json.result == "-6") {
                $("#creditBorrow").hide();
                ShowAlert("success", "err", "提交失败", "您今天已进行过借款申请<br>我们将会尽快联系您！");
                reload("/ValidateCode.ashx", "#imVcodeCredit");
                result = false;
            }
            else {
                $("#creditBorrow").hide();
                ShowAlert("success", "err", "提交失败", "提交失败<br>请检查申请内容后重试！");
                reload("/ValidateCode.ashx", "#imVcodeCredit");
                result = false;
            }
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            $("#creditBorrow").hide();
            ShowAlert("success", "err", "提交失败", "提交失败<br>请稍后重试！");
            reload("/ValidateCode.ashx", "#imVcodeCredit");
            result = false;
        }
    });
    return result;
}*/

//验证姓名
function CheckName(isSubmit, nameId, checkNameId) {
    var str = $(nameId).val();
    if ($.trim(str) != "") {
        var regEx = new RegExp("^[\u4e00-\u9fa5]+$", "i");
        if (!regEx.test(str)) {
            $(checkNameId).html("<i class=\"err loan-icon\"></i>请输入中文姓名");
            $(checkNameId).show();
            return false;
        }else
            $(checkNameId).hide();
        return true;
    }
    else {
        if (isSubmit == true) {
            $(checkNameId).html("<i class=\"err loan-icon\"></i>请输入中文姓名");
            $(checkNameId).show();
        }
        else {
            $(checkNameId).hide();
        }
        return false;
    }
}

//验证电话
function CheckPhone(isSubmit, phoneId, checkPhoneId) {
    var str = $(phoneId).val();
    if ($.trim(str) != "") {
        var patTel = new RegExp("^(13|14|15|17|18)[0-9]{9}$", "i");
        if (patTel.test(str)) {
            $(checkPhoneId).hide();
            return true;
        }
        else {
            $(checkPhoneId).html("<i class=\"err loan-icon\"></i>请输入正确手机号码");
            $(checkPhoneId).show();
            return false;
        }
    }
    else {
        if (isSubmit == true) {
            $(checkPhoneId).html("<i class=\"err loan-icon\"></i>请输入手机号码");
            $(checkPhoneId).show();
        }
        else {
            $(checkPhoneId).hide();
        }
        return false;
    }
}

//验证借款金额
function BlurAmount(isSubmit) {
    var maxAmount = 0;
    var title = $("#mortgageBorrow .title p").text();
    var borrowType = 0;
    if (title == "申请小微企业")
        maxAmount = 10000000;
    else 
        maxAmount = 500000;
      
    var str = $("#txtAmount").val();
    if ($.trim(str) != "") {
        var exp = /^([1-9][\d]{0,7}|0)?$/;
        if (exp.test(str)) {
            if (parseFloat(str) >= 1000 && parseFloat(str) <= maxAmount) {
                $("#checkAmount").hide();
                return true;
            }
            else {
                $("#checkAmount").html("<i class=\"err loan-icon\"></i>借款金额为1000-" + maxAmount / 10000 + "万之间的正整数");
                $("#checkAmount").show();
                return false;
            }
        }
        else {
            $("#checkAmount").html("<i class=\"err loan-icon\"></i>借款金额为1000-" + maxAmount / 10000 + "万之间的正整数");
            $("#checkAmount").show();
            return false;
        }
    }
    else {
        if (isSubmit == true) {
            $("#checkAmount").html("<i class=\"err loan-icon\"></i>请输入金额");
            $("#checkAmount").show();
        }
        else {
            $("#checkAmount").hide();
        }
        return false;
    }
}

/*//检查验证码
function CheckCode(isSubmit, codeId, checkCodeId) {
    var str = $(codeId).val();
    if ($.trim(str) != "") {

        if ($.trim(str).length == 4) {
            $(checkCodeId).hide();
            return true;
        }
        else {
            $(checkCodeId).html("<i class=\"err loan-icon\"></i>请输入4位验证码");
            $(checkCodeId).show();
            return false;
        }
    }
    else {
        if (isSubmit == true) {
            $(checkCodeId).html("<i class=\"err loan-icon\"></i>请输入4位验证码");
            $(checkCodeId).show();
        }
        else {
            $(checkCodeId).hide();
        }
        return false;
    }
}
*/
//验证地址
function CheckAddress(provinceId, cityId, checkAddressId) {
    var province = $(provinceId).text();
    var city = $(cityId).text();
    if (province == "请选择") {
        $(checkAddressId).html("<i class=\"err loan-icon\"></i>请选择省份");
        $(checkAddressId).show();
        return false;
    }
    else if(city == "请选择"){
        $(checkAddressId).html("<i class=\"err loan-icon\"></i>请选择地级市");
        $(checkAddressId).show();
    }
    else {
        $(checkAddressId).hide();
        return true;
    }

    return true;
}

function CheckAddressWarning(provinceId, cityId, checkAddressId) {
    var province = $(provinceId).text();
    var city = $(cityId).text();
    if (province != "请选择" && city != "请选择") {
        $(checkAddressId).hide();
    }
}

//清除弹框内容
function ClearDial(type) {
    if (type == 1) {
        $("#txtName").val(Globals.BorrowName);
        $("#txtPhone").val(Globals.BorrowPhone);

        $("#txtCode").val("");
        $("#txtAmount").val("");

        $("#female").removeClass("selected").siblings("i").addClass("selected");
        $("#checkAddress").hide();
        $("#checkName").hide();
        $("#checkPhone").hide();
        $("#checkAmount").hide();
        $("#checkCode").hide();
        
        reload('/ValidateCode.ashx', '#imVcode')
    } else {
        $("#txtNameCredit").val(Globals.BorrowName);
        $("#txtPhoneCredit").val(Globals.BorrowPhone);

        $("#txtCodeCredit").val("");

        $("#femaleCredit").removeClass("selected").siblings("i").addClass("selected");
        $("#checkAddressCredit").hide();
        $("#checkNameCredit").hide();
        $("#checkPhoneCredit").hide();
        $("#checkCodeCredit").hide();

        reload('/ValidateCode.ashx', '#imVcodeCredit')
    }
}

//关闭提示弹窗
function CloseSubmitDial() {
    $("#td-atr-layer").hide(); 
    $("#submitAlert").hide();
}