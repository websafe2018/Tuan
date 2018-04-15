var pat = new RegExp("^[0-9]+(.[0-9]{1})?$");
var pat1 = new RegExp("^[0-9]+(.[0-9]{1,2})?$");

$(function () {

    //限制只能输入数字
    limitNumber($("input[typeval='rate']"));
    limitInt($("input[typeval='num']"));

    $("#pbeginRate").blur(function () {
        checkbeginRate_p();
    });

    $("#pbeginDeadline").blur(function () {
        checkbeginDeadline_p();
    });

    $("#pendDeadline").blur(function () {
        checkbeginDeadline_p();
    });

    $('.tag-list').find('li').click(function () {
        var _thisIndex = $(this).index();
        $(this).parent().find('li').removeClass('selected').end().find('i').hide();;
        $('.tag-item').hide();
        $(this).addClass('selected').find('i').show();
        $('.tag-item').eq(_thisIndex).show();
    })

    // 单选
    $('.condition').find('label').click(function () {
        var vaule = $(this).attr('value');
        if (vaule == 0) {
            $(this).parent('.condition').find('.show-input').slideUp(300);
            $(this).parent().find('.circle-select').removeClass('selected');
            $(this).find('.circle-select').addClass('selected');
            
            $(this).parent('.condition').find('.input-style').val("");
            $(this).parent('.condition').find('.square-selecters').find('label').attr({ 'value': '0' }).find('i').removeClass('selected');
        } else {
            $(this).parent('.condition').find('.show-input').slideDown(300);
            $(this).parent().find('.circle-select').removeClass('selected');
            $(this).find('.circle-select').addClass('selected');
            $(this).parent('.condition').find('.square-selecters').find('label').attr({ 'value': '1' }).find('i').addClass('selected');
        }
    });
    // 多选
    $('.square-selecters').find('label').bind('click', function (event) {
        var val = $(this).attr('value');
        if (val == 0) {
            $(this).attr({
                'value': '1'
            }).find('i').addClass('selected');
        } else {
            $(this).attr({
                'value': '0'
            }).find('i').removeClass('selected');
        };
    });
    // 下拉
    var sliderList = sliderList();

    function sliderList(argument) {
        $('.repay-time').find('dl').click(function (event) {
            $(this).find('dd').slideDown(200);
        });
        $('.repay-time').find('dd').click(function (event) {
            var text = $(this).text()
            var val = $(this).attr('val')
            $(this).parent().find('dd').slideUp(200);
            $(this).parent().find('dt span').text(text);
            $(this).parent().find('dt span').attr('val', val);
            checkbeginDeadline_p();
            if ($("#pStartDeadType").attr('val') == 1) {
                $("#pbeginDeadline").attr('maxlength', '2');
            }
            else {
                $("#pbeginDeadline").attr('maxlength', '3');
            }
            if ($("#pEndDeadType").attr('val') == 1) {
                $("#pendDeadline").attr('maxlength', '2');
            }
            else {
                $("#pendDeadline").attr('maxlength', '3');
            }
            return false
        });
        $('.repay-time').find('dl').hover(function () {
            $(this).parent().find('dd').slideUp(200);
        })
    }
    // 提示框
    var showQusTip = showQusTip();

    function showQusTip(argument) {
        $('.qus').hover(function (event) {
            $(this).find('.qus-tip-waper').fadeIn(200);
        }, function (argument) {
            $(this).find('.qus-tip-waper').fadeOut(200);
        });
    }

    // 关闭窗口
    var closeDial = closeDial();

    function closeDial(argument) {
        $('.dial-win').find('.close').click(function (event) {
            $(this).parents('.dial-win').hide();
            $('.dial-layer').hide();
        });
    }

    //添加
    $("#add").click(function () {
        //是否参加风险测评
        if (!IsRiskEvaluation) {
            showDialWindows(newTitle, "<div class='lh24 tl g3 mt10 pl30'>您尚未进行风险承受能力评测，请先完成评测后<br/>再进行投资</div>", "立即测评",
                function () {
                    window.location.href = ActivityWebsiteUrl + "/web/20170309test/index.aspx?tdfrom=" + decodeURIComponent(location.href);
                }, null, null);
            $("#divTiQian").html("您今年还有3次评估机会").attr("style", "font-size: 12px; padding: 15px 0px 10px 5px; color:#999;").show();
            return;
        }

        //存通管增加
        try {
            if (IsOpenCgtAutoTender == "1" && !checkIsOpen("touzi"))
                return;
        } catch (e) { }


        $("#pbtnSubmit").removeAttr("attrid");
        $("#wbtnSubmit").removeAttr("attrid");
        Reset();
        $('.dial-layer').show();
        $("#vertical-center").show();
    });

    //修改
    $(".edit").click(function () {
        //是否参加风险测评
        if (!IsRiskEvaluation) {
            showDialWindows(newTitle, "<div class='lh24 tl g3 mt10 pl30'>您尚未进行风险承受能力评测，请先完成评测后<br/>再进行投资</div>", "立即测评",
                function () {
                    window.location.href = ActivityWebsiteUrl + "/web/20170309test/index.aspx?tdfrom=" + decodeURIComponent(location.href);
                }, null, null);
            $("#divTiQian").html("您今年还有3次评估机会").attr("style", "font-size: 12px; padding: 15px 0px 10px 5px; color:#999;").show();
            return;
        }
        //存通管增加
        try {
            if (IsOpenCgtAutoTender == "1" && !checkIsOpen("touzi"))
                return;
        } catch (e) { }


        Reset();
        var id = $(this).attr("attrVal");
        var pattern = $(this).attr("pattern");
        $.ajax({
            url: "/member/ajaxCross/ajax_autoLoan.ashx?v=" + Math.random(),
            cache: false,
            type: "post",
            dataType: "json",
            data: { Cmd: "getSingleAuto", id: id, pattern: pattern },
            success: function (json) {
                var d = json.result;
                if (d == "1") {
                    //投标
                    if (pattern == "1") {
                        //利率
                        $("#pbeginRate").val(json.beginRate);

                        //回款期限
                        $("#pbeginDeadline").val(json.beginDeadline);
                        $("#pendDeadline").val(json.endDeadline);
                        //回款期限单位
                        if (json.StartDeadType == "1") {
                            $("#pStartDeadType").text("月");
                        } else {
                            $("#pStartDeadType").text("日");
                        }
                        if (json.EndDeadType == "1") {
                            $("#pEndDeadType").text("月");
                        } else {
                            $("#pEndDeadType").text("日");
                        }
                        $("#pStartDeadType").attr('val',json.StartDeadType);
                        $("#pEndDeadType").attr('val', json.EndDeadType);

                        //保留金额
                        if (json.ReservedAmout == "0") {//无需保留
                            $("#pNoReserved").addClass('selected');
                            $("#pReserved").removeClass('selected');
                            $("#pReservedInp").hide();
                            $("#pReservedAmout").val("");
                        }
                        else {//需保留
                            $("#pReserved").addClass('selected');
                            $("#pNoReserved").removeClass('selected');
                            $("#pReservedInp").show();
                            $("#pReservedAmout").val(json.ReservedAmout);
                        }

                        //投资类型
                        var ProjectType = json.ProjectType;
                        ProjectType = ProjectType.replace("1,3", "1");
                        ProjectType = ProjectType.replace("6,7", "6");
                        ProjectType = ProjectType.replace("15,24,25,26,27,28", "15");
                        //ProjectType = ProjectType.replace("19,20", "20");
                        ProjectType = ProjectType.replace("9,10,11", "9");
                        if (ProjectType.split(',').length == 4) {//不限
                        //if (ProjectType.split(',').length == 5) {//不限
                            $("#pTypeNoLimit").addClass('selected');
                            $("#pTypeLimit").removeClass('selected');
                            $("#pProjectType").hide();
                        }
                        else {//自定义
                            $("#pTypeLimit").addClass('selected');
                            $("#pTypeNoLimit").removeClass('selected');
                            $("#pProjectType").show();
                            $("#pProjectType").find('label').attr({ 'value': '0' }).find('i').removeClass('selected');
                            for (var i = 0; i < ProjectType.split(',').length; i++) {
                                $("#pType" + ProjectType.split(',')[i]).attr({ 'value': '1' }).find('i').addClass('selected');
                            }
                        }

                        //还款方式
                        if (json.RepaymentType.indexOf("1") >= 0 && json.RepaymentType.indexOf("2") >= 0 && json.RepaymentType.indexOf("5") >= 0) {//不限
                            $("#pRepaymentTypeNoLimit").addClass('selected');
                            $("#pRepaymentTypeLimit").removeClass('selected');
                            $("#pRepaymentTypeDiv").hide();
                        }
                        else {//自定义
                            $("#pRepaymentTypeLimit").addClass('selected');
                            $("#pRepaymentTypeNoLimit").removeClass('selected');
                            $("#pRepaymentTypeDiv").show();
                            $("#pRepaymentTypeDiv").find('label').attr({ 'value': '0' }).find('i').removeClass('selected');
                            for (var i = 0; i < json.RepaymentType.split(',').length; i++) {
                                $("#pRepaymentType" + json.RepaymentType.split(',')[i]).attr({ 'value': '1' }).find('i').addClass('selected');
                            }
                        }

                        //有效期
                        if (json.endDate == "") {//长期有效
                            $("#pDate1").addClass('selected');
                            $("#pDate2").removeClass('selected');
                            $("#pDateDiv").hide();
                            $("#pbeginDate").val("");
                            $("#pendDate").val("");
                        }
                        else {//自定义
                            $("#pDate2").addClass('selected');
                            $("#pDate1").removeClass('selected');
                            $("#pDateDiv").show();
                            $("#pbeginDate").val(json.beginDate);
                            $("#pendDate").val(json.endDate);
                        }

                        $("#divWePlan").hide();
                        $("#divProject").show();
                        $("#pbtnSubmit").attr("attrid", id);
                    }
                        //投we计划
                    else {
                        //保留金额
                        if (json.ReservedAmout == "0") {//无需保留
                            $("#wNoReserved").addClass('selected');
                            $("#wReserved").removeClass('selected');
                            $("#wReservedInp").hide();
                            $("#wReservedAmout").val("");
                        }
                        else {//需保留
                            $("#wReserved").addClass('selected');
                            $("#wNoReserved").removeClass('selected');
                            $("#wReservedInp").show();
                            $("#wReservedAmout").val(json.ReservedAmout);
                        }

                        //投资类型
                        $("#wProjectType").find('label').attr({ 'value': '0' }).find('i').removeClass('selected');
                        for (var i = 0; i < json.ProjectType.split(',').length; i++) {
                            $("#wType" + json.ProjectType.split(',')[i]).attr({ 'value': '1' }).find('i').addClass('selected');
                        }

                        //有效期
                        if (json.endDate == "") {//长期有效
                            $("#wDate1").addClass('selected');
                            $("#wDate2").removeClass('selected');
                            $("#wDateDiv").hide();
                            $("#wbeginDate").val("");
                            $("#wendDate").val("");
                        }
                        else {//自定义
                            $("#wDate2").addClass('selected');
                            $("#wDate1").removeClass('selected');
                            $("#wDateDiv").show();
                            $("#wbeginDate").val(json.beginDate);
                            $("#wendDate").val(json.endDate);
                        }
                        $("#divProject").hide();
                        $("#divWePlan").show();
                        $("#wbtnSubmit").attr("attrid", id);
                    }
                    $(".tag-list").hide();
                    $('.dial-layer').show();
                    $("#vertical-center").show();
                }else if (d == "-112") {
                    showDialWindows(newTitle, "<div class='lh24 tl g3 mt10 pl30'>您尚未进行风险承受能力评测，请先完成评测后<br/>再进行投资</div>", "立即测评",
                function () {
                    window.location.href = ActivityWebsiteUrl + "/web/20170309test/index.aspx?tdfrom=" + decodeURIComponent(location.href);
                }, null, null);
                    $("#divTiQian").html("您今年还有3次评估机会").attr("style", "font-size: 12px; padding: 15px 0px 10px 5px; color:#999;").show();
                    return;
                }
            }
        });
    });

    //删除
    $(".del").click(function () {

        //存通管增加
        try {
            if (IsOpenCgtAutoTender == "1" && !checkIsOpen())
                return;
        } catch (e) { }


        var obj = $(this);
        var id = $(this).attr("attrVal");
        var pattern = $(this).attr("pattern");
        closeLoadingWindows();
        showDialWindows("团贷网提醒您", "<div style='font-size:13px;padding: 5px 10px;line-height: 21px;color:gray;'>确定要删除吗？</div>", "确定", function () {
            $.ajax({
                url: "/member/ajaxCross/ajax_autoLoan.ashx",
                type: "post",
                dataType: "json",
                data: { Cmd: "deleteAuto", id: id, pattern: pattern },
                success: function (json) {
                    var strmsg = "系统异常";
                    var returnurl = "";
                    var d = json.result;
                    if (parseInt(d) == 1) {
                        strmsg = "删除成功";
                        returnurl = window.location.href;
                    }
                    else if (parseInt(d) == -100) { strmsg = "系统异常"; returnurl = "/View/NoticeMessage.aspx?status=2"; }
                    else if (parseInt(d) == -99) { strmsg = "登录超时"; returnurl = "/View/login.aspx?ReturnUrl=" + window.location.href; }
                    else if (parseInt(d) == 0) {
                        strmsg = "删除失败，请稍后再试！";
                    }
                    closeLoadingWindows();
                    showDialWindows("团贷网提醒您", strmsg, "确定", function () {
                        closeLoadingWindows();
                        if (returnurl != "") {
                            window.location = returnurl;
                        }
                    });
                },
                error: function () {
                    closeLoadingWindows();
                    showDialWindows("团贷网提醒您", "系统异常，请稍后提交！", "确定", closeLoadingWindows);
                }
            });
            return false;
        }, "关闭", closeLoadingWindows);
    });
    //修改状态
    $('.to-enable').click(function (event) {

        //存通管增加
        try {
            if (IsOpenCgtAutoTender == "1" && !checkIsOpen())
                return;
        } catch (e) { }


        var obj = $(this);
        var status = $(this).attr("value");
        var id = $(this).attr("attrVal");
        var pattern = $(this).attr("pattern");
        
        var str = "<div style='font-size:13px;padding: 5px 10px;line-height: 21px;color:gray;'>确定要开启吗？</div>";
        if (status == "1") {
            status = "0";
            str = "<div style='font-size:13px;padding: 5px 10px;line-height: 21px;color:gray;'>确定要暂停吗？</div>";
        }
        else {
            status = "1";
        }
        closeLoadingWindows();
        showDialWindows("团贷网提醒您", str, "确定", function () {
            $.ajax({
                url: "/member/ajaxCross/ajax_autoLoan.ashx",
                type: "post",
                dataType: "json",
                data: { Cmd: "updateStatus", status: status, id: id, pattern: pattern },
                success: function (json) {
                    closeLoadingWindows();
                    var d = json.result;
                    if (parseInt(d) == -100) {
                        closeLoadingWindows();
                        showDialWindows("团贷网提醒您", "系统异常！", "确定", closeLoadingWindows);
                    }
                    else if (parseInt(d) == -99) {
                        window.location.href = "/user/login.aspx?ReturnUrl=" + window.location.href;
                    }
                    else if (parseInt(d) == 1) {
                        window.location.href = window.location.href;
                    }
                    else if (parseInt(d) == 0) {
                        closeLoadingWindows();
                        showDialWindows("团贷网提醒您", "提交失败，请再次提交！", "确定", closeLoadingWindows);
                    }
                },
                error: function () {
                    closeLoadingWindows();
                    showDialWindows("团贷网提醒您", "系统异常，请稍后提交！", "确定", closeLoadingWindows);
                }
            });
            return false;
        }, "关闭", closeLoadingWindows);
    });

    //投we计划
    $("#wbtnSubmit").click(function () {
        var ok = AllChecked2();
        if (ok) {
            SaveData1(2);
        }
    });

    //投标
    $("#pbtnSubmit").click(function () {
        var ok = AllChecked1();
        if (ok) {
            SaveData1(1);
        }
    });

});

function AllChecked2() {
    var ok1 = checkWeType_w();
    var ok2 = checkAgreeAutoInvestContract_w();
    if (ok1 && ok2) {
        return true;
    }
    else {
        return false;
    }

}

//we计划类型
function checkWeType_w() {
    if ($("#wType18").attr("value") == 0 && $("#wType15").attr("value") == 0 && $("#wType14").attr("value") == 0 && $("#wType3").attr("value") == 0 && $("#wType2").attr("value") == 0 && $("#wType1").attr("value") == 0 && $("#wType9").attr("value") == 0) {
        var strtitle = "<div style='font-size:13px;padding: 5px 10px;line-height: 21px;color:gray;'>至少选择一种投资类型</div>";
        closeLoadingWindows();
        showDialWindows("团贷网提醒您", strtitle, "是", function () {closeLoadingWindows(); });
        return false;
    }
    else {
        return true;
    }
}

function checkAgreeAutoInvestContract_w() {
    if ($("#pckbAgreeAutoWePlan").attr("value") == "1") {
        return true;
    }
    else {
        var strtitle = "<div style='font-size:13px;padding: 5px 10px;line-height: 21px;color:gray;'>您未勾选自动投标协议,请先确认</div>";

        closeLoadingWindows();
        showDialWindows("团贷网提醒您", strtitle, "是", function () {
            closeLoadingWindows();
            $("#pckbAgreeAutoWePlan").attr("value", "1");
            $("#pckbAgreeAutoWePlan").find('i').addClass('selected');
        });
        return false;

    }
}

function AllChecked1() {
    var ok1 = checkbeginRate_p();
    var ok2 = checkbeginDeadline_p();
    var ok3 = checkAgreeAutoInvestContract_p();
    if (ok1 && ok2 && ok3) {
        return true;
    }
    else {
        return false;
    }

}

//利率范围
function checkbeginRate_p() {
    if ($("#pbeginRate").val() == "") {
        $("#pRateErr").html("<i class=\" err-iocn member-icon\"></i> 请填写最低利率");
        return false;
    }
    if (!pat.test($("#pbeginRate").val())) {
        $("#pRateErr").html("<i class=\" err-iocn member-icon\"></i> 利率填写有误");
        return false;
    }
    if (parseInt($("#pbeginRate").val()) < 5) {
        $("#pRateErr").html("<i class=\" err-iocn member-icon\"></i> 最低利率不能低于5%");
        return false;
    }
    if (parseInt($("#pbeginRate").val()) > 100) {
        $("#pRateErr").html("<i class=\" err-iocn member-icon\"></i> 最低利率利率不能高于100%");
        return false;
    }
    else {
        $("#pRateErr").html("");
        return true;
    }
}

//回款期限
function checkbeginDeadline_p() {
    if ($("#pbeginDeadline").val() == "" && $("#pendDeadline").val() == "") {
        $("#pDeadlineErr").html("<i class=\" err-iocn member-icon\"></i>请输入回款期限");
        return false;
    }
    if (($("#pbeginDeadline").val() == "" && $("#pendDeadline").val() != "") || ($("#pendDeadline").val() == "" && $("#pbeginDeadline").val() != "")) {
        var strdeadline = ($("#pbeginDeadline").val() == "" ? "开始" : "结束");
        $("#pDeadlineErr").html("<i class=\" err-iocn member-icon\"></i>请输入" + strdeadline + "回款期限");
        return false;
    }
    var StartDeadType = $("#pStartDeadType").attr("val");
    var EndDeadType = $("#pEndDeadType").attr("val");
    if (EndDeadType == "2" && StartDeadType == "1") {
        $("#pDeadlineErr").html("<i class=\" err-iocn member-icon\"></i>回款期限填写有误");
        return false;
    }
    if (StartDeadType == EndDeadType && $("#pendDeadline").val() != "" && parseInt($("#pbeginDeadline").val()) > parseInt($("#pendDeadline").val())) {
        $("#pDeadlineErr").html("<i class=\" err-iocn member-icon\"></i>回款期限填写有误");
        return false;
    }
    if (!pat1.test($("#pbeginDeadline").val()) || !pat1.test($("#pendDeadline").val())) {
        $("#pDeadlineErr").html("<i class=\" err-iocn member-icon\"></i> 回款期限填写有误");
        return false;
    }
    if (parseInt($("#pbeginDeadline").val()) < 7 && StartDeadType == "2") {
        $("#pDeadlineErr").html("<i class=\" err-iocn member-icon\"></i>回款期限最小7天");
        return false;
    }
    if (parseInt($("#pendDeadline").val()) > 36 && EndDeadType == "1") {
        $("#pDeadlineErr").html("<i class=\" err-iocn member-icon\"></i>回款期限最大36个月");
        return false;
    }
    if (StartDeadType == "2" && EndDeadType == "1" && parseInt($("#pbeginDeadline").val()) / 30 >= $("#pendDeadline").val()) {
        $("#pDeadlineErr").html("<i class=\" err-iocn member-icon\"></i> 回款期限填写有误");
        return false;
    }
    else {
        $("#pDeadlineErr").html("");
        return true;
    }
}

function checkAgreeAutoInvestContract_p() {
    if ($("#pckbAgreeAutoInvest").attr("value") == "1") {
        return true;
    }
    else {
        var strtitle = "<div style='font-size:13px;padding: 5px 10px;line-height: 21px;color:gray;'>您未勾选自动投标协议,请先确认</div>";

        closeLoadingWindows();
        showDialWindows("团贷网提醒您", strtitle, "是", function () {
            closeLoadingWindows();
            $("#pckbAgreeAutoInvest").attr("value", "1");
            $("#pckbAgreeAutoInvest").find('i').addClass('selected');
        });
        return false;

    }
}

function SaveData1(pattern) {
    var cmd = "addAuto";
    var ProjectType = "";
    var beginRate = "";
    var endRate = "";
    var beginDeadline = "";
    var endDeadline = "";
    var RepaymentType = "";
    var ReservedAmout = "";
    var preAmout = "";
    var beginDate = "";
    var endDate = "";
    var id = "";
    var autoRun = "0";
    var StartDeadType = "";
    var EndDeadType = "";

    //投we计划
    if (pattern == 2) {
        if ($("#wbtnSubmit").attr("attrid") != undefined) {
            cmd = "updateAuto";
            id = $("#wbtnSubmit").attr("attrid");
        }

        for (var i = 0; i < $("#wProjectType").find('label').length; i++) {
            if ($("#wProjectType").find('label').eq(i).attr('value') == 1) {
                if (ProjectType == "") {
                    ProjectType = $("#wProjectType").find('label').eq(i).attr('val');
                }
                else {
                    ProjectType = ProjectType + "," + $("#wProjectType").find('label').eq(i).attr('val');
                }
            }
        }
        ReservedAmout = $("#wReservedAmout").val();
        beginDate = $("#wbeginDate").val();
        endDate = $("#wendDate").val();

    }
        //投标
    else {
        if ($("#pbtnSubmit").attr("attrid") != undefined) {
            cmd = "updateAuto";
            id = $("#pbtnSubmit").attr("attrid");
        }

        for (var i = 0; i < $("#pProjectType").find('label').length; i++) {
            if ($("#pProjectType").find('label').eq(i).attr('value') == 1) {
                if (ProjectType == "") {
                    ProjectType = $("#pProjectType").find('label').eq(i).attr('val');
                }
                else {
                    ProjectType = ProjectType + "," + $("#pProjectType").find('label').eq(i).attr('val');
                }
            }
        }
        if (ProjectType == "") {
            //ProjectType = "1,9,15,20,6";
            ProjectType = "1,9,15,6";
        }
        ProjectType = ProjectType.replace("1", "1,3");
        ProjectType = ProjectType.replace("6", "6,7");
        ProjectType = ProjectType.replace("15", "15,24,25,26,27,28");
        //ProjectType = ProjectType.replace("20", "19,20");
        ProjectType = ProjectType.replace("9", "9,10,11");

        beginRate = $("#pbeginRate").val();
        beginDeadline = $("#pbeginDeadline").val();
        endDeadline = $("#pendDeadline").val();

        for (var i = 0; i < $("#pRepaymentTypeDiv").find('label').length; i++) {
            if ($("#pRepaymentTypeDiv").find('label').eq(i).attr('value') == 1) {
                if (RepaymentType == "") {
                    RepaymentType = $("#pRepaymentTypeDiv").find('label').eq(i).attr('val');
                }
                else {
                    RepaymentType = RepaymentType + "," + $("#pRepaymentTypeDiv").find('label').eq(i).attr('val');
                }
            }
        }
        if (RepaymentType == "") {
            RepaymentType = "1,2,5";
        }

        ReservedAmout = $("#pReservedAmout").val();
        beginDate = $("#pbeginDate").val();
        endDate = $("#pendDate").val();


        StartDeadType = $("#pStartDeadType").attr('val');
        EndDeadType = $("#pEndDeadType").attr('val');
    }


    

    var strtitle1 = "<div style='font-size:13px;padding: 5px 10px;line-height: 21px;color:gray;'>是否马上启用该自动投标方案？</div>";

    if (ReservedAmout == "" || ReservedAmout == "0") {
        ReservedAmout = "0";
        var strtitle = "<div style='font-size:13px;padding: 5px 10px;line-height: 21px;color:gray;'>您未设置预留金额，您确定要将所有账户金额进行<br/>自动投标吗？</div>";

        closeLoadingWindows();
        showDialWindows("团贷网提醒您", strtitle, "确定", function () {
            closeLoadingWindows();
            showDialWindows("团贷网提醒您", strtitle1, "是", function () {
                autoRun = "1";
                SaveData2(cmd, pattern, ProjectType, beginRate, endRate, beginDeadline, endDeadline, RepaymentType, ReservedAmout, preAmout, beginDate, endDate, id, autoRun, StartDeadType, EndDeadType)
            }, "否", function () {
                autoRun = "0";
                SaveData2(cmd, pattern, ProjectType, beginRate, endRate, beginDeadline, endDeadline, RepaymentType, ReservedAmout, preAmout, beginDate, endDate, id, autoRun, StartDeadType, EndDeadType);
            });
        }, "取消", closeLoadingWindows);
    }
    else {

        closeLoadingWindows();
        showDialWindows("团贷网提醒您", strtitle1, "是", function () {
            autoRun = "1";
            SaveData2(cmd, pattern, ProjectType, beginRate, endRate, beginDeadline, endDeadline, RepaymentType, ReservedAmout, preAmout, beginDate, endDate, id, autoRun, StartDeadType, EndDeadType);
        }, "否", function () {
            closeLoadingWindows();
            autoRun = "0";
            SaveData2(cmd, pattern, ProjectType, beginRate, endRate, beginDeadline, endDeadline, RepaymentType, ReservedAmout, preAmout, beginDate, endDate, id, autoRun, StartDeadType, EndDeadType);
        });
    }

}

function SaveData2(cmd, pattern, ProjectType, beginRate, endRate, beginDeadline, endDeadline, RepaymentType, ReservedAmout, preAmout, beginDate, endDate, id, autoRun, StartDeadType, EndDeadType) {
    showDialWindows("团贷网提醒您", "<div style='font-size:13px;padding: 5px 10px;line-height: 21px;color:gray;'>正在处理,请稍候...</div>");
    $.ajax({
        url: "/member/ajaxCross/ajax_autoLoan.ashx",
        type: "post",
        async: true,
        dataType: "json",
        data: {
            //Cmd: cmd, pattern: pattern, ProjectType: ProjectType, beginRate: beginRate, endRate: endRate, beginDeadline: beginDeadline,
            //endDeadline: endDeadline, RepaymentType: RepaymentType, ReservedAmout: ReservedAmout, preAmout: preAmout, beginDate: beginDate,
            //endDate: endDate, id: id, autoRun: autoRun, StartDeadType: StartDeadType, EndDeadType: EndDeadType
            Cmd: cmd, pattern: pattern, ProjectType: ProjectType, beginRate: beginRate, endRate: endRate, beginDeadline: beginDeadline,
            endDeadline: endDeadline, RepaymentType: RepaymentType, ReservedAmout: ReservedAmout, preAmout: preAmout, beginDate: beginDate,
            endDate: endDate, id: id, autoRun: autoRun, StartDeadType: 1, EndDeadType: 1
        },
        success: function (json) {
            var strmsg = "系统异常";
            var returnurl = "";
            var d = json.result;
            if (parseInt(d) == -100) { strmsg = "系统异常"; returnurl = "/View/NoticeMessage.aspx?status=2"; }
            else if (parseInt(d) == -99) { strmsg = "登录超时"; returnurl = "/user/login.aspx?ReturnUrl=" + window.location.href; }
            else if (parseInt(d) == 1) {
                strmsg = "已成功提交";
                returnurl = window.location.href;
            }
            else if (parseInt(d) == -2) {
                strmsg = "自动投标只能设置3条";
            }
            else if (parseInt(d) == 0) {
                strmsg = "提交失败，请再次提交";
            }
            else if (parseInt(d) == -3) {
                strmsg = json.msg;
            }
            closeLoadingWindows();
            showDialWindows("团贷网提醒您", strmsg, "确定", function () {
                closeLoadingWindows();
                if (returnurl != "") {
                    window.location = returnurl;
                }
            });
        },
        error: function () {
            closeLoadingWindows();
            showDialWindows("团贷网提醒您", "系统异常", "确定", closeLoadingWindows);
        }
    });
}

function Reset()
{
    $(".tag-list").hide();
    $("#divWePlan").hide();
    $("#divProject").show();

    //$(".tag-list").show();
    //$(".tag-list").find('li').eq(0).addClass("selected");
    //$(".tag-list").find('li').eq(0).find('i').show();
    //$(".tag-list").find('li').eq(1).removeClass("selected");
    //$(".tag-list").find('li').eq(1).find('i').hide();
    //$("#divWePlan").show();
    //$("#divProject").hide();

    for (var i = 0; i < $(".condition").find('label').length; i++) {
        if ($(".condition").find('label').eq(i).attr('value') == 0) {
            $(".condition").find('label').eq(i).find('i').addClass("selected");
        }
        else {
            $(".condition").find('label').eq(i).find('i').removeClass("selected");
        }
    }

    $(".show-input").hide();
    $("#wProjectType").show();
    $(".show-input").find('input').val("") ;

    $(".square-selecters").find('label').attr({ 'value': '0' }).find('i').removeClass('selected');
    
    $(".w120").attr({ 'value': '1' }).find('i').addClass('selected');
    ////$("#pbeginRate").val("");
    ////$("#pbeginDeadline").val("");
    ////$("#pendDeadline").val("");
    $("#pRateErr").html("");
    $("#pDeadlineErr").html("");
    $("#pStartDeadType").attr({ 'val': '1' }).text("月");
    $("#pEndDeadType").attr({ 'val': '1' }).text("月");

    //默认设置
    //智能理财
    $("#wProjectType").find('label').eq(0).attr('value', '1').find('i').addClass('selected');
    $("#wProjectType").find('label').eq(1).attr('value', '1').find('i').addClass('selected');
    $("#wProjectType").find('label').eq(2).attr('value', '1').find('i').addClass('selected');
    $("#wProjectType").find('label').eq(3).attr('value', '1').find('i').addClass('selected');
    //散标
    $("#pbeginRate").val("10.5");
    $("#pbeginDeadline").val("3");
    $("#pendDeadline").val("12");
}