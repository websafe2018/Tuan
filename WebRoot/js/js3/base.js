//var portalWebsiteUrl = "http://192.168.8.111:9001";
//var imageWebsiteUrl = "http://192.168.8.111:9003";
//var niwoWebsiteUrl = "http://192.168.8.111:8008";
//var ActivityWebsiteUrl = "http://192.168.8.111:9006";

var portalWebsiteUrl = "http://www.tuandai.com";
var imageWebsiteUrl = "http://image.tuandai.com";
var niwoWebsiteUrl = "http://www.niwo.com";
var ActivityWebsiteUrl = "http://hd.tuandai.com";


function login() {
    var returnUrl = jQuery.getUrlParam("ReturnUrl");
    if (returnUrl == null || returnUrl == "") {
        returnUrl = document.URL;
        if (returnUrl.toLowerCase().indexOf("/user/") > -1 || returnUrl.toLowerCase().indexOf("/member/resetpwd.aspx") > -1) {
            return location.href = portalWebsiteUrl + "/user/login.aspx", !1
        }
    }

    return location.href = portalWebsiteUrl + "/user/login.aspx?ReturnUrl=" + returnUrl,
    !1
}
function register() {
    var returnUrl = jQuery.getUrlParam("ReturnUrl");
    if (returnUrl == null || returnUrl == "") {
        returnUrl = document.URL;
        if (returnUrl.toLowerCase().indexOf("/user/") > -1 || returnUrl.toLowerCase().indexOf("/member/resetpwd.aspx") > -1 || returnUrl.toLowerCase().indexOf(portalWebsiteUrl) > -1) {
            return location.href = portalWebsiteUrl + "/user/register.aspx", !1
        }
    }

    return location.href = portalWebsiteUrl + "/user/register.aspx?ReturnUrl=" + returnUrl,
    !1
}
function logout() {
    var returnUrl = jQuery.getUrlParam("ReturnUrl");
    if (returnUrl == null || returnUrl == "") {
        returnUrl = document.URL;
        if (returnUrl.toLowerCase().indexOf("/user/") > -1 || returnUrl.toLowerCase().indexOf("/member/resetpwd.aspx") > -1) {
            return location.href = portalWebsiteUrl + "/user/logout.aspx", !1
        }
    }

    return location.href = portalWebsiteUrl + "/user/logout.aspx?ReturnUrl=" + returnUrl,
    !1
}
function addToFavorite() {

}

(function (jQuery) {
    jQuery.getUrlParam = function (name) {
        var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)");
        var r = window.location.search.substr(1).match(reg);
        if (r != null) return unescape(r[2]); return null;
    }
})(jQuery);