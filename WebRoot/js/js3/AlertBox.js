;(function($)
{
    $.fn.AlertBox=function(data)
    {
        var old={disTop:20,speed:500,who:0};
        var now= $.extend({},old,data);
        return this.each(function()
        {
            var $this=$(this);
            var $box=$('.alertBox');
            var $showWin=$('.alertBox .showWin');
            var $text=$('.alertBox .textWin');
            var showWinWidth=$showWin.width();
            var showWinHeight=$showWin.height();
            var textWinHeight=$text.height();
            var bi=showWinWidth/showWinHeight;
            var padding=parseInt($showWin.css('padding-top'));
            var $imgWin=$('.alertBox .imgWin');
            var $img;
            var num;
            var speed=now.speed;
            var who=now.who;
            var delay=now.delay;
            var $left=$('.alertBox .left-btn');
            var $right=$('.alertBox .right-btn');
            var $close=$('.alertBox .close');
            var $bg=$('.alertBox .bg');


            $box.show();
            getImg();
            setWindow();
            adjustWindow();
            setImgZindex();
            setFirstImg();



            $box.hover(function()
            {
                var useagent=navigator.userAgent;
                var browser=useagent.indexOf('Firefox')>-1;
                var typeThing;

                if(browser)
                {
                    typeThing='DOMMouseScroll';
                }else
                {
                    typeThing='mousewheel';
                }

                $(this).on(typeThing,function(event)
                {
                    event.preventDefault();
                })
            })

            function setWindow()
            {
                var winW=$(window).width();
                var winH=$(window).height();
                var showW=showWinWidth;
                var showH=showWinHeight;
                var myTop=0;
                var myLeft=0;

                if(showH+2*now.disTop>winH)
                {
                    showH=winH-2*now.disTop-padding;
                    showW=showH*bi;
                    myTop=now.disTop;
                }else
                {
                    if(showH<showWinHeight)
                    {
                        showH=winH-2*now.disTop-padding;
                        showW=showH*bi;
                    }else
                    {
                        showH=showWinHeight;
                        showW=showWinWidth;
                    }
                    myTop=(winH-showH-padding)/2;
                }
                $imgWin.css('height',showH-textWinHeight);
                $imgWin.find('img').css({'width':showW,'height':(showH-textWinHeight)});
                myLeft=(winW-showW-padding)/2;
                $showWin.css({'left':myLeft,'top':myTop,'width':showW,'height':showH});
            }
            function adjustWindow()
            {
                $(window).resize(function()
                {
                    setWindow();
                });
            }
            function getImg()
            {
                // $imgWin.append($this.find('img.big').clone()).find('img').removeClass('big');
                $imgWin.append($this.find('img.big').clone()).find('img').removeClass('big');
                $img=$imgWin.find('img');
                num=$img.length;
            }
            function setImgZindex()
            {
                $img.each(function(i)
                {
                    $(this).css('z-index',i);
                });
            }
            function setFirstImg()
            {

                $img.css({'left':$img.width()});
                $img.eq(who).css('left',0);
                $text.html( $img.eq(who).attr('title'));

            }
            function showGo(obj)
            {
                setImgZindex();
                obj.css('z-index',num).siblings().stop(true,true);
                obj.animate({'left':0},speed,function()
                {
                    obj.siblings().css('left',$img.width());
                });
                $text.html(obj.attr('title'));
            }
            $left.click(function()
            {
                who--;
                if(who<0)
                {
                    who=num-1;
                }
                $img.eq(who).css('left',-$img.width());
                showGo($img.eq(who));
            });
            $right.click(function()
            {
                who++;
                if(who>=num)
                {
                    who=0;
                }
                showGo($img.eq(who));
            });
            $close.click(function()
            {
                $box.hide();
                $imgWin.empty();
            });
            $bg.click(function()
            {
                $box.hide();
                $imgWin.empty();
            })
        })
    }

    ///输出每年的title.
    var year = ['2017','2016', '2015', '2014', '2013', '2012', '2011', '2010', '2009'];
    $.each(year, function (index, year) {
        everyYear(year);
        $('.year-' + year).find('.more .hide').click(function () {
            $('.year-' + year).find('.more, .more .show').css({
                'display': 'block'
            });
            $('.year-' + year).find('.more .hide').css({
                'display': 'none'
            });
        });
        $('.year-' + year).find('.more').find('.show').click(function () {
            $('.year-' + year).find('.history-item').show();
        });
        $('.year-' + year).find('.hide').click(function () {
            $('.year-' + year).find('.history-item').hide();
            for (var i = 0; i <= 6; i++) {
                $('.year-' + year).find('.history-item').eq(i).show();
            }
        });
    });

    function everyYear(year) {
        for (var i = 0; i <= 6; i++) {
            $('.year-' + year).find('.history-item').eq(i).show();
            var itemLength = $('.year-' + year).find('.history-item').length;
            if (itemLength >= 7) {
                $('.year-' + year).find('.more, .more .show').css({
                    'display': 'block'
                });
                $('.year-' + year).find('.more .show').click(function () {
                    $('.year-' + year).find('.more, .more .hide').css({
                        'display': 'block'
                    });
                    $('.year-' + year).find('.more .show').css({
                        'display': 'none'
                    });
                });
            }
        }
    }

    //-------------------------------------------------------------------------------
    //	//控制每个item的显示与隐藏
    $('.history-item').find('.title span:first').attr('show','0');
    $('.history-item').eq(0).find('.title span:first').attr('show','1');
    //初始化显示小图
    $('.history-item').eq(0).find('.small').each(function () {
        $(this).attr('src',$(this).attr('data-src'));
    });
    $('.history-item').find('.title span:first').bind('click', function () {
        var mark = $(this).attr('mark');
        $(this).parents('.history-item').siblings().find('.title span:first').attr('show','0');
        if($(this).attr('show')=='0')
        {
            if (mark != 1)
            {
                $('.history-item').find('.pics').stop().slideUp(300);
                $('.history-item').find('.hide-body').stop().slideUp(300);
                $(this).parent().find('.pics').stop().slideDown(300);
                $(this).parent().find('.hide-body').slideDown(300);

                $('.history-item').find('.title span:first').attr('mark', '0').removeClass('selected');;
                $(this).attr('mark', '1').addClass('selected');
            }
            $(this).attr('show','1');
        }else
        {
            $('.history-item').find('.pics').stop().slideUp(300);
            $('.history-item').find('.hide-body').stop().slideUp(300);
            $(this).attr('show','0');
            $(this).attr('mark', '0').removeClass('selected');

        }


    });
    //	初始化所有history-item为隐藏
    $('.history-item').find('.pics').hide();
    $('.history-item:first').find('.pics').show().end().find('span').addClass('selected');
    $('.history-item:first').find('.hide-body').css({
        'display': 'block'
    });

    //点击显示预览图
    $(".history-item").find("div").find("span").click(function () {
        var small_img  = $(this).parent('div').parent('div').find(".small");
        $(small_img).each(function () {
            if ($(this).attr('data-load') != true){
                $(this).attr('src',$(this).attr('data-src'));
                $(this).attr('data-load',true);
            }
        });
    });

    $('.history-item ul li').click(function()
    {
        var images = $(this).parents('.history-item').find(".big");
        for(var i =0; i < images.length ; i++){
            var src = $(images[i]).attr("data-src");
            $(images[i]).attr("src",src);
        }
        $(this).parents('.history-item').AlertBox({who:$(this).index()});
    });
})(jQuery);