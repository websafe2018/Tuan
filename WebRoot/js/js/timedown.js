$(window).ready(function () {
    fnTimeCountDown();
});

function zero(n) {
    var n = parseInt(n, 10);
    if (n > 0) {
        if (n <= 9) {
            n = "0" + n;
        }
        return String(n);
    } else {
        return "00";
    }
}
function dv(tcount) {
    var sec = zero(tcount % 60);
    var mini = Math.floor((tcount / 60)) > 0 ? zero(Math.floor((tcount / 60)) % 60) : "00";
    var hour = Math.floor((tcount / 3600)) > 0 ? parseInt(tcount / 3600) % 24 : "00";
    var day = Math.floor((tcount / 86400)) > 0 ? parseInt(Math.floor((tcount / 86400))) : "0";
    return "<span style='color:white'>" + day + "</span>天<span style='color:white'>" + hour + "</span>小时<span style='color:white'>" + mini
    + "</span>分<span style='color:white'>" + sec + "</span>秒";
}

function fnTimeCountDown() {
    $(".timeSet").each(function () {
        var timecount = parseInt($(this).attr("count"));
        if (timecount >= 0) {
            $(this).html(dv(timecount));
            if (timecount == 0) {
                var parent = $(this).parent();
                var content = parent.html();
                if (content.indexOf("离开放还有") >= 0) {
                    parent.removeClass("buy-btn-time");
                    parent.html("马上加入");
                    if ($(".invest-garybtn,.invest-garybtn-time") != undefined) {
                        $(".invest-garybtn,.invest-garybtn-time").html("确认加入");
                        parent.css("font-size", "18px").removeClass("invent-btn-2");
                        $("#btnSubscribe").css("font-size", "18px");
                        $("#btnSubscribe").removeClass("invest-garybtn").addClass("invest-btn");
                        $(".invest-garyinput").addClass("invest-input").removeClass("invest-garyinput");
                        $(".invest-btn").click(function () { buyWePlan(); });
                        $(".invest-input .red").click(function () {
                            MinusShares();
                        });
                        //增加
                        $(".invest-input .add").click(function () {
                            PlusShare();
                        });
                    }
                }
            }
            timecount = timecount - 1;
            $(this).attr("count", timecount);
        }
    });
    setTimeout("fnTimeCountDown()", 1000);
}