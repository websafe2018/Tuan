

//左则导航收收缩
//	$('.left-side').find('dd').hide();
//	$('.left-side').find('dl:first').find('dd').show();
//匹配链接标注a标签
var queryString = location.href.substring(location.href.indexOf());
var queryString = queryString.split('?')[1];  //mark=20&p=2
if(typeof(queryString) != "undefined"){
    queryString = queryString.split('&')[0];  //mark=20
    queryString = queryString.split('#')[0];  //mark=20
    aLength = $('.left-side').find('a').length;
    for (var i = 0; aLength > i; i++) {
        aHref = $('.left-side').find('a').eq(i).attr('href');
        thisHref = aHref.split('?')[1];
        if (thisHref == queryString) {
            $('.left-side').find('a').removeClass('left-selected');
            $('.left-side').find('a').eq(i).addClass('left-selected');
            $('.left-side').find('dl').attr('show', '0');
            $('.left-side').find('dd').hide();
            $('.left-side').find('a').eq(i).parents('dl').attr('show', '1').find('dd').show();
            $('.left-side').find('a').eq(i).parents('dl').find("i").removeClass("left-arrow-down");
            $('.left-side').find('a').eq(i).parents('dl').find("i").addClass("left-arrow-up");
        }
    }
}

//	 /导航收缩
$('.left-side').find('dt').bind('click', function () {
    showNav = $(this).parent().attr('show');
    $('.left-side').find(".shareholder-icon").removeClass('left-arrow-up');
    $('.left-side').find(".shareholder-icon").addClass('left-arrow-down');
    if (showNav == 1) {
        $(this).parent().find('dd').slideUp(200);
        $(this).parents('dl').attr('show', '0');
        $(this).css({ 'border-bottom': 'none' });
        $(this).find('i').removeClass('left-arrow-up');
        $(this).find('i').addClass('left-arrow-down');
    } else {
        $('.left-side').find('dd').hide(200);
        $(this).parent().find('dd').slideDown(200);
        $('.left-side').find('dl').attr('show', '0');
        $(this).parents('dl').attr('show', '1');
        $(this).css({ 'border-bottom': '1px solid #e6e6e6' });
        $(this).find('i').removeClass('left-arrow-down')
        $(this).find('i').addClass('left-arrow-up')
    }
})




