$(document).ready(function() {
	
	    $(".show04-title .tabbox ul li").mouseenter(function() {
        $(".show04-title .tabbox ul li").removeClass("current");
        $(this).addClass("current");
        var tabboxeq = $(this).index();
        $(".show04-lcontent").hide();
        $(".show04-lcontent").eq(tabboxeq).show();
    })



    $(window).bind("scroll", function() {
        var sTop = $(window).scrollTop();
        var sTop = parseInt(sTop);
        if (sTop > 65) {
            $(".navbox").addClass("navboxstop");
        } else {
            $(".navbox").removeClass("navboxstop");
        }

    });
    var n = 0;

    function playbanner() {
        if (n == 4) {
            n = 0
        } else {
            n = n + 1;
        }
        $(".tabspan span").removeClass("current");
        $(".tabspan span").eq(n).addClass("current");
        
        $(".bgbox img").hide();
        $(".bgbox img").eq(n).show();
        $(".bannerbox .banner").removeClass("show");
        $(".bannerbox .banner").eq(n).addClass("show");
    }
    var timer = setInterval(playbanner, 2000);

    $(".tabspan").hover(function() {
        clearInterval(timer);
    }, function() {
        timer = setInterval(playbanner, 4000);
    })
    $(".bannerbox").hover(function() {
        clearInterval(timer);
    }, function() {
        timer = setInterval(playbanner, 3000);
    })

    //点击切换
    $(".tabspan span").click(function() {
        n = $(this).index();
        $(".tabspan span").removeClass("current");
        $(this).addClass("current");
        //var url='url(images/banner'+eq+'.png)';
        //$(".topbox").css("background-image",url);
        $(".bgbox img").hide();
        $(".bgbox img").eq(n).show();
        $(".bannerbox .banner").removeClass("show");
        $(".bannerbox .banner").eq(n).addClass("show");
    })

    $(".producthover").mouseenter(function() {
        $(".productnav").css('height', '300px');
    }).mouseleave(function() {
        $(".productnav").css('height', '0px');
    })
     $(".producthover2").mouseenter(function() {
        $(".productnav2").css('height', '300px');
    }).mouseleave(function() {
        $(".productnav2").css('height', '0px');
    })
	$(".solutionhover").mouseenter(function() {
		$(".solutionnav").css('height', '300px');
	}).mouseleave(function() {
		$(".solutionnav").css('height', '0px');
	})

	
    $(".show02-a-a").click(function() {
        $(".show02-a-a").removeClass("show02-a-b");
        $(this).addClass("show02-a-b");
    })
    $(".show03-content ul li").click(function() {
        $(".show03-content ul li").removeClass("current");
        $(this).addClass("current");
        var index = $(this).index();
        var height = index * 60 + 'px';
        $(".show03-content .floatleft span").css('top', height);
        $(".show03-content .floatright div").hide();
        $(".show03-content .floatright div").eq(index).show();
    });
});

 $(document).ready(function() {
        $(window).bind("scroll", function() {
            var scrollT = $(window).scrollTop();

            if (scrollT > 330) {
                $('.artiacl .title').css({
                    'position': "fixed",
                    'top': "70px",
                });

            } else {
                $('.artiacl .title').css({
                    'position': "absolute",
                    'top': "400px",
                });
            }
        });
    });