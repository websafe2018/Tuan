/**=======================金额数字滚动============Start**/
$.fn.countTo = function (options) {
    options = options || {};

    return $(this).each(function () {
        // set options for current element
        var settings = $.extend({}, $.fn.countTo.defaults, {
            from: $(this).data('from'),
            to: $(this).data('to'),
            speed: $(this).data('speed'),
            refreshInterval: $(this).data('refresh-interval'),
            decimals: $(this).data('decimals')
        }, options);

        // how many times to update the value, and how much to increment the value on each update
        var loops = Math.ceil(settings.speed / settings.refreshInterval),
			increment = (settings.to - settings.from) / loops;

        // references & variables that will change with each update
        var self = this,
			$self = $(this),
			loopCount = 0,
			value = settings.from,
			data = $self.data('countTo') || {};

        $self.data('countTo', data);

        // if an existing interval can be found, clear it first
        if (data.interval) {
            clearInterval(data.interval);
        }
        data.interval = setInterval(updateTimer, settings.refreshInterval);

        // initialize the element with the starting value
        render(value);

        function updateTimer() {
            value += increment;
            loopCount++;

            render(value);

            if (typeof (settings.onUpdate) == 'function') {
                settings.onUpdate.call(self, value);
            }

            if (loopCount >= loops) {
                // remove the interval
                $self.removeData('countTo');
                clearInterval(data.interval);
                value = settings.to;

                if (typeof (settings.onComplete) == 'function') {
                    settings.onComplete.call(self, value);
                }
            }
        }

        function render(value) {
            var formattedValue = settings.formatter.call(self, value, settings);
            $self.html(formattedValue);
        }
    });
};

$.fn.countTo.defaults = {
    from: 0,               // the number the element should start at
    to: 0,                 // the number the element should end at
    speed: 1000,           // how long it should take to count between the target numbers
    refreshInterval: 100,  // how often the element should be updated
    decimals: 0,           // the number of decimal places to show
    formatter: formatter,  // handler for formatting the value before rendering
    onUpdate: null,        // callback method for every time the element is updated
    onComplete: null       // callback method for when the element finishes updating
};

function formatter(value, settings) {
    return value.toFixed(settings.decimals);
}

///*交易额提示*/
$('.show_bid_inf_question').hover(function(){
	$(this).find('.bid_tipbox').show();
},function(){
	$(this).find('.bid_tipbox').hide();
});

// custom formatting example
$('.count-title').data('countToOptions', {
    formatter: function (value, options) {
        return value.toFixed(options.decimals).replace(/\B(?=(?:\d{3})+(?!\d))/g, ',');
    }
});

$('.count-title1').data('countToOptions', {
    formatter: function (value, options) {
        return value.toFixed(options.decimals);
    }
});

// start all the timers
$('.count-title').each(count);
$('.count-title1').each(count);
function count(options) {
    var $this = $(this);
    options = $.extend({}, options || {}, $this.data('countToOptions') || {});
    $this.countTo(options);
}
/**=======================金额数字滚动============End**/ 

//标区页签TAG 方法
invTag()
function invTag() {
    $('.fin-list').find('.tag').mousemove(function () {

        var tabIndex = $(this).attr("tabindex");
        if (tabIndex != null && tabIndex != "undefined") {
            //这里为了可以随便换排序添加tabIndex，为了更新新老兼容
            var _index = $(this).attr("tabindex");
            $('.fin-list').find('.tag').removeClass('selected');
            $(this).addClass('selected');
            $('.p5  .financial-list').hide();
            $('.p5').find('.list-' + _index).show();
        }
        else {
            //老的方式
            var _idnex = $(this).index() + 1;
            $('.fin-list').find('.tag').removeClass('selected');
            $(this).addClass('selected');
            $('.p5  .financial-list').hide();
            $('.p5').find('.list-' + _idnex).show();
        }
    });
    }



// // 右则计算器 STAR
$(function () {
    if ($("body, html").outerWidth() <= 1510) {
        $(".left-banner").hide();
        $("#rightAD").hide();
    }
    $('.left-banner').find('.close').click(function () {
        $(".left-banner .pic").removeAttr("onclick");
        $(this).parentsUntil('.left-banner').animate({
            left: -145
        });
    }); 
    
    //we计划开放倒计时
    fnTimeCountDown();
}) 

/*加载理财小知识 */
function GetBbsNotice() { 
    $.ajax({
        url: "/ajaxCross/ajax_article.ashx",
        dataType: "json",
        async: true,
        data: { Cmd: "GetHomeShowArticle", timespan: Math.random() },
        success: function (json) { 
            if (json != null && json.code == "200") {
                var notices = new Array();
                var strNotice = "";
                for (var i = 0; i < json.list.length; i++) {
                    strNotice = "<li><span class='date'>" + json.list[i].AddDate + "</span>";
                    if (json.list[i].TypeName != "" || json.list[i].TypeName != undefined) {
                        strNotice += "<a href='" + json.list[i].TypeUrl + "' target='_blank' title='" + json.list[i].TypeName + "' class='eare'>【" + json.list[i].TypeName + "】</a>";
                    }
                    strNotice += "<a href='" + json.list[i].Url + "' target='_blank' title='" + json.list[i].Title + "' style=\"max-width:170px!important;\" >" + splitLeftChar(json.list[i].Title, 10) + "</a></li>";
                    notices.push(strNotice);
                } 
                $("#bbsNoticelist").html(notices.join(""));
            } else {
                $("#bbsNoticelist").html("<div style='line-height: 99px;text-align: center;'>加载失败</div>");
            }
        }, error: function () { 
            $("#bbsNoticelist").html("<div style='line-height: 99px;text-align: center;'>加载失败</div>");
        }
    });
}
 
/*加载团贷最新公告*/
function GetNotice() { 
    $.ajax({
        url: "/ajaxCross/ajax_article.ashx",
        dataType: "json",
        async: true,
        data: { Cmd: "GetHomeLastestNews", timespan: Math.random() },
        success: function (json) {
            if (json != null && json.code == "200") {
                $("#Notice").html("<li style=\"height: 44px;\"><a href=\"" + json.url + "\" target=\"_blank\">" + json.title + "</a></li>");
                $("#divNotice").show();
            } else {
                $("#Notice").html("");
            }
        }, error: function () {
            $("#Notice").html("");
        }
    }); 
}

function splitLeftChar(content, len) {
    content = content.replace("...", "");
    if (len > content.Length)
        return content;
    else
        return content.substring(0, len)+"...";
}

function GetBannerHTML() {
    $.ajaxSettings.async = true;
    $.getScript(imageWebsiteUrl + "/BannerHTML/Banner.js", function () {
        var sHtml = bannerHtml();
        $("#slider").html(sHtml).show();
        $("#todayRank").remove();
        $("#yesterdayRank").remove();
        var lenght = $("#slider li").length;
        for (var i = 0; i < lenght; i++) {
            $("#count_li").append("<li></li>");
        } 
        jQuery(".banner-box").slide({ mainCell: ".bd ul", effect: "fold", autoPlay: true, interTime: 5000, delayTime: 1000 });//banner SuperSlide 调用 
    });
}
//重置窗口大小时触发
$(window).resize(function () {
    if ($("body").outerWidth() >= 1510) {
        $(".left-banner").fadeIn();
        $("#rightAD").fadeIn();
    }
    else {
        $(".left-banner").fadeOut(300);
        $("#rightAD").fadeOut(300);
    }
	$("#slider").width($("body").outerWidth());
    $("#slider li").width($("body").outerWidth());
});
/*we计划开放倒计时  start*/
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
    return "<span>" + hour + "</span>小时<span >" + mini + "</span>分<span >" + sec + "</span>秒";
}

function fnTimeCountDown() {
    $(".timeSet").each(function () {
        var timecount = parseInt($(this).attr("count"));
        if (timecount >= 0) {
            $(this).html(dv(timecount));
            if (timecount == 0) {  
                $(this).parent().html("马上加入"); 
            }
            timecount = timecount - 1;
            $(this).attr("count", timecount);
        }
    });   
    setTimeout("fnTimeCountDown()", 1000);
}
/*we计划开放倒计时  end*/

function slideSwitch() {
    var stay = 6;
    var fade = 0.7;
    var msec = 1000;
    var timer = 400;
    var timeout;
    var prev = next = 0;
    var slider = $('#slider');
    var slideindex = true;
    var controls = false;
    var html = '';
    var term = slider.children('li');
    var len = term.length;
    slider.wrap('<div class="slider-items"></div>');
    if (slideindex) {
        if (len > 1) {
            html += '<div class="slider-index">';
            html += '<ol class="items">';
            for (var i = 1; i <= len; i++) {
                html += '<li ' + (i == 1 ? 'class="current"' : '') + '>' + i + '</li>'
            };
            html += '</ol>';
            html += '</div>'
        }
    };
    if (controls) {
        html += '<div class="slider-updown">';
        html += '<a href="#" class="button prev" data-rel="prev">prev</a>';
        html += '<a href="#" class="button next" data-rel="next">next</a>';
        html += '</div>'
    };
    slider.parent('.slider-items').wrap('<div class="slider-wrap"></div>').css({
        'position': 'relative',
        'overflow': 'hidden'
    }).after(html);
    var thumbCont = slider.parent().siblings('.slider-index');
    var thumb = thumbCont.find('li');
    var button = slider.parent().siblings('.slider-updown');
    slider.fadeIn();
    if (len == 1) {
        term.first().fadeIn()
    };
    button.find('.button').bind('click',
    function () {
        var self = $(this).attr('data-rel');
        if (self == 'prev') {
            if (prev == 0) {
                next = len - 1
            } else {
                next = prev - 1
            }
        } else if (self == 'next') {
            if (prev == len - 1) {
                next = 0
            } else {
                next = prev + 1
            }
        };
        autoPlay();
        return false
    });
    thumb.bind('click',
    function () {
        next = thumb.index($(this));
        clearTimeout(timeout);
        changePlay(next);
        if (next == len - 1) {
            next = 0
        } else {
            next++
        }
    });
    slider.hover(function () {
        clearTimeout(timeout)
    },
    function () {
        if (len > 1) {
            timeout = setTimeout(autoPlay, stay * msec)
        }
    });
    var changePlay = function (next) {
        term.eq(prev).fadeOut(fade * msec);
        term.eq(next).fadeIn(fade * msec);
        thumb.removeClass('current');
        thumb.eq(next).addClass('current');
        if (typeof ($('#userGain')[0]) != '') {
            $('#userGain').find('.opacity').css({
                opacity: term.eq(next).attr('data-opacity')
            })
        };
        prev = next
    };
    var autoPlay = function () {

        clearTimeout(timeout);
        changePlay(next);
        next = prev + 1;
        if (next >= len) {
            next = 0
        };
        if (next == 1) {
            timeout = setTimeout(autoPlay, stay * msec * 5);
        }
        else {
            timeout = setTimeout(autoPlay, stay * msec);
        }
        //timeout = setTimeout(autoPlay, stay * msec);
    };
    if (len > 1) {
        autoPlay()
    }
};