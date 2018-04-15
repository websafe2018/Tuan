$(document).ready(function(){
    var curSrc;
    var curNum;
    var num=0;
    var $parent;
    var winW=$(window).width();
    var winH=$(window).height();
    var imgboxW=$('.img-box-warp').width();
    var imgboxH=$('.img-box-warp').height();
    var myleft=(winW-imgboxW)/2;
    var mytop=(winH-imgboxH)/2;
    function into()
    {
        curSrc='';
        curNum=0;
        num=0;
        imgLeft=0;
        imgTop=0;
    }

    listenClick($('.td_license ul li'));

    $('.duo').click(function(){
        $(this).hide();
        $('.shao').show();
        $(this).parent().find('li').removeClass('hidden');
    });
    $('.shao').click(function(){
        $(this).hide();
        $('.duo').show();
        $(this).parent().find('li:gt(5)').addClass('hidden');
    });

    $('.ap_duo').click(function(){
        $(this).hide();
        $('.ap_shao').show();
        $(this).parent().find('li').removeClass('hidden');
    });
    $('.ap_shao').click(function(){
        $(this).hide();
        $('.ap_duo').show();
        $(this).parent().find('li:gt(5)').addClass('hidden');
    });

    function listenClick(obj)
    {
        obj.click(function () {
            into();
            $parent=$(this).parent();
            curSrc=$(this).find('img').attr('src');
            curNum=$(this).index();
            num=$(this).siblings('li').length;
            $('#area-layer').fadeIn(200);
            $('#show-pics').fadeIn(50);
            $('.img-box-warp').css({'left':myleft,'top':mytop});
            showPic();
        });
    }
    function showPic() {
        $('.img-box').find('img').attr("src",curSrc);
        $('.img-box-warp img').css({'left':0,'top':0});
    }

    $('#win-arrow-box').find('.pre').click(function () {
        if (curNum< 0) {
            curNum=num-1;
        } else {
            curNum--;
        }
        curSrc=$parent.find('li').eq(curNum).find('img').attr('src');
        showPic();
    });
    $('#win-arrow-box').find('.next').click(function () {

        if (curNum == num) {
            curNum=0;
        } else {
            curNum++;
        }
        curSrc=$parent.find('li').eq(curNum).find('img').attr('src');
        showPic();
    });

    $('#area-layer').click(function () {
        $('#show-pics').fadeOut(100);
        $('#area-layer').fadeOut(100);
    });
    $('#show-pics .close').click(function () {
        $('#show-pics').fadeOut(100);
        $('#area-layer').fadeOut(100);
    });

})


