$(function ()
{
    $.ajax({
        async: false,
        type: "get",
        url: '/member/usercontrol/InvestRecordHeader.aspx',
        success: function (data) {
            //if ($("#bindBankWindows").length > 0) {
            //    //$("#bindBankWindows,#diallayer").remove();
            //    $("#bindBankWindows").prev("#diallayer").remove();
            //    $("#bindBankWindows").remove();
            //}
            $("#div_box").append(data);

        },
        cache: false
    });
});