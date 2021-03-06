﻿var tdObj = new Object();
tdObj.key = '#@zstuandaijjmzfc!#';
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

//tab封装
function tabs(tid, cid, tag1, tag2, addclass, theevent) {
    var checkNav = "", checkWrap = "";
    var o1 = document.getElementById(tid),
    o2 = document.getElementById(cid),
    ElementNav = new Array();
    ElementWrap = new Array();
    chk = function (e, n) {
        var v = eval("/" + n + "/gi");
        if (v == undefined) {
            return true
        }
        else if (v.test(e.className)) {
            return true
        };
    }
    function ser(e, arr, g, n) {
        var tags = e.getElementsByTagName(g), v = 0;
        for (i = 0; i < tags.length; i++) {
            if (chk(tags[i], n) == true) { arr[v] = tags[i]; v++; };
        }
    }
    function Start(e, f) {
        var s = e.length;
        for (i = 0; i < s; i++) {
            switch (theevent) {
                case "onclick":
                    {
                        e[i].onclick = function () { EV(this) }
                    }
                    break;

                default:
                    {
                        e[i].onmouseover = function () { EV(this) }
                    }
                    break;
            }
        }
        function EV(obj) {
            for (var i = 0; i < s; i++) {
                f[i].style.display = "none";
                e[i].className = "";
            }
            for (var i = 0; i < s; i++) {
                if (e[i] == obj) { f[i].style.display = "block"; e[i].className = addclass }
            }
        }
    }
    ser(o1, ElementNav, tag1, checkNav);
    ser(o2, ElementWrap, tag2, checkWrap);
    Start(ElementNav, ElementWrap)
}

//获取2位小数，不四舍五入
function Round2(temp) {
    temp = temp.toString();
    if (temp.indexOf(".") > -1) {
        return temp.substring(0, temp.indexOf(".") + 3);
    }
    else {
        return temp;
    }
}

//获取HTML标记的Left
function getLeft(obj) {
    var l = 0;
    while (obj != null) {
        l += obj.offsetLeft;
        obj = obj.offsetParent;
    }
    return l;
}

//获取HTML标记的Left
function getTop(obj) {
    var t = 0;
    while (obj != null) {
        t += obj.offsetTop;
        obj = obj.offsetParent;
    }
    return t;
}


function formatFloat(src, pos) {
    return Math.round(src * Math.pow(10, pos)) / Math.pow(10, pos);
}

function request(paras) {
    var url = location.href;
    var paraString = url.substring(url.indexOf("?") + 1, url.length).split("&");
    var paraObj = {}
    for (i = 0; j = paraString[i]; i++) {
        paraObj[j.substring(0, j.indexOf("=")).toLowerCase()] = j.substring(j.indexOf("=") + 1, j.length);
    }
    var returnValue = paraObj[paras.toLowerCase()];
    if (typeof (returnValue) == "undefined") {
        return "";
    } else {
        return returnValue;
    }
}

function returnDateFomart() {
    return WdatePicker({ skin: 'whyGreen', dateFmt: 'yyyy年MM月dd日', isShowClear: false, readOnly: false })
}
function returnDateFomartWith_() {
    return WdatePicker({ skin: 'whyGreen', dateFmt: 'yyyy-MM-dd', isShowClear: false, readOnly: false })
}
String.prototype.trim = function () {
    return this.replace(/(^\s*)|(\s*$)/g, "");
}
Date.prototype.format = function (format) //author: meizz 
{
    var o = {
        "M+": this.getMonth() + 1, //month 
        "d+": this.getDate(),    //day 
        "h+": this.getHours(),   //hour 
        "m+": this.getMinutes(), //minute 
        "s+": this.getSeconds(), //second 
        "q+": Math.floor((this.getMonth() + 3) / 3),  //quarter 
        "S": this.getMilliseconds() //millisecond 
    }
    if (/(y+)/.test(format)) format = format.replace(RegExp.$1,
    (this.getFullYear() + "").substr(4 - RegExp.$1.length));
    for (var k in o) if (new RegExp("(" + k + ")").test(format))
        format = format.replace(RegExp.$1,
      RegExp.$1.length == 1 ? o[k] :
        ("00" + o[k]).substr(("" + o[k]).length));
    return format;
}
/* 
函数：计算两个日期之间的差值 
参数：date是日期对象 
flag：ms-毫秒，s-秒，m-分，h-小时，d-天，M-月，y-年 
返回：当前日期和date两个日期相差的毫秒/秒/分/小时/天 
*/
Date.prototype.dateDiff = function (date, flag) {
    var msCount;
    var diff = this.getTime() - date.getTime();
    switch (flag) {
        case "ms":
            msCount = 1;
            break;
        case "s":
            msCount = 1000;
            break;
        case "m":
            msCount = 60 * 1000;
            break;
        case "h":
            msCount = 60 * 60 * 1000;
            break;
        case "d":
            msCount = 24 * 60 * 60 * 1000;
            break;
    }
    return Math.floor(diff / msCount);
};
function cusSubStr(str, start, replace, length) {
    if (str.toString().length < length + 1) {
        return str;
    }
    return str.toString().substring(start, length) + replace;
}


function getContent(str) {
    str = str.replace(/<\/?[^>]*>/g, ''); //去除HTML tag
    str.value = str.replace(/[ | ]*\n/g, '\n'); //去除行尾空白
    return str;
}



/**
* 回到页面顶部
* @param acceleration 加速度
* @param time 时间间隔 (毫秒)
**/
function goTop(acceleration, time) {
    acceleration = acceleration || 0.1;
    time = time || 16;

    var x1 = 0;
    var y1 = 0;
    var x2 = 0;
    var y2 = 0;
    var x3 = 0;
    var y3 = 0;

    if (document.documentElement) {
        x1 = document.documentElement.scrollLeft || 0;
        y1 = document.documentElement.scrollTop || 0;
    }
    if (document.body) {
        x2 = document.body.scrollLeft || 0;
        y2 = document.body.scrollTop || 0;
    }
    var x3 = window.scrollX || 0;
    var y3 = window.scrollY || 0;

    // 滚动条到页面顶部的水平距离
    var x = Math.max(x1, Math.max(x2, x3));
    // 滚动条到页面顶部的垂直距离
    var y = Math.max(y1, Math.max(y2, y3));

    // 滚动距离 = 目前距离 / 速度, 因为距离原来越小, 速度是大于 1 的数, 所以滚动距离会越来越小
    var speed = 1 + acceleration;
    window.scrollTo(Math.floor(x / speed), Math.floor(y / speed));

    // 如果距离不为零, 继续调用迭代本函数
    if (x > 0 || y > 0) {
        var invokeFunction = "goTop(" + acceleration + ", " + time + ")";
        window.setTimeout(invokeFunction, time);
    }
}



function nophoto(img) {
    if (img != null) {
        img.src = "//js2.tdw.cn/images/tool/none.jpg";
    }
}
//写cookies
function setCookie(name, value,days) {
    var Days =days==null? 30:days;
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


function fnStringJM2(s) {
    return des(tdObj.key, HexTostring(s), 0, 0);
}
function fnStringJM(s) {
    return stringToHex(des(tdObj.key, s, 1, 0));
}