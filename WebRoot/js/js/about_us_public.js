$(function() {

	//左则导航滚动
	//var leftSide = $("#left-side").offset().top;
	//windowScroll();

	function windowScroll() {
		var scrollTop = document.documentElement.scrollTop + document.body.scrollTop;
		if (scrollTop >= leftSide) {
			$("#left-side").css({
				'position': 'fixed',
				'top': '0'
			});
		} else {
			$("#left-side").css({
				'position': 'static'
			});
		}
	}
	$(window).bind("scroll", function() {
		//windowScroll();
	});
	

});