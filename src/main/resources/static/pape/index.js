
//section3部分动画的实现
(function(){
	
	$('#section3 .wai-kuang .content8').mouseover(function(){
		$(this).addClass('active');
	});
	$('#section3 .wai-kuang .content8').mouseleave(function(){
		$(this).removeClass('active');
	});
	$('#section3 .wai-kuang .content9').mouseover(function(){
		$(this).addClass('active');
	});
	$('#section3 .wai-kuang .content9').mouseleave(function(){
		$(this).removeClass('active');
	});
})()
	
//banner部分动画效果实现1；
function bannerDong(can){
	if(can==1){
		$('#section1 .wai-kuang .content_ndqq').addClass('active');
		$('#section1 .wai-kuang .content_jswm').addClass('active');
		setTimeout(function(){
			$('#section1 .wai-kuang .content_dashuju').addClass('active');
			$('#section1 .wai-kuang .content_gaobingfa').addClass('active');
			$('#section1 .wai-kuang .content_yuncunchu').addClass('active');
		},1000);	
	}else if(can==0){
		$('#section1 .wai-kuang .content_ndqq').removeClass('active');
		$('#section1 .wai-kuang .content_jswm').removeClass('active');
		setTimeout(function(){
			$('#section1 .wai-kuang .content_dashuju').removeClass('active');
			$('#section1 .wai-kuang .content_gaobingfa').removeClass('active');
			$('#section1 .wai-kuang .content_yuncunchu').removeClass('active');
		},1000);
	}
}
//设置banner部分动画2
//function bannerDong1(){
//	$('#section1 .wai-kuang .content_java').addClass('active');
//	$('#section1 .wai-kuang .content_js').addClass('active');
//	$('#section1 .wai-kuang .content_sql').addClass('active');
//	$('#section1 .wai-kuang .content_cdn').addClass('active');
//	$('#section1 .wai-kuang .content_net').addClass('active');
//	$('#section1 .wai-kuang .content_html').addClass('active');
//	setTimeout(function(){
//		$('#section1 .wai-kuang .content_java').removeClass('active');
//		$('#section1 .wai-kuang .content_js').removeClass('active');
//		$('#section1 .wai-kuang .content_sql').removeClass('active');
//		$('#section1 .wai-kuang .content_cdn').removeClass('active');
//		$('#section1 .wai-kuang .content_net').removeClass('active');
//		$('#section1 .wai-kuang .content_html').removeClass('active');
//	},3000);
//}
//设置banner鼠标移入动画

//设置经典案例部分的高度；
function setHeight(){
	var height=document.body.clientWidth;
	if(height<1100){
		$('#section8')[0].style.height=height*0.3+'px';
	}else if(height>1100&&height<1300){
		$('#section8')[0].style.height=height*0.3+'px';
	}else{
		$('#section8')[0].style.height=height*0.3+'px';
	}
	
}

window.onload=function(){
	bannerDong(1);
	setHeight();
}

$(window).scroll(function () {
    setHeight();
    var liuTop=$(window).scrollTop()+150;
//  var viewHeight=document.documentElement.clientHeight;
    
//  var divTop2 = $('#section2')[0].offsetTop;
//  var divHeight2=parseFloat(getComputedStyle($('#section2')[0]).height.split('px')[0]); 
//  if((liuTop>divTop2)&&(liuTop<(divTop2+divHeight2-100))){
//     $('#section2 .wai-kuang .content2').addClass('active'); 
//  }else{
//      $('#section2 .wai-kuang .content2').removeClass('active'); 
//  }
    //section3部分的动画
    var divTop3 = $('#section3')[0].offsetTop;
    var divHeight3=parseFloat(getComputedStyle($('#section3')[0]).height.split('px')[0]); 
    if((liuTop>divTop3)&&(liuTop<(divTop3+divHeight3-100))){
       $('#section3 .wai-kuang .content6').addClass('active'); 
    }else{
        $('#section3 .wai-kuang .content6').removeClass('active'); 
    }
    
    //section6部分的动画
	var divTop6=$('#section6')[0].offsetTop;
 	var divHeight6=parseFloat(getComputedStyle($('#section6')[0]).height.split('px')[0]); 
 	if((liuTop>divTop6)&&(liuTop<(divTop6+divHeight6-100))){
	        $('#section6 .wai-kuang .pxtuanti').addClass('active');
	    }else{
	        $('#section6 .wai-kuang .pxtuanti').removeClass('active');
	    }
    
   	
	//section7部分动画
	var divTop7=$('#section7')[0].offsetTop;
 	var divHeight7=parseFloat(getComputedStyle($('#section7')[0]).height.split('px')[0]); 
 	if((liuTop>divTop7)&&(liuTop<(divTop7+divHeight7-100))){
	        $('#section7 .ten .ten_ins .ten_right p').addClass('active');
	}else{
	        $('#section7 .ten .ten_ins .ten_right p').removeClass('active');
	}
});














