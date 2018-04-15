/**
 * Created by haohui on 2016/11/30.
 */

function stringToHex(s) {
    var r = '';
    var hexes = new Array('0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f');
    for (var i = 0; i < (s.length) ; i++) {
        r += hexes[s.charCodeAt(i) >> 4] + hexes[s.charCodeAt(i) & 0xf]
    }
    return r
}

function HexTostring(s) {
    var r = '';
    for (var i = 0; i < s.length; i += 2) {
        var sxx = parseInt(s.substring(i, i + 2), 16);
        r += String.fromCharCode(sxx)
    }
    return r
}

var nwbi_userName = "";
var nwbi_sysNo = "TDW";
var IsLogin = isCookieLogin();
if (IsLogin) {
    var nickname = jaaulde.utils.cookies.get("TDWUserName");
    nwbi_userName = nickname;
}
(function () {
    var ta = document.createElement('script');
    ta.type = 'text/javascript';
    ta.async = true;
    ta.src = ((("https:") == document.location.protocol) ? "https://" : "http://") + 'bilog.niiwoo.com/js/webaccess.js';
    var s = document.getElementsByTagName('script')[0];
    s.parentNode.insertBefore(ta, s);
})();

var _hmt = _hmt || [];
(function () {
    var hm = document.createElement("script");
    hm.src = "//hm.baidu.com/hm.js?6dff67da4e4ef03cccffced8222419de";
    var s = document.getElementsByTagName("script")[0];
    s.parentNode.insertBefore(hm, s);
})();

(function () {
    $('.member-list').hover(function () {
            $(this).find('ul').addClass('ul-type').end().find('.mission').show();
            $(this).find('.arrow').removeClass('down-arrow').addClass('up-arrow');
        }, function () {
            $(this).find('ul').removeClass('ul-type').end().find('.mission').hide();
            $(this).find('.arrow').removeClass('up-arrow').addClass('down-arrow');
        }
    )
    suspension();
})();