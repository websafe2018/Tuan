 //层级变化
        $('.sort-type').hover(function () { $(this).css({ "z-index": '3' }) }, function () { $(this).css({ "z-index": '0' }); });

        var _SortEndDate = 0;
        var _SortReceiveDate = 0;
        var _QueryTypeId = 0;

        $(".sort-type").hover(function () {
            $(this).find('dl').addClass('show');
        }, function () {
            $(this).find('dl').removeClass('show');
        });
        $("#menu_myprize").addClass("currentMenu");


        $(function () {
            //$(window).bind("scroll", function () {
            //    var scrollTop = document.documentElement.scrollTop + document.body.scrollTop;
            //    if (scrollTop >= 400) {

            //        $('.suspension').removeClass('suspension-up');
            //        $('.suspension').addClass('suspension-down');
            //    }
            //    else if (scrollTop < 400) {
            //        $('.suspension').removeClass('suspension-down');
            //        $('.suspension').addClass('suspension-up');
            //    }
            //});
            GetUserPrizeList(0, 0);
            $("#selectAtr li").each(function (i, o) {
                $(this).click(function () {
                    UserPrizeList(0, 0, 0);
                })
            })
        });

        var pageindex = 1;
        var pagesize = 9;

        function initProductsPagin(recordCount) {
            var num_entries = recordCount;
            $("#pager").pagination(num_entries, {
                callback: UserPrizeList,
                items_per_page: pagesize,
                num_display_entries: 5,
                current_page: parseInt(pageindex - 1),
                num_edge_entries: 2,
                prev_text: "上一页",
                next_text: "下一页",
                link_to: "",
                ellipse_text: "...",
                prev_show_always: true,
                next_show_always: true,
                renderer: "defaultRenderer",
                show_if_single_page: false,
                load_first_page: true
            });
        }

        function ShowOrderStatus(PrizeId) {
            localDailog("查看物流", "<img src=\"//js2.tdw.cn/images/default/loading24.gif\" />&nbsp;正在加载页面，请稍候......");
            $.ajax({
                async: false,
                type: "get",
                url: "ViewLogistic.aspx?PrizeId=" + PrizeId,
                success: function (data) {
                    closeDailog();
                    $('#logistic').html(data);
                    logisticDialogShow();
                    var log = $('#logistic').height();
                    if (log < 300) {
                        $('#logistic').css({ 'overflow': 'hidden' })
                    }
                },
                cache: false
            });
        }

        function GetUserPrizeList(_mySortEndDate, _mySortReceiveDate) {
            var data = {
                "RecodeCount": 1,
                "list": "<li class='yellow'><div class='amount f30 b'><span class='r-text r'>提现优惠券</span><span>￥</span>5<span>.00</span> </div><div class='list-content'><div class='sort-item cl fix'><span class='situation'>使用说明：</span> <span class='text z1 rel'>团贷会员特权赠送（每次提现限使用一张，不设找...<span class='use-tip abs z100' style='display: none;'>团贷会员特权赠送（每次提现限使用一张，不设找零，使用期限1个月）<i class='member-icon arrow'></i></span></span></div><div class='sort-item cl fix'><span class='situation'>奖品来源：</span> <span class='text'>会员系统提现劵</span></div><div class='sort-item cl fix'><span class='situation'>有效时间：</span> <span class='text'>2017-06-01至2017-06-30</span></span></div></div></li>"
            }
                
                    $("#noPrize").css('display', 'none');
                    var recordCount = data.RecodeCount;
                    var html = data.list;
                    if (recordCount == 0) {
                        $("#noPrize").css({ display: 'block' });
                    }
                    else {
                        $("#UserPrizeContainer").html(html);
                        $("#UserPrizeContainer").css({ 'margin-left': '-25px' });


                    }

                    initProductsPagin(recordCount);
                    $(".text").hover(function () {
                        $(this).find('.use-tip').stop().show();
                    }, function () {
                        $(this).find('.use-tip').stop().hide();
                    });
                


        }
        // $.ajax({
        //     type: 'post',
        //     url: "/member/ajaxCross/ajax_userprize.ashx",
        //     data: {
        //         Cmd: "GetUserPrizeByUser",
        //         PageIndex: pageindex,
        //         PageSize: pagesize,
        //         TotalRecode: 0,
        //         SortEndDate: _SortEndDate,
        //         SortReceiveDate: 0,
        //         QueryTypeId: _QueryTypeId
        //     },
        //     dataType: 'json',
        //     success: function (data, status) {
        //         $("#noPrize").css('display', 'none');
        //         var recordCount = data.RecodeCount;
        //         var html = data.list;
        //         if (recordCount == 0) {
        //             $("#noPrize").css({ display: 'block' });
        //         }
        //         else {
        //             $("#UserPrizeContainer").html(html);
        //             $("#UserPrizeContainer").css({ 'margin-left': '-25px' });


        //         }

        //         initProductsPagin(recordCount);
        //         $(".text").hover(function () {
        //             $(this).find('.use-tip').stop().show();
        //         }, function () {
        //             $(this).find('.use-tip').stop().hide();
        //         });
        //     },
        //     error: function (a, b, c) {

        //     }
        // })

 
        function ComfirmReceiveGoods(prizeId) {
            var html = "<a href=\"javascript:ReceiveGoods('" + prizeId + "')\" class='member-sumbit-btn mr15'>确认收货</a>";
            html += "<a href='javascript:void()' class='member-sumbit-btn member-sumbit-btn-gar' onclick='closeDailogReciveGoods()'>取消</a>";
            $("#btnReceiveGoods").html(html);
            showDailogReciveGoods();
        }

        //获取列表
        function UserPrizeList(page_index, _mySortEndDate, _mySortReceiveDate) {
            if (parseInt(pageindex - 1) == page_index) {
                return false;
            }
            pageindex = (page_index + 1);
            if (_mySortReceiveDate == undefined) {
                GetUserPrizeList(0, 0);
            }
            else {
                GetUserPrizeList(_mySortEndDate, _mySortReceiveDate);
            }
            return false;
        }

        $('.sort-type').find('a').click(function () {
            $('.sort-type').find('.selected').removeClass('selected');
            $(this).parents('dl').find('dt').addClass('selected');
            $('.sort-type').find('a').css({ 'color': '#666666' });

            $(this).css({ 'color': '#ff9900' });

        })

        function QueryUserPrizeByTypeId(typeId, flag) {
            $("#allRecord").removeClass("totalcolor");
            //if (flag == 1) {
            //    $("#redPacket").addClass("selected");
            //    $("#kaQuan").removeClass("selected");
            //    $("#other").removeClass("selected");
            //}
            //if (flag == 2) {
            //    $("#redPacket").removeClass("selected");
            //    $("#kaQuan").addClass("selected");
            //    $("#other").removeClass("selected");

            //}
            //if (flag == 3) {
            //    $("#redPacket").removeClass("selected");
            //    $("#kaQuan").removeClass("selected");
            //    $("#other").addClass("selected");

            //}
            pageindex = 1;
            _QueryTypeId = typeId;
            GetUserPrizeList(0, 0);
            $("#selectAtr li").each(function (i, o) {
                $(this).click(function () {
                    UserPrizeList(0, _SortEndDate, _SortReceiveDate);
                })
            })
        }

        function GetUserPrizeBySort(type) {
            if (type == 1) {
                _SortEndDate = 0;
                $("#sortNewGet").css({ color: "#ff9900" });
                $("#sortEnd").css({ color: "#666" });
                GetUserPrizeList(0, 0);
                $("#selectAtr li").each(function (i, o) {
                    $(this).click(function () {
                        attrVal = $(this).attr("attrval");
                        UserPrizeList(0, 0, 0);
                    })
                })
            }
            if (type == 2) {
                _SortEndDate = 2;
                $("#sortNewGet").css({ color: "#666" });
                $("#sortEnd").css({ color: "#ff9900" });
                GetUserPrizeList(2, 0);
                $("#selectAtr li").each(function (i, o) {
                    $(this).click(function () {
                        attrVal = $(this).attr("attrval");
                        UserPrizeList(0, 2, 0);
                    })
                })
            }
        }

        function ReceiveUserPrize(stralter, typeid, subtypeid, prizeValue, id) {
            if (isCookieLogin()) {

                try {
                    if (IsOpenCGT == "1" && !checkIsOpen()) {
                        return false;
                    }
                }
                catch (e) { }

                localDailog('团贷网', "<img src=\"//js2.tdw.cn/images/default/loading24.gif\" />&nbsp;正在领取中，请稍候......");
                var activity1218 = ''
                var activityMsg = '';
                if (activity1218 == '1') {
                    activityMsg = ",<a href='/pages/activity/20141218/PC/index.aspx' style='color: #fc8936;text-decoration: none;'><b style='font-size: 16px;'>点击回到活动页面</b></a>";
                }
                ///////团宝箱领取商城礼品
                if (typeid == "9") {
                    //$('.address').css({ display: 'table' });
                    closeDailog();
                    localDailog('领取奖品', "<img src=\"//js2.tdw.cn/images/default/loading24.gif\" />&nbsp;正在加载页面，请稍候......");
                    $.ajax({
                        async: false,
                        type: "get",
                        url: 'my_prize_addr.aspx?PrizeId=' + id,
                        success: function (data) {
                            closeDailog();
                            $('.addressContent').html(data);
                            addressDialogShow();
                        },
                        cache: false
                    });
                    return;
                }
                //////
                $.ajax({
                    async: false,
                    type: "post",
                    url: "/member/ajaxCross/ajax.ashx",
                    dataType: "json",
                    data: { Cmd: "GetUserPrize", id: id },
                    success: function (json) {
                        closeDailog()
                        var msg = json.msg;
                        switch (json.result) {
                            case "1":
                                if (msg == "") {
                                    if (typeid == "16" && subtypeid == undefined) {
                                        localDailog("团贷网提醒您", "您已成功领取" + activityMsg, "http://hd.tuandai.com/web/newhand/welfare.aspx");
                                    }
                                    else if (typeid == "16" && subtypeid == 1) {
                                        localDailog("团贷网提醒您", "您已成功领取" + activityMsg, location.href);
                                    }
                                    else {
                                        localDailog("团贷网提醒您", "您已成功领取" + activityMsg, location.href);
                                    }
                                    $('#dailogIcon').click(function () {
                                        window.location.href = window.location.href;
                                    })
                                }
                                break;
                            case "0":
                                localDailog("团贷网提醒您", "领取失败，请重试");
                                break;
                            case "-11":
                                localDailog("团贷网提醒您", "领取时间未开始");
                                break;
                            case "-12":
                                localDailog("团贷网提醒您", "领取时间已结束");
                                break;
                            case "-1":
                                localDailog("团贷网提醒您", "奖品已领取");
                                break;
                            case "-2":
                                if (typeid == "14" && subtypeid == "0") {
                                    if (prizeValue != null && prizeValue != "") {
                                        prizeValue = parseInt(prizeValue);
                                    }
                                    switch (prizeValue) {
                                        case 5:
                                            {
                                                invest = '1000';
                                                break;
                                            }
                                        case 15:
                                            {
                                                invest = '8000';
                                                break;
                                            }
                                        case 20.00:
                                            {
                                                invest = '2万';
                                                break;
                                            }
                                        case 160:
                                            {
                                                invest = '5万';
                                                break;
                                            }
                                        case 188:
                                            {
                                                invest = '10万';
                                                break;
                                            }
                                    }

                                    localNoticeWindow('团贷网提醒您', "<div style='font-size:13px;line-height:22px;padding:5px 20px;'>此红包累计投资满" + invest + "元即可领取（只包含期限≥1个月的投资额），为保障您的权益，投资之前需要完成手机认证、实名认证</div>", "马上认证", function () { window.location = "/member/Validate/index.aspx" }, "取消", closeDailog);
                                } else {

                                    localNoticeWindow('团贷网提醒您', "<div style='font-size:14px;line-height:22px;padding:5px 20px;'>领取之前请完成" + (msg.indexOf("认证") != -1 ? msg : "实名认证和手机认证") + "</div>", "马上认证", function () { window.location = "/member/Validate/index.aspx" }, "取消", closeDailog);
                                }
                                break;
                            case "-18":
                                localDailog("团贷网提醒您", "领取失败：邀请奖励赠送2天后才能领取！");
                                break;
                            case "-88":
                                if (typeid == "14" && subtypeid == "0") {
                                    if (prizeValue != null && prizeValue != "") {
                                        prizeValue = parseInt(prizeValue);
                                    }
                                    hideValue(prizeValue);
                                }
                                else {
                                    localDailog("团贷网提醒您", "领取失败，不符合领取条件", "");
                                }
                                break;
                            case "-89":
                                localDailog("团贷网提醒您", "领取失败，已过投资领取红包时间");
                                break;
                            case "-90":
                                localDailog("团贷网提醒您", "领取失败：红包已过期！");
                                break;
                            case "-91":
                                localNoticeWindow('团贷网提醒您', stralter, '马上投资', function () { window.location = "/pages/invest/invest_list.aspx" });
                                break;
                            default:
                                localDailog("团贷网提醒您", "网络异常，请重试", "", "1");
                                break;
                        }
                    }
                    , error: function () {
                        closeDailog();
                        localDailog("团贷网提醒您", "网络异常，请重试");
                    }
                });
            }
            else {
                window.location.href = "/View/login.aspx?ReturnUrl=" + window.location.href;
            }
        }


        function localNoticeWindow(title, content, okString, okbtnEvent, cancleString, cancleEvent) {
            $("#dialogTitle").html(title);
            $("#dialogContent").html(content);
            if (okString) {
                var html = "<a href='javascript:void(0)' class='member-sumbit-btn mr15' id='okAtcion'> " + okString + "</a>";
            }
            if (cancleString) {
                html += "<a href='javascript:void(0)' class='member-sumbit-btn member-sumbit-btn-gar' id='cancleAtcion'>" + cancleString + "</a>";
            }
            $("#btnAction").html(html);
            if (okbtnEvent) {
                $("#okAtcion").unbind("click");
                $('#okAtcion').click(okbtnEvent);
            }
            if (cancleEvent) {
                $("#cancleAtcion").unbind("click");
                $('#cancleAtcion').click(cancleEvent);
            }
            showDailog();
        }

        function localDailog(title, content, url) {
            closeDailog();
            if (url == undefined || url == "") {
                localNoticeWindow(title, content);
            }
            else {
                localNoticeWindow(title, content, "确定", function () { window.location.href = url; });
            }
        }

        function reload() {
            window.location.href = url
        }

        function addressErrorDailog(title, content) {
            localNoticeWindow(title, content, "确定", closeDailog);
        }

        function closeDailog() {
            $('.dial-layer').hide();
            $(".dailog").css({ display: 'none' });
        }

        function logisticDialogClose() {
            $('.dial-layer').hide();
            $('.logisticDialog').hide()
        }

        function logisticDialogShow() {
            $('.dial-layer').show();
            $('.logisticDialog').show()
        }

        function addressDialogClose() {
            $('.dial-layer').hide();
            $('.address').hide()
        }

        function addressDialogShow() {
            $('.dial-layer').show();
            $('.address').show()
        }

        function showDailog() {
            $('.dial-layer').show();
            $(".dailog").css({ display: 'table' });
        }

        function closeDailogReciveGoods() {
            $('.dial-layer').hide();
            $('.dailogReciveGoods').hide();
        }

        function showDailogReciveGoods() {
            $('.dial-layer').show();
            $('.dailogReciveGoods').show();
        }
        $(function () {
            $(".btn btn-w140 red").click(function () {
                alert(123);
                return false;
            });
        });