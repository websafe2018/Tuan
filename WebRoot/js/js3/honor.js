$(document).ready(function(){

    $('.ap_duo').click(function(){
        $(this).hide();
        $('.ap_shao').show();
        $(this).parent().find('li').removeClass('hidden');
    });
    $('.ap_shao').click(function(){
        $(this).hide();
        $('.ap_duo').show();
        $(this).parent().find('li:gt(8)').addClass('hidden');
    });

})


