
$(function () {    
    $('.ranking-index li.selected').find('img').show();
    $('.column-index li.selected').find('img').show();
    $('.ranking-index').find('li').mouseenter(function () {//排名
        var lD1 = $('.left-d').find('.d1');
        var lD2 = $('.left-d').find('.d2');
        var lD3 = $('.left-d').find('.d3');
        var d1 = $(this).find('.d1').text();
        var d2 = $(this).find('.d2').text();
        var d3 = $(this).find('.d3').text();
        lD1.text(d1);
        lD2.text(d2);
        lD3.text(d3);
        var _index = $(this).index();
        switch (_index) {
            case 0:
                $("#p1").html("<a href=\"/pages/invest_list.aspx\" class=\"font-orange2 font-14 margin-top-15\">去投资提升排名</a>");
                break;
            case 1:
                $("#p1").html("<a href=\"/member/Bank/Recharge.aspx\" class=\"font-orange2 font-14 margin-top-15\">去充值，提升排名</a>");
                break;
            case 2:
                $("#p1").html("<a href=\"/member/project/account_projectweibasic.aspx\" class=\"font-orange2 font-14 margin-top-15\">去借款，提升排名</a>");
                break;
            case 3:
                if (parseFloat(d2.replace("￥", "").replace("元", "")) > 10000) {
                    $("#p1").html("<a href=\"/member/account_touplevel.aspx\" style='color:orange;font-size:13px;line-height:22px;'>您的累计提现太多了，建议开通会员，提现费低至0.1%</a>");
                } else {
                    $("#p1").html("<a href=\"/member/account_touplevel.aspx\" style='color:orange;font-size:13px;line-height:22px;'>开通会员，提现费低至0.1%</a>");
                }
                break;
            case 4:
                $("#p1").html("<span style='color:orange;font-size:13px;line-height:22px;'>感谢您对团贷网做出的贡献</span>");
                break;
        }

        $(this).parent().find('li').removeClass('selected');
        $(this).addClass('selected');
        $(this).parent().find("img").hide();
        $(this).find("img").show();
    });
});

// 路径配置
require.config({
    paths: {
        echarts: '//js.tuandai.com/scripts/echarts'
    }
});
// 资产统计
require(
    [
        'echarts',
        'echarts/chart/pie'
    ],
    function (ec) {
        var myChart = ec.init(document.getElementById('circle'));
        myChart.showLoading({
            text: "图表数据正在努力加载..."
        });
        var option = {
            tooltip: {
                trigger: 'item',
                formatter: "{b}:<br/>{c} ({d}%)"
            },
            legend: {
                show: false,
                orient: 'vertical',
                x: 'right',
                y: 'center',
                data: ['可用金额', '待收本金', '待收利息', '待确认投标', '待确认提现', '剩余活动奖金', '冻结资金']
            },
            calculable: false,
            series: [
                 {
                     type: 'pie',
                     radius: '70%',
                     center: ['50%', '50%'],
                     itemStyle: {
                         normal: {
                             label: {
                                 show: false
                             },
                             labelLine: {
                                 show: false
                             }
                         },
                         emphasis: {
                             label: {
                                 show: true,
                                 position: 'center',
                                 textStyle: {
                                     fontSize: '16',
                                     color: '#fff',
                                     fontFamily: 'microsoft yahei'
                                 }
                             }
                         }
                     },
                     data: [
                        { value: Round2(circledata.avimoney), name: '可用金额' },
                        { value: Round2(circledata.dueamount), name: '待收本金' },
                        { value: Round2(circledata.dueinterest), name: '待收利息' },
                        { value: Round2(circledata.borrowout), name: '待确认投标' },
                        { value: Round2(circledata.withdraw), name: '待确认提现' },
                        { value: Round2(circledata.reward), name: '剩余活动奖金' },
                        { value: Round2(circledata.freeze), name: '冻结资金' }
                    ]
                 }
             ]
        };
        myChart.setOption(option);
        if (parseFloat(circledata.avimoney) <= 0 && parseFloat(circledata.dueamount) <= 0 && parseFloat(circledata.dueinterest) <= 0 && parseFloat(circledata.borrowout) <= 0
                && parseFloat(circledata.withdraw) <= 0 && parseFloat(circledata.reward) <= 0 && parseFloat(circledata.wewaitinvestment) <= 0 && parseFloat(circledata.freeze) <= 0) {
            $("#defaultPic").show();
        } else{
            $("#defaultPic").hide();
        }

        myChart.hideLoading();
    }
);



