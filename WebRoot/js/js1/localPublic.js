
//var portalWebsiteUrl = document.URL.match(/http[s]?:[/]{2}[^/]+/);
var portalWebsiteUrl = "//www.tuandai.com";
var imageWebsiteUrl = "//image.tuandai.com";
var niwoWebsiteUrl = "http://www.niiwoo.com";
var ActivityWebsiteUrl = "//hd.tuandai.com";
var DQWebsiteUrl = "//dq.tuandai.com";
var DQTDWUrl = "//dq.tdw.cn";
var PassportWebUrl = "//passport.tdw.cn/sso/lgck";
var tuandaiWebSiteUrl="//www.tuandai.com"

var tdObj = new Object();
tdObj.key = '#@zstuandaijjmzfc!#';

//登录
function login() {
    var returnUrl = jQuery.getUrlParam("ReturnUrl");
    if (returnUrl == null || returnUrl == "") {
        returnUrl = document.URL;
        if (returnUrl.toLowerCase().indexOf("/user/") > -1 || returnUrl.toLowerCase().indexOf("/user/ResetPwd_Telno.aspx") > -1) {
            return location.href = portalWebsiteUrl + "/user/login.aspx", !1
        }
    }

	return location.href = portalWebsiteUrl + "/user/login.aspx?ReturnUrl=" + returnUrl,
    !1

}
//跳到注册
function register() {
    var returnUrl = jQuery.getUrlParam("ReturnUrl");
    if (returnUrl == null || returnUrl == "") {
        returnUrl = document.URL;
        if (returnUrl.toLowerCase().indexOf("/user/") > -1 || returnUrl.toLowerCase().indexOf("/user/ResetPwd_Telno.aspx") > -1 || returnUrl.toLowerCase().indexOf(portalWebsiteUrl) > -1) {
            return location.href = portalWebsiteUrl + "/user/register.aspx", !1
        }
    }

    return location.href = portalWebsiteUrl + "/user/register.aspx?ReturnUrl=" + returnUrl,
    !1
}

//退出
function logout() {
    var returnUrl = jQuery.getUrlParam("ReturnUrl");
    if (returnUrl == null || returnUrl == "") {
        returnUrl = document.URL;
        if (returnUrl.toLowerCase().indexOf("/user/") > -1 || returnUrl.toLowerCase().indexOf("/user/ResetPwd_Telno.aspx") > -1) {
            return location.href = portalWebsiteUrl + "/user/logout.aspx", !1
        }
    }

    return location.href = portalWebsiteUrl + "/user/logout.aspx?ReturnUrl=" + returnUrl,
    !1
}

(function (jQuery) {
    jQuery.getUrlParam = function (name) {
        var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)");
        var r = window.location.search.substr(1).match(reg);
        if (r != null) return unescape(r[2]); return null;
    }
})(jQuery);


//验证整数（非负）
function checkInteger(obj)  //是非负整数返回：true,不是返回：false
{
    var reg = RegExp("^\\d+$");
    return reg.test(obj);
}

//验证浮点数(非负)
function checkFloat(obj) {//是非负浮点数返回：true,不是返回：false
    var reg = RegExp("^\\d+(\\.\\d+)?$");
    return reg.test(obj);
}

//金额格式化并保留指定的小数位(四舍五入)
function fmoney(s, n) {
    n = n > 0 && n <= 20 ? n : 2;
    s = parseFloat((s + "").replace(/[^\d\.-]/g, "")).toFixed(n) + "";
    var l = s.split(".")[0].split("").reverse(),
            r = s.split(".")[1];
    t = "";
    for (i = 0; i < l.length; i++) {
        t += l[i] + ((i + 1) % 3 == 0 && (i + 1) != l.length ? "," : "");
    }
    return t.split("").reverse().join("") + "." + r;
}

/*js加密*/
function fnStringJM2(s) {
    return des(tdObj.key, HexTostring(s), 0, 0);
}
function fnStringJM(s) {
    return stringToHex(des(tdObj.key, s, 1, 0));
}

//限制只能输入数字(不可以含有小数)
function limitInt(fn) {
    jQuery(fn).keydown(function (e) {
        // 注意此处不要用keypress方法，否则不能禁用　Ctrl+V 与　Ctrl+V,具体原因请自行查找keyPress与keyDown区分，十分重要，请细查
        if (((e.keyCode > 47) && (e.keyCode < 58)) || (e.keyCode == 9) || (e.keyCode == 8) || ((e.keyCode >= 96) && (e.keyCode <= 105))) {// 判断键值  
            return true;
        } else {
            return false;
        }

    }).focus(function () {
        this.style.imeMode = 'disabled';   // 禁用输入法,禁止输入中文字符
    });

}

//写cookies
function setCookie(name, value) {
    var Days = 30;
    var exp = new Date();
    exp.setTime(exp.getTime() + Days * 24 * 60 * 60 * 1000);
    document.cookie = name + "=" + escape(value) + ";expires=" + exp.toGMTString();
}
//读取cookies 
function getCookie(name) {
    var arr, reg = new RegExp("(^| )" + name + "=([^;]*)(;|$)");

    if (arr = document.cookie.match(reg))

        return unescape(arr[2]);
    else
        return null;
}

//删除cookies 
function delCookie(name) {
    var exp = new Date();
    exp.setTime(exp.getTime() - 1);
    var cval = getCookie(name);
    if (cval != null)
        document.cookie = name + "=" + cval + ";expires=" + exp.toGMTString();
}

function getCookieValue(name) {
    var acookie = document.cookie.split("; ");
    for (var i = 0; i < acookie.length; i++) {
        if (acookie[i].indexOf('=') > -1) {
            var arr = acookie[i].split("=");
            if (name == arr[0]) {
                return decodeURI(arr[1]);
            }
        }
    }
    return "";
}
//判断cookie是否有登录凭证
function isCookieLogin() {
    var cookieValue = jaaulde.utils.cookies.get("tuandaiw");
    if (cookieValue != "" && cookieValue != null)
        return true;
    else
        return false;
}

/*登录方法*/
function initLogin() {

        GetLocalLoginStatus();
   
   
}
function GetLocalLoginStatus()
{
    var url = portalWebsiteUrl + "/user/services/AccountHandler.ashx";
    if ("https:" == document.location.protocol)
        url = url.replace("http://", "https://");
    $.ajax({
        url: url,
        dataType: "jsonp",
        scriptCharset: "gb2312",
        success: function (data) {
            $("#topinfo").html(data.topinfo);
            $("#myaccount").html(data.accountinfo);
            $("#myaccountScroll").html(data.accountinfo);

            if (data && data.sso) {
                $.each(data.sso, function (i, val) {
                    $.ajax({
                        url: this,
                        type: "GET",
                        dataType: "text",
                        success: function (data) {
                            jQuery.ajax({
                                url: data,
                                dataType: "jsonp"
                            });
                        }
                    });
                });
            }
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            //  alert(textStatus);
        }
    });
}



/*---------------页面顶部事件---------Start*/


$(function () { 
    //微信二维码显示
    showWeiXin();

    showServers('.mail', '.mail-int-box')  //客服 tip
    showServers('.qq', '.qq-int-box') //QQ tip

    /*右侧工具条*/
    $('.tool').find('.t-box').hover(function () {
        $(this).find('.dan-tip').stop().fadeIn(300);
    }, function () {
        $(this).find('.dan-tip').stop().fadeOut(200);
    });
    textChange(".t1", "");
    textChange(".t2", "");
    textChange(".t5", "");
    textChange('.t3', "", -176);
    showTChildren('.t4', "", -88);
    showTip();
    toTop('.to-top');//回顶部 

    $(window).bind("scroll", function () {
        var scrollTop = document.documentElement.scrollTop + document.body.scrollTop;
        if (scrollTop >= 500) {
            $(".to-top").css({ "display": "block" });
        }
        else if (scrollTop < 500) {
            $(".to-top").css({ "display": "none" });
        }
    });

    var isShowAboutus = false;
    // 导航slide 
    slidDown('.about-us')
    slidDown('.guarantee')
    function slidDown(ele) {
        $(ele).hover(function (e) {

            $(this).find('dd').stop().slideDown(200);
            isShowAboutus = true;
        },
        function (e) {
            $(this).find('dd').stop().slideUp(200);
            isShowAboutus = false;
        }
     );
    }

    //  $('.myaccount').hover(function (e)
    //  {
    //      $(this).find('dd').stop().slideDown(200);
    //      isShowAboutus = true;
    //  },
    //     function (e)
    //     {
    //         $(this).find('dd').stop().slideUp(200);
    //         isShowAboutus = false;
    //     }
    //  );

});
// 年化利率风险提示 
$('.showtips-box').hover(function(){
	$(this).find('.lv-showtips-prom').show();
},function(){
	$(this).find('.lv-showtips-prom').hide();
})

//友情链接下拉
var friendLink = friendLink();
function friendLink(argument) {
    var i = 0;
    $('.link').find('.hide-btn').click(function () {
        if (i == 0) {
            $(this).parent().find('.links').css({ 'height': 'auto', 'overflow': 'visible' });
            $(this).find('i').css({ 'background-position': ' -41px -48px' });
            $(this).find('.text').text('隐藏');
            i = 1;

        } else {
            $(this).parent().find('.links').css({ 'height': '30px', 'overflow': 'hidden' });
            $(this).find('i').css({ 'background-position': '-27px -48px' });
            $(this).find('.text').text('展开');
            i = 0;

        };
    });
}
//首页导航行下拉滚动
suspension();
function suspension() {
    $(window).bind("scroll", function () {
        var scrollTop = document.documentElement.scrollTop + document.body.scrollTop;
        if (scrollTop >= 400) {
            $('.suspension').removeClass('suspension-up');
            $('.suspension').addClass('suspension-down');
        }
        else if (scrollTop < 400) {
            $('.suspension').removeClass('suspension-down');
            $('.suspension').addClass('suspension-up');
        }
    });
}
function showTip() {
    $('.tool').find('.t-box').find('li').hover(function () {

        $(this).find('.tip-box').show();

    }, function () { $(this).find('.tip-box').hide(); })
}
function showTChildren(el, text, move) {
    $('.tool').find(el).hover(function () {
        $(this).find('ul').show();
        $(this).find('ul').stop().animate({
            left: move
        }, 200);
        $(this).find(".text-box").stop().show().text(text);
    }, function () {
        $(this).find('ul').stop().animate({
            left: 0
        }, 300, function () {
            $(this).parent().find('.text-box').fadeOut(300);
            $(this).hide();
        });
    })
}
function textChange(el, text) {
    $('.tool').find(el).mouseenter(function () {
        var oldText = $(this).html();
        //            alert(oldText)
        $(this).html(text);
        $(this).mouseleave(function () {
            $(this).html(oldText);
        });
    })
}
function toTop(el) {
    $(el).click(function () {
        $('html, body').animate({ scrollTop: 0 }, 'slow');
    });
}
function showWeiXin() {
    //$('.weixin').hover(function () {
    //    $(this).find('.ewm').removeClass('ewm-toBottom');
    //    $(this).find('.ewm').show().addClass('ewm-toTop');
    //},
    //function () {
    //    $(this).find('.ewm').removeClass('ewm-toTop').addClass('ewm-toBottom');

    //    setTimeout($(this).find('.ewm').hide(), 3000); 
    //});
    $(".weixin").mouseenter(function () {
        $(this).find('.ewm').removeClass('ewm-toBottom');
        $(this).find('.ewm').show().addClass('ewm-toTop');
    });
    $(".weixin").mouseleave(function () {
        $(this).find('.ewm').removeClass('ewm-toTop').addClass('ewm-toBottom');
        $(this).find('.ewm').hide();
    });
}
//客服 QQ显示 
function showServers(el1, el2) {
    $('.footer ' + el1 + ', .footer ' + el2).mouseenter(function () {

        $('.footer').find(el2).show();
        $('.footer').find(el2).stop().animate({
            'top': '-88px'
        }, 200);
    });
    $('.footer ' + el1 + ', .footer ' + el2).mouseleave(function () {
        $('.footer').find(el2).stop().animate({
            'top': '-100px'
        }, 100, function () { $(this).parent().find(el2).hide(); });
    });
}





function colosenewWindow() {
    $("#dial-window").hide();
    $("#diallayer").hide();
    //点关闭时刷新当前页面 allen 2016-03-16
    var isRefresh = $("#dial-window").find(".close").attr("isrefresh");
    if (isRefresh == "1") {
        window.location.reload();
    }
}
//弹出弹框
function showDialWindowsWithoutBtn(title, content) {
    showDialWindows(title + "<i class=\"close icons close-x icon abs\" onclick=\"colosenewWindow()\"></i>", content, null, null, null, null);
}
///弹框,title:弹框标题
///content：弹框内容
/// okString ok按钮内容, okbtnEvent ok按钮触发事件, cancleString取消按钮内容, cancleEvent取消按钮触发事件
function showDialWindows(title, content, okString, okbtnEvent, cancleString, cancleEvent) {
    if ($("#divTiQian").length > 0)
        $("#divTiQian").html('').hide();
    if (title.indexOf("close icons") < 0)
        title += "<i class=\"close icons close-x icon abs\" onclick=\"colosenewWindow()\"></i>";
    $("#dial-window .title").html(title);
    $("#dial-window .body").html(content);
    if (okString != "null" && okString != null && okString.length > 0) {
        $("#dial-window-okbtn").html(okString);
        $("#dial-window-okbtn").show();
    }
    else {
        $("#dial-window-okbtn").hide();
    }

    $("#dial-window-okbtn").unbind("click").bind("click", function (e) {
        e.preventDefault();
        if (okbtnEvent)
        { okbtnEvent(); }
    });

    if (cancleString != "null" && cancleString != null && cancleString.length > 0) {
        $("#dial-window-canclebtn").html(cancleString);
        $("#dial-window-canclebtn").show();
    }
    else {
        $("#dial-window-canclebtn").hide();
    }
    $("#dial-window-canclebtn").unbind("click").bind("click", function (e) {
        e.preventDefault();
        if (cancleEvent)
        { cancleEvent(); }
    });
    $("#diallayer").show();
    $("#dial-window-btns").show();
    $("#dial-window").show();
}
///关闭弹框
function closeLoadingWindows() {
    $("#dial-window .title").html("");
    $("#dial-window .body").html("");
    $("#dial-window-btns").hide();
    $("#layer").hide();
    $("#diallayer").hide();
    $("#dial-window").hide();
    if ($("#divTiQian").length > 0) {
        $("#divTiQian").hide();
    }
}

$(document).ready(function () {
    initLogin();

});

//为IE7插入伪元素

//$beforeAfter(document.getElementById("vertical-center"));
//var $beforeAfter = function(dom) {
//  if (document.querySelector || !dom && dom.nodeType !== 1) return;
// 
//  var content = dom.getAttribute("data-content") || '';     
////  var before = document.createElement("before")
//     var  after = document.createElement("after");
//    
//  // 内部content
////  before.innerHTML = content;
//  after.innerHTML = content;
//  // 前后分别插入节点
////  dom.insertBefore(before, dom.firstChild);
//  dom.appendChild(after);
//};