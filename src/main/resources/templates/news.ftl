<!DOCTYPE html>
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		
		<title>工信部区块链测试中心-新闻动态</title>
		<meta name="keywords" >
		<meta name="description">
		<link rel="stylesheet" href="./css/reset.css">
		<link rel="stylesheet" type="text/css" href="./css/index.css">
		<link rel="stylesheet" type="text/css" href="./css/aboutus.css">
		<script src="./js/jquery-1.10.1.js" type="text/javascript" charset="utf-8"></script>
		<script type="text/javascript" src="./js/main.js"></script>		
	<body>
<#include "/head.ftl">
	<div class="banner"></div>
		<div class="artiacl">
			<div class="content">
				<div class="title" style="position: absolute; top: 400px;">
					<ul>
						<li class="oho"><a>新闻动态</a></li>						
						<li ><a href="news_h.html">行业动态</a></li>
						<li ><a href="news_y.html">业务动态</a></li>						
					</ul>
				</div>
				<div class="right">
					<div class="ryzz">
						<h2>新闻动态</h2><span class="line"></span>
						<div class="news">		
							<ul>

		    

								<li><a href="">中国评测完成一海通全球供应链电商平台测试</a><span class="time">2015-01-14</span></li>


								<li><a href="">中国评测顺利完成恒丰互联网支付系统第三方支付专题测试</a><span class="time">2015-01-10</span></li>


								<li><a href="">杭州泰易付有限公司支付系统测试顺利完成</a><span class="time">2015-01-08</span></li>

<li><a href="">深圳前海移联科技有限公司支付系统测试首轮测试结束</a><span class="time">2015-01-06</span></li>


								<li><a href="">“基于海量信息处理与数据挖掘技术在医药分开监管系统关键技术”课题验</a><span class="time">2015-01-02</span></li>


								<li><a href="">思科微软联手为数据中心及云计算提供服务</a><span class="time">2014-7-18</span></li>
								
							</ul>

						</div>
						
						<div class="pagebox">
							
							<table width="100%" border="0" align="center" cellpadding="2" cellspacing="0" style="margin:10px 0 10px 0; border:#FF0000 solid 0px;">	
          <tbody><tr>
            <td align="left">页次： <strong>
              1</strong>  / <strong>1</strong> 页</td>
			<td style="float:right;"><a href="" title="首页">
			<font face="webdings" color="#666666">首页</font>			</a>
			<strong><font color="#FF0000">&nbsp;<b>1</b>&nbsp;</font></strong><!--<a href=""><strong><font color="#666666">&nbsp;2&nbsp;</font></strong></a><a href=""><strong><font color="#666666">&nbsp;3&nbsp;</font></strong></a><a href=""><strong><font color="#666666">&nbsp;4&nbsp;</font></strong></a><a href=""><strong><font color="#666666">&nbsp;5&nbsp;</font></strong></a><a href=""><strong><font color="#666666">&nbsp;6&nbsp;</font></strong></a><a href=""><strong><font color="#666666">&nbsp;7&nbsp;</font></strong></a><a href=""><strong><font color="#666666">&nbsp;8&nbsp;</font></strong></a>-->
			<a href="" title="尾页"><font face="webdings" color="#666666">尾页</font></a></td>
          </tr> 
</tbody></table>
							</div>
							
						</div>
					</div>
				</div>
			</div>
        <script>
        $(document).ready(function() {
            var pageCount = 3; //模拟后台总页数											
            //生成分页按钮
            if (pageCount > 5) {
                page_icon(1, 5, 0);
            } else {
                page_icon(1, pageCount, 0);
            }

            //点击分页按钮触发
            $(document).on("click", "#pageGro ul li", function() {
                if (pageCount > 5) {
                    var pageNum = parseInt($(this).html()); //获取当前页数
                    pageGroup(pageNum, pageCount);
                } else {
                    $(this).addClass("ons");
                    $(this).siblings("li").removeClass("ons");
                }

            });
            //点击上一页触发
            $("#pageGro .pageUp").click(function() {
                if (pageCount > 5) {
                    var pageNum = parseInt($("#pageGro li.ons").html()); //获取当前页						
                    pageUp(pageNum, pageCount);
                    console.log(pageNum);
                    //							$("#page").html(pageNum+"/"+pageCount);
                } else {
                    var index = $("#pageGro ul li.ons").index(); //获取当前页
                    if (index > 0) {
                        $("#pageGro li").removeClass("ons"); //清除所有选中
                        $("#pageGro ul li").eq(index - 1).addClass("ons"); //选中上一页
                    }
                }
            });
            //点击下一页触发
            $("#pageGro .pageDown").click(function() {
                if (pageCount > 5) {
                    var pageNum = parseInt($("#pageGro li.ons").html()); //获取当前页
                    pageDown(pageNum, pageCount);
                } else {
                    var index = $("#pageGro ul li.ons").index(); //获取当前页
                    v
                    if (index + 1 < pageCount) {
                        $("#pageGro li").removeClass("ons"); //清除所有选中
                        $("#pageGro ul li").eq(index + 1).addClass("ons"); //选中上一页
                    }
                }
            });
            //点击首页触发
            $("#pageGro .pagefirst").click(function() {
                pageGroup(1, pageCount);
            });

            //点击尾页触发
            $("#pageGro .pagelast").click(function() {
                pageGroup(pageCount, pageCount);
            });

        });

        //点击跳转页面
        function pageGroup(pageNum, pageCount) {
            switch (pageNum) {
                case 1:
                    page_icon(1, 5, 0);
                    break;
                case 2:
                    page_icon(1, 5, 1);
                    break;
                case pageCount - 1:
                    page_icon(pageCount - 4, pageCount, 3);
                    break;
                case pageCount:
                    page_icon(pageCount - 4, pageCount, 4);
                    break;
                default:
                    page_icon(pageNum - 2, pageNum + 2, 2);
                    break;

            }
        }

        //根据当前选中页生成页面点击按钮
        function page_icon(page, count, eq) {
            var ul_html = "";
            for (var i = page; i <= count; i++) {
                ul_html += "<li>" + i + "</li>";
            }
            $("#pageGro ul").html(ul_html);
            $("#pageGro ul li").eq(eq).addClass("ons");
        }

        //上一页
        function pageUp(pageNum, pageCount) {
            switch (pageNum) {
                case 1:
                    break;
                case 2:
                    page_icon(1, 5, 0);
                    break;
                case pageCount - 1:
                    page_icon(pageCount - 4, pageCount, 2);
                    break;
                case pageCount:
                    page_icon(pageCount - 4, pageCount, 3);
                    break;
                default:
                    page_icon(pageNum - 2, pageNum + 2, 1);
                    break;
            }
        }

        //下一页
        function pageDown(pageNum, pageCount) {
            switch (pageNum) {
                case 1:
                    page_icon(1, 5, 1);
                    break;
                case 2:
                    page_icon(1, 5, 2);
                    break;
                case pageCount - 1:
                    page_icon(pageCount - 4, pageCount, 4);
                    break;
                case pageCount:
                    break;
                default:
                    page_icon(pageNum - 2, pageNum + 2, 3);
                    break;
            }

        };
        
        </script>
		<#include "/bottom.ftl">

	</body></html>