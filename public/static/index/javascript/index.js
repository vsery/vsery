// JavaScript Document
// 加载完成后运行
$(function() {
    $('.loading').fadeOut(); //隐藏加载进度条
    //调用外包分享JS
    with(document) 0[
        (getElementsByTagName('head')[0] || body).appendChild(
            createElement('script')
        ).src = 'http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion=' + ~(-new Date() / 36e5)
    ];
    //滚回到顶部
    $('#Buoy_Top').click(function() {
        $('body,html').animate({
            scrollTop: 0
        }, 2000);
        return false;
    })
    //赞+1
    $('#Praise_but').click(function() {
        if ($(this).attr("disabled") == 'disabled') {
            return;
        } else {
            var num = parseInt($(this).children().text());
            num = num + 1;
            $(this).children().text(num);
            $(this).attr("disabled", "disabled");
        }
    })
    //全屏滚动方法
    $('#dowebok').fullpage({
        //对应板块名
        anchors: ['page1', 'page2', 'page3', 'page4', 'page5'],
        //顶部导航对应
        menu: '#Top_menu',
        css3: true,
        verticalCentered: false,
        slidesNavigation: true,
        easing: 'swing',
        'afterLoad': function(anchorLink, index, slideIndex) {
            if (index == 1) {
                // if (slideIndex == 0) {
                //     $('#Home_one').addClass('active');
                // }
                // if (slideIndex == 1) {
                //     $('#Home_two').addClass('active');
                // }
                // if (slideIndex == 2) {
                //     $('#Home_there').addClass('active');
                // }
            }
            if (index == 3) {
                $('#About').addClass('active');
            }
        }
    });
    //音乐按钮控制
    $('#Music_Control').click(function() {
        var audio = $('#Music')[0];
        if (audio.muted) {
            audio.muted = false;
            $(this).children().removeClass('Pause');
        } else {
            audio.muted = true;
            $(this).children().addClass('Pause');
        }
    });
    //作品按钮切换
    $('#Product_Nav a').click(function() {
        index = $(this).index();
        $('#Product_Nav a').removeClass('active');
        $('#Product_Nav a').each(function(i) {
            if (index == i) {
                $(this).addClass('active');
            }
        });
        index = index + 3;
        $('.fp-slidesNav ul li a').eq(index).trigger('click');
    });
});