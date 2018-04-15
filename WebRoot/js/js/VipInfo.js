
function GetLevelCookies() {

    var cookieName = getCookie("TDWUserName") + "level";
    var realNameCookieName = fnStringJM(cookieName);
    var levels = getCookie(realNameCookieName);
    var reallevel = 0;
    if (levels !== null) {
        var levelArray = levels.split('-');
        if (levelArray != null && levelArray.length > 1) {
            var cookieMonth = levelArray[0];

            var myDate = new Date();
            var currentYear = myDate.getFullYear().toString(); //获取当前年份(2位) 
            var currentMonth = myDate.getMonth() + 1; //获取当前月份(0-11,0代表1月)
            if (currentMonth < 10) {
                currentMonth = "0" + currentMonth.toString();
            }

            var nowMonth = "";
            nowMonth = currentYear + currentMonth.toString();
            if (nowMonth !== cookieMonth) {
                reallevel = 0;//需要重新取数据
            } else {
                reallevel = levelArray[1];
            }
        }
    }

    return reallevel;
}


function GetVipLevel() {

    var IsLogin = isCookieLogin();
    if (IsLogin) {


        var realLevel = GetLevelCookies();
        if (realLevel === 0) {
            $.ajax({
                url: "/ajaxCross/VipUserInfo.ashx",
                dataType: "json",
                data: { Cmd: "GetUserVipInfo", timespan: Math.random() },
                success: function (jsonData) {
                    if (jsonData.result != "0") {
                        var vipLevelLogoHtml = '<a class=\"myvip-link\" href=\"http://vip.tuandai.com/mymember.aspx\" target=\"_blank\"><i class=\"i' + jsonData.vipInfo.LevelType + '\" id=\"userLevelLogo\" ></i></a>';
                        //$("#loginLevelImage").
                        $("#userLevelLogo").prepend(vipLevelLogoHtml);
                    }
                    else {
                        //   console.debug(jsonData.msg);
                    }
                }, error: function (event, jqxhr, settings, exception) {

                    // console.debug(exception);
                }
            });
        } else {
            var vipLevelLogoHtml = '<a class=\"myvip-link\" href=\"http://vip.tuandai.com/mymember.aspx\" target=\"_blank\"><i class=\"i' + realLevel + '\" id=\"userLevelLogo\" ></i></a>';
            $("#userLevelLogo").prepend(vipLevelLogoHtml);
        }
    }
}




$(document).ready(function () {
    GetVipLevel();
});