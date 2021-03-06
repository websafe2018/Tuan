var isWePlan = false; //标记是否在We计划弹框中
 
function initProjectFormEvent() {
      //申购框
    $('#btnPlus,#btnMinus,#AllInvest').on('click', function () {
        $('#txtUnit').change();
    });
    $('#txtUnit').change(function () {
        $('.select-redbox .select-menu').find('.noSelect').addClass('li-auto');
        calcPrizeStatus();
    });
    $("#txtUnit").blur(function () {
        $('.select-redbox .select-menu').find('.noSelect').addClass('li-auto');
        calcPrizeStatus();
    });
    // .keyup(function () {
    //    $('.select-redbox .select-menu').find('.noSelect').addClass('li-auto');
    //    calcPrizeStatus();
    //});

    
    if ($('#txtUnit').val() == 1) {
       $('.select-redbox .select-menu').find('.noSelect').removeClass('li-auto');
    } 
}

function initWeFormEvent() {
   
    $('#txtUnit_We').change(function () {
        $('.select-redbox .select-menu').find('.noSelect').addClass('li-auto');
        calcPrizeStatus();
    });
    $("#txtUnit_We").blur(function () {
        $('.select-redbox .select-menu').find('.noSelect').addClass('li-auto');
        calcPrizeStatus();
    });
    //     .keyup(function () {
    //      $('.select-redbox .select-menu').find('.noSelect').addClass('li-auto');
    //      calcPrizeStatus();
    //}); 

    //We计划
    $('#btnPlus_We,#btnMinus_We,#PAllInvest_We').on('click', function () {
        $('#txtUnit_We').change();
    });

    if ($('#txtUnit_We').val() == 1) {
        $('.select-redbox .select-menu').find('.noSelect').removeClass('li-auto');
    } 
}

function calcPrizeStatus() { 
    var curprizeid = $("#redValue").attr("prizeid");
    if (curprizeid == undefined)
        curprizeid = "";

    $("#redpackform").html(getShowRedPacketList());
    
    autoSelPrize(curprizeid);
    //注册红包选择事件
    selectMenu('.select-redbox .select-menu');
    //计算加息
    calcAddRateInterest();
}
//自动计算一个红包
function autoSelPrize(curprizeid) {
    var txtAmount = getInputAmount();
    if (curprizeid == "init" && getInputShares() == "1") {
        return;
    }
    var firstPrize = calcFirstPrize(txtAmount);
    $('.select-redbox .select-menu').find('ul li').removeClass("on");
    if (firstPrize.PrizeId != "") {
        //判断之前有无选择，有选择判断是否符合规则，不符合则替换，否则保持不变
        //if (curprizeid != "") {
        //    //不使用优惠券
        //    var findObj = null;
        //    $.each(RedPacketObj.PrizeList, function (i, item) {
        //        if (item.PrizeId == curprizeid) {
        //            findObj = item;
        //            return false;
        //        }
        //    });
        //    if (findObj != null && findObj.InvestAmount > txtAmount) {
        //        //
        //    } else {
        //        firstPrize.PrizeId = findObj.PrizeId;
        //        firstPrize.ItemName = findObj.ItemName;
        //        firstPrize.PrizeType = findObj.PrizeType;
        //        firstPrize.PrizeValue = findObj.PrizeValue;
        //    }
        //}
        PrizeAddRate = 0;
        $("#redValue").attr("prizeid", firstPrize.PrizeId);
        $("#redValue").html(firstPrize.ItemName);
        $("#redValue").addClass('color-org');
        $('.select-redbox .select-menu').find("ul li[prizeid='" + firstPrize.PrizeId + "']").addClass("on");
        if (firstPrize.PrizeType == 1) {
            PrizeAddRate = firstPrize.PrizeValue;
        }
    } else {
        $("#redValue").attr("prizeid", "");
        $("#redValue").html("无适用优惠券");
        $("#redValue").removeClass('color-org');
        PrizeAddRate = 0;
    }
}

//录入金额后计算一个最优的红包
function calcFirstPrize(tenderAmount) {
    var prizeId = "";
    var itemName = "";
    var prizeType = 2;
    var prizeValue = 0;

    RedPacketObj.PrizeList = sortFirstPrize(RedPacketObj.PrizeList);

    $.each(RedPacketObj.PrizeList, function (i, item) {
        if (item.IsAllowUsed && item.InvestAmount <= tenderAmount) {
            prizeId = item.PrizeId;
            itemName = item.ItemName;
            prizeType = item.PrizeType;
            prizeValue = item.PrizeValue;
            return false;
        }
    });
    return { PrizeId: prizeId, ItemName: itemName, PrizeType: prizeType, PrizeValue: prizeValue };
}

function getInputAmount() {
    var txtShare = $('#txtUnit').val();
    if (txtShare == undefined) {
        txtShare = $('#txtUnit_We').val();
    }
    if (txtShare == "" || txtShare == undefined)
        txtShare = 1;
    else
        txtShare = parseFloat(txtShare);
    return txtShare * LowerUnit;
}
function getInputShares() {
    var txtShare = $('#txtUnit').val();
    if (txtShare == undefined) {
        txtShare = $('#txtUnit_We').val();
    }
    if (txtShare == "" || txtShare == undefined)
        txtShare = 1;
    else
        txtShare = parseFloat(txtShare);
    return txtShare;
}

//组装红包显示列表
function getShowRedPacketList() {
    var txtAmount = getInputAmount();
    if (RedPacketObj.PrizeList == null || RedPacketObj.PrizeList.length == 0) {
        return '<div class="noselect-redbox"><span>无优惠券可用</span></div>';
    }
    $.each(RedPacketObj.PrizeList, function (i, item) {
        if (item.IsAllowUsed) {
            item.IsCalcNoUsed = 0;
            item.NoUseDesc = "";
            if (item.InvestAmount >txtAmount) {
                item.IsCalcNoUsed = 1;
                item.NoUseDesc = "单笔投资金额不满" + item.InvestAmount + "元";
            }
        } else {
            item.IsCalcNoUsed = 1;
        }
    }); 
    RedPacketObj.PrizeList = sortPrize(RedPacketObj.PrizeList); 

    var redpacketHtml = '<div class="select-redbox">' +
                               '<div class="rel select-menu">' +
                                   '<span class="dynamic_red"></span>' +
                                   '<span class="value" id="redValue" prizeid="" >' + RedPacketObj.ShowTips + '</span>' +
                                   '<i class="arrow"></i>' +
                                   '<ul>' +
                                   '    <li prizeid="" prizetype="0" >不使用优惠券</li>';

    $.each(RedPacketObj.PrizeList, function (i, item) {
        var attrHtml = 'prizeid="' + item.PrizeId + '" prizetype="' + item.PrizeType + '" prizevalue="' + item.PrizeValue + '"';
        if (item.IsAllowUsed && item.IsCalcNoUsed == 0) {
            redpacketHtml += '<li ' + attrHtml + '>' + item.ItemName + '</li>';
        } else {
            var iconGray = "ts-icon";
            if (!item.IsAllowUsed)
                iconGray = "ts-gray-icon";
            redpacketHtml += '<li ' + attrHtml + ' class="noSelect gray li-auto li-auto">' + item.ItemName + '<div class="sm"><span class="' + iconGray + '"></span>' + item.NoUseDesc + '</div></li>';
        }
    });
    redpacketHtml += '</ul>' +
                    ' </div>' +
                    '</div>';
    return redpacketHtml;
}

/*
计算第一个红包排序
PrizeType 1:加息券 2：投资红包
匹配规则，先算红包，按红包金额从大到小，相同金额再按过期时间，过期早的优先用， 无红包时才使用加息券
*/
function sortFirstPrize(list) {
    var newList = [];
    $.each(list, function (i, j) {
        if (newList.length == 0) newList.push(j);
        else {
            var isAllowUsedJ = j.IsAllowUsed ? 1 : 0;//是否可用 
            var index = 0;

            $.each(newList, function (k, h) {
                var isAllowUsedH = h.IsAllowUsed ? 1 : 0;//是否可用
                if (isAllowUsedJ > isAllowUsedH) {//0.按默认可用状态排
                    index = k;
                    return false;
                }

                if (j.IsCalcNoUsed < h.IsCalcNoUsed) {//1.按金额调整后可用状态排
                    index = k;
                    return false;
                }

                if (isAllowUsedJ == isAllowUsedH && j.IsCalcNoUsed == h.IsCalcNoUsed && j.PrizeType > h.PrizeType) {//2.再按类型排
                    index = k;
                    return false;
                }

                if (isAllowUsedJ == isAllowUsedH && j.IsCalcNoUsed == h.IsCalcNoUsed && j.PrizeType == h.PrizeType && j.PrizeValue > h.PrizeValue) {//3.再按红包金额排
                    index = k;
                    return false;
                }

                if (isAllowUsedJ == isAllowUsedH && j.IsCalcNoUsed == h.IsCalcNoUsed && j.PrizeType == h.PrizeType && j.PrizeValue == h.PrizeValue && j.ExpireDate < h.ExpireDate) {//4.再按红包金额排
                    index = k;
                    return false;
                }

                index = k + 1;
            });
            if (index == newList.length) newList.push(j);
            else newList.splice(index, 0, j);
        }
    });
    return newList;
}

/**
 * 红包列表排序
 * 产品调整需求（story-view-601.html）
 * @param {} list 
 * @returns {} 
 */
function sortPrize(list) {
    var newList = [];
    $.each(list, function (i, j) {
        if (newList.length == 0) newList.push(j);
        else {
            var isAllowUsedJ = j.IsAllowUsed ? 1 : 0;//是否可用 
            var index = 0;

            $.each(newList, function (k, h) {
                var isAllowUsedH = h.IsAllowUsed ? 1 : 0;//是否可用
                if (isAllowUsedJ > isAllowUsedH) {//0.按默认可用状态排
                    index = k;
                    return false;
                }

                if (j.IsCalcNoUsed < h.IsCalcNoUsed) {//1.按金额调整后可用状态排
                    index = k;
                    return false;
                }

                if (isAllowUsedJ == isAllowUsedH && j.IsCalcNoUsed == h.IsCalcNoUsed && j.PrizeType < h.PrizeType) {//2.再按类型排 加息券排前  红包排后
                    index = k;
                    return false;
                }

                if (isAllowUsedJ == isAllowUsedH && j.IsCalcNoUsed == h.IsCalcNoUsed && j.PrizeType == h.PrizeType && j.PrizeValue > h.PrizeValue) {//3.再按红包大小排 大的排前面
                    index = k;
                    return false;
                }

                if (isAllowUsedJ == isAllowUsedH && j.IsCalcNoUsed == h.IsCalcNoUsed && j.PrizeType == h.PrizeType && j.PrizeValue == h.PrizeValue && j.ExpireDate < h.ExpireDate) {//4.再按过期时间排，最早过期的排前
                    index = k;
                    return false;
                }
                index = k + 1;
            });
            if (index == newList.length) newList.push(j);
            else newList.splice(index, 0, j);
        }
    });
    return newList;
}

//下拉选择菜单
function selectMenu(cls) {
    $(cls).on('click', function () {
        var dat = $('#redValue').attr('prizeid');
        $(this).find('ul').stop().slideDown(80);
        $(this).find('ul li').eq(dat).addClass('on').siblings().removeClass('on');
    });
    $(cls).mouseleave(function () {
        $(this).find('ul').hide();
    });
    $(cls).find('ul').mouseenter(function () {
        $(this).show();
    });

    $(cls).find('li').on('click', function (event) {
        PrizeAddRate = 0;
        $("#spPrizeInterest").hide();
        event.stopPropagation();
        var li_value = $(this).text(),
            tit_value = $(this).parents(cls).find('.value'),
            data = $(this).attr('prizeid');
        tit_value.text(li_value).addClass('color-org');
        tit_value.attr('prizeid', data);
        $(this).parents(cls).find('ul').hide();

        $(cls).find('ul li').removeClass("on");
        $(this).addClass("on");//选中项
        //$(this).parents('.secbox').find('.recommend').removeClass('on');
        //$(this).parents('#sec1').addClass('cur'); 
        if ($(this).attr('prizetype') == "1") {
            PrizeAddRate = parseFloat($(this).attr('prizevalue'));
            $("#spPrizeInterest").show();
            calcAddRateInterest();
        } else {
            $("#spPrizeInterest").hide();
        }
    });
    //解除绑定事件
    $(cls).find('.noSelect').off('click').addClass('gray'); 
}

//选择加息券后计算加息利息
function calcAddRateInterest() {
    if (PrizeAddRate <= 0) {
        $("#spPrizeInterest").hide();
        return;
    } else {
        $("#spPrizeInterest").show();
    }
    var RepaymentType = 1;
    if (isWePlan) {
        nowUnit = $("#txtUnit_We").val().replace("份", "").replace(" ", "");
    } else {
        nowUnit = $("#txtUnit").val().replace("份", "").replace(" ", "");
        RepaymentType = parseInt($("#hiRepaymentType").val());
    }
    if (nowUnit == "") {
        nowUnit = 0;
    }
    var addProfit = GetInterestAmount((parseInt(nowUnit) * parseFloat(LowerUnit)), RepaymentType, deadline, PrizeAddRate);
    $("#spPrizeInterest .hongbao-jx").text(fmoney((Math.floor(Number(addProfit) * 100) / 100).toString()));
} 