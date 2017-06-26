<!DOCTYPE html>
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

		<title>工信部区块链测试中心-区块链监测</title>
		<meta name="keywords">
		<meta name="description">

		<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
		<link rel="stylesheet" href="./css/reset.css">
		<link rel="stylesheet" type="text/css" href="./css/index.css">
		<link rel="stylesheet" type="text/css" href="./css/aboutus.css">
		<link rel="stylesheet" type="text/css" href="css/index2.css" />

		<script src="./js/jquery-1.10.1.js" type="text/javascript" charset="utf-8"></script>
		<script type="text/javascript" src="./js/main.js"></script>
		<script type="text/javascript" src="./js/chart.js"></script>
		<script type="text/javascript" src="js/chart.min.js"></script>
		<script type="text/javascript" src="js/echarts.min.js"></script>
		<script type="text/javascript" src="js/scroll.js"></script>

		<body>
			<#include "/head.ftl">

			<div class="artiacl" style="margin-top: 65px;">
				<div class="content">

					<div class="show04-left floatleft" style="padding: 30px 0 0 0; width: 100%;">
						<div class="show04-title">
							<h1 class="floatleft">BC 监测中心</h1>
							<div class="tabbox floatleft">
								<ul class="floatleft">
									<li class="current">信链</li>
									<li>节点</li>
									<li>状态</li>

								</ul>
							</div>
							<div class="clear"></div>
						</div>
						<div class="show04-lcontent" style="display:block">

							<!-- page content -->
							<div class="right_col magin_left">
								<div class="right_col" role="main">
									<!-- /top tiles -->

									<!-- Nav tabs -->
									<div class="biao">
										BC Blockchain | 信链
									</div>
									<!--  -->
									<div class="row marg">
										<div class="col-md-2 col-sm-5 col-xs-5 wirth">
											<div class="fangzheng"><img src="pape/yunxing.png"></div>
											<div class="fangzhengl ">
												<h5>运行节点数量/总数</h5>
												<p>4<span>/4</span></p>
											</div>
										</div>
										<div class="col-md-2 col-sm-5 col-xs-5 wirth">
											<div class="fangzheng hong"><img src="pape/pingjunshi.png"></div>
											<div class="fangzhengl ">
												<h5>平均建块时间</h5>
												<p>5<span>S</span></p>
											</div>
										</div>
										<div class="col-md-2 col-sm-5 col-xs-5 wirth">
											<div class="fangzheng luu"><img src="pape/pingjunda.png"></div>
											<div class="fangzhengl ">
												<h5>平均块大小</h5>
												<p class="linee">1,<span>0000</span></p>
											</div>
										</div>
										<div class="col-md-2 col-sm-5 col-xs-5 wirth">
											<div class="fangzheng huang"><img src="pape/jiaoyishu.png"></div>
											<div class="fangzhengl ">
												<h5>近一小时交易量</h5>
												<p>4<span></span></p>
											</div>
										</div>
										<div class="col-md-2 col-sm-5 col-xs-5 wirth">
											<div class="fangzheng feng"><img src="pape/kuaishu2.png"></div>
											<div class="fangzhengl ">
												<h5>区块数量</h5>
												<p class="linee">4<span>/4</span></p>
											</div>
										</div>
									</div>

									<div class="row" style="margin-top: 20px; background: #f9f9f9; padding: 10px;">
										<div class="col-md-12 col-sm-12 col-xs-12">
											<div class="dashboard_graph">

												<div class="row x_title">
													<div class="col-md-12 col-sm-12 col-xs-12">
														<div class="col-md-12 col-sm-12 col-xs-12">
															<div class="lu"></div>
															<h5 id="lgn">时间间隔交易量</h5>
														</div>
														<div class="col-md-12 col-sm-12 col-xs-12">
															<div class="lui"></div>
															<h5 id="lgn">时间间隔建块个数</h5>
														</div>

													</div>
												</div>

												<div class="col-md-12 col-sm-12 col-xs-12">
													<div id="placeholder" style="height: 260px; display: none" class="demo-placeholder"></div>
													<div style="width: 100%;" class="candiv">
														<div>
															<canvas id="canvas" height="27" width="100%"></canvas>
														</div>
													</div>
												</div>
												<div class="clearfix"></div>

											</div>
										</div>

									</div>
									<br />

									<div class="row" style="margin-top: 20px; background: #f9f9f9; padding: 10px;">
										<div class="col-md-12 col-sm-12 col-xs-12">
											<div class="dashboard_graph">
												<div class="col-md-12 col-sm-12 col-xs-12">
													<div id="placeholder" style="height: 260px; display: none" class="demo-placeholder"></div>
													<div style="width: 100%;">
														<div>
															<canvas id="canvas1" height="27" width="100%"></canvas>
														</div>
													</div>
												</div>
												<div class="clearfix"></div>

											</div>
										</div>

									</div>
									<br />

								</div>
							</div>
							<!-- /page content -->

						</div>
						<div class="show04-lcontent">
							<!-- page content -->
							<div class="right_col magin_left">
								<div class="right_col">
									<!-- /top tiles -->

									<!-- Nav tabs -->
									<div class="biao">
										BC Blockchain | 节点
									</div>

									<div id="xt-right">
										<div class="xt-table2 xt-tablew">
											<table cellpadding="0" cellspacing="0" border="0" bgcolor="#dcdcdc" width="100%">
												<tr>
													<th>节点名</th>
													<th>节点IP</th>
													<th>存活</th>
													<th>节点操作</th>
												</tr>
												<tr>
													<td>node1</td>
													<td>http://192.168.0.91:9090</td>
													<td><span class="jiesi"></span></td>
													<td><a href="#" class="btn btn-success">开始</a>&nbsp; &nbsp;<a href="#" class="btn sancu">删除</a></td>
												</tr>
												<tr>
													<td>node2</td>
													<td>http://192.168.0.92:9090</td>
													<td><span class="jiewen"></span></td>
													<td><a href="#" class="btn btn-warning">停止</a>&nbsp; &nbsp;<a href="#" class="btn sancu">删除</a></td>
												</tr>
												<tr>
													<td>node2</td>
													<td>http://192.168.0.93:9090</td>
													<td><span class="jiezheng"></span></td>
													<td><a href="#" class="btn btn-warning">停止</a>&nbsp; &nbsp;<a href="#" class="btn sancu">删除</a></td>
												</tr>

											</table>
										</div>
									</div>

									<div class="tianjia col-lg-12 ">
										<div id="tawen" class="col-lg-9">
											节点添加
										</div>
										<div id="tawen1" class="col-lg-3 col-md-offset-0">
											<a href="#" class="btn btn-toggle " data-toggle="modal" data-target="#myModal1">添加</a>
										</div>
									</div>

								</div>
							</div>

						</div>
						<div class="show04-lcontent">

							<div>
								<div class="biao">
									区块链
								</div>

								<!-- /top tiles -->
								<div class="col-md-7 col-sm-7 col-xs-12">

									<div class="col-md-12 col-sm-12 col-xs-12" style="margin-top: 40px;background: #fff; ">

										<div id="candiv1" style="height: 260px; width: 650px; ">

										</div>
									</div>

									<div class="clearfix"></div>
									<div class="col-md-12 col-sm-12 col-xs-12" style="margin-top: 40px; background: #fff;">

										<div id="candiv" style="height: 260px;width: 650px;"></div>
									</div>
									<div class="clearfix"></div>

								</div>
								<div class="col-md-5 col-sm-5 col-xs-12" style="margin-top: 40px;">
									<div class="col-md-12 col-sm-12 col-xs-12 " id="kuaizhang">640</div>
									<div class="col-md-12 col-sm-12 col-xs-12" id="biaogeid">
										<div class="col-md-2 col-sm-2 col-xs-2 ">ID</div>
										<div class="col-md-2 col-sm-2 col-xs-2 ">前ID</div>
										<div class="col-md-2 col-sm-2 col-xs-2 ">深度</div>
										<div class="col-md-2 col-sm-2 col-xs-2 ">时间戳</div>
										<div class="col-md-2 col-sm-2 col-xs-2 ">HASH</div>
									</div>
									<div class="bcon" style="background: #fff;">
										<h2 style="opacity:0;">...</h2>
										<!-- 代码开始 -->
										<div class="list_lh">
											<ul id="dvmq">
												<li>
													<div class="col-md-12 col-sm-12 col-xs-12 biaogeidnei">
														<div class="col-md-2 col-sm-2 col-xs-2 ">15</div>
														<div class="col-md-2 col-sm-2 col-xs-2 ">151</div>
														<div class="col-md-2 col-sm-2 col-xs-2 ">10</div>
														<div class="col-md-2 col-sm-2 col-xs-2 ">12826</div>
														<div class="col-md-2 col-sm-2 col-xs-2 ">C105858253</div>
													</div>
												</li>
												<li>
													<div class="col-md-12 col-sm-12 col-xs-12 biaogeidnei">
														<div class="col-md-2 col-sm-2 col-xs-2 ">12</div>
														<div class="col-md-2 col-sm-2 col-xs-2 ">11</div>
														<div class="col-md-2 col-sm-2 col-xs-2 ">9</div>
														<div class="col-md-2 col-sm-2 col-xs-2 ">1435362826</div>
														<div class="col-md-2 col-sm-2 col-xs-2 ">C858253</div>
													</div>
												</li>
												<li>
													<div class="col-md-12 col-sm-12 col-xs-12 biaogeidnei">
														<div class="col-md-2 col-sm-2 col-xs-2 ">152</div>
														<div class="col-md-2 col-sm-2 col-xs-2 ">1</div>
														<div class="col-md-2 col-sm-2 col-xs-2 ">7</div>
														<div class="col-md-2 col-sm-2 col-xs-2 ">162826</div>
														<div class="col-md-2 col-sm-2 col-xs-2 ">C1858253</div>
													</div>
												</li>
												<li>
													<div class="col-md-12 col-sm-12 col-xs-12 biaogeidnei">
														<div class="col-md-2 col-sm-2 col-xs-2 ">1</div>
														<div class="col-md-2 col-sm-2 col-xs-2 ">11</div>
														<div class="col-md-2 col-sm-2 col-xs-2 ">7</div>
														<div class="col-md-2 col-sm-2 col-xs-2 ">166</div>
														<div class="col-md-2 col-sm-2 col-xs-2 ">C58253</div>
													</div>
												</li>
												<li>
													<div class="col-md-12 col-sm-12 col-xs-12 biaogeidnei">
														<div class="col-md-2 col-sm-2 col-xs-2 ">2</div>
														<div class="col-md-2 col-sm-2 col-xs-2 ">1</div>
														<div class="col-md-2 col-sm-2 col-xs-2 ">8</div>
														<div class="col-md-2 col-sm-2 col-xs-2 ">62826</div>
														<div class="col-md-2 col-sm-2 col-xs-2 ">C5858253</div>
													</div>
												</li>
												<li>
													<div class="col-md-12 col-sm-12 col-xs-12 biaogeidnei">
														<div class="col-md-2 col-sm-2 col-xs-2 ">2</div>
														<div class="col-md-2 col-sm-2 col-xs-2 ">1</div>
														<div class="col-md-2 col-sm-2 col-xs-2 ">7</div>
														<div class="col-md-2 col-sm-2 col-xs-2 ">15362826</div>
														<div class="col-md-2 col-sm-2 col-xs-2 ">C105858253</div>
													</div>
												</li>
												<li>
													<div class="col-md-12 col-sm-12 col-xs-12 biaogeidnei">
														<div class="col-md-2 col-sm-2 col-xs-2 ">5</div>
														<div class="col-md-2 col-sm-2 col-xs-2 ">1</div>
														<div class="col-md-2 col-sm-2 col-xs-2 ">7</div>
														<div class="col-md-2 col-sm-2 col-xs-2 ">1435362826</div>
														<div class="col-md-2 col-sm-2 col-xs-2 ">C105858253</div>
													</div>
												</li>
												<li>
													<div class="col-md-12 col-sm-12 col-xs-12 biaogeidnei">
														<div class="col-md-2 col-sm-2 col-xs-2 ">2</div>
														<div class="col-md-2 col-sm-2 col-xs-2 ">151</div>
														<div class="col-md-2 col-sm-2 col-xs-2 ">7</div>
														<div class="col-md-2 col-sm-2 col-xs-2 ">1435362826</div>
														<div class="col-md-2 col-sm-2 col-xs-2 ">C105858253</div>
													</div>
												</li>
												<li>
													<div class="col-md-12 col-sm-12 col-xs-12 biaogeidnei">
														<div class="col-md-2 col-sm-2 col-xs-2 ">1</div>
														<div class="col-md-2 col-sm-2 col-xs-2 ">151</div>
														<div class="col-md-2 col-sm-2 col-xs-2 ">5</div>
														<div class="col-md-2 col-sm-2 col-xs-2 ">1435362826</div>
														<div class="col-md-2 col-sm-2 col-xs-2 ">C1253</div>
													</div>
												</li>
												<li>
													<div class="col-md-12 col-sm-12 col-xs-12 biaogeidnei">
														<div class="col-md-2 col-sm-2 col-xs-2 ">12</div>
														<div class="col-md-2 col-sm-2 col-xs-2 ">151</div>
														<div class="col-md-2 col-sm-2 col-xs-2 ">7</div>
														<div class="col-md-2 col-sm-2 col-xs-2 ">12826</div>
														<div class="col-md-2 col-sm-2 col-xs-2 ">C1053</div>
													</div>
												</li>
												<li>

													<p><span>...</span></p>
												</li>

											</ul>
										</div>

									</div>

								</div>

							</div>

						</div>
					</div>

				</div>
			</div>

			<div style="clear: both;"></div>
			
            
            <#include "/bottom.ftl">

			<script>
				window.onload = function() {
					var ctx = document.getElementById("canvas").getContext("2d");
					ctx.fillRect(1, 1, 2, 2);
				};
				var randomScalingFactor = function() {
					return Math.round(Math.random() * 20)
				};
				var lineChartData = {
					labels: ["0", "1", "2", "3", "4", "5", "6"],
					datasets: [{
						label: "My First dataset",
						fillColor: "rgba(168,227,215,0.5)",
						strokeColor: "rgba(168,227,215,1)",
						pointColor: "rgba(168,227,215,1)",
						pointStrokeColor: "#fff",
						pointHighlightFill: "#fff",
						pointHighlightStroke: "rgba(168,227,215,1)",
						data: [randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor()]
					}, {
						label: "My Second dataset",
						fillColor: "rgba(154,188,195,0.5)",
						strokeColor: "rgba(154,188,195,1)",
						pointColor: "rgba(154,188,195,1)",
						pointStrokeColor: "#fff",
						pointHighlightFill: "#fff",
						pointHighlightStroke: "rgba(154,188,195,1)",
						data: [randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor()]
					}]
				}
				var ctx = document.getElementById("canvas").getContext("2d");
				window.myLine = new Chart(ctx).Line(lineChartData, {
					responsive: true
				});
				window.onload = function() {
					var ctx1 = document.getElementById("canvas1").getContext("2d");
					ctx1.fillRect(10, 10, 20, 20);
				};
				var randomScalingFactor = function() {
					return Math.round(Math.random() * 100)
				};
				var barChartData = {
					labels: ["node1", "node2", "node3", "node4", "node5", "node6", "node7"],
					datasets: [{
						fillColor: "rgba(220,220,220,0.5)",
						strokeColor: "rgba(220,220,220,0.8)",
						highlightFill: "rgba(220,220,220,0.75)",
						highlightStroke: "rgba(220,220,220,1)",
						data: [randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor()]
					}, ]
				}
				window.onload = function() {
					var ctx1 = document.getElementById("canvas1").getContext("2d");
					window.myBar = new Chart(ctx1).Bar(barChartData, {
						responsive: true
					});
				}
			</script>

			<script>
				$(document).ready(function() {
					$('.list_lh li:even').addClass('lieven');
					$("div.list_lh").myScroll({
						speed: 40, //数值越大，速度越慢
						rowHeight: 68 //li的高度
					});
				})
				// 基于准备好的dom，初始化echarts实例
				var myChart = echarts.init(document.getElementById('candiv'));
				// 指定图表的配置项和数据
				option = {
					title: {
						text: '区块组成'
					},
					tooltip: {
						trigger: 'axis'
					},
					legend: {
						data: ['交易链', '用户连', '视频链', '区块链']
					},
					toolbox: {
						feature: {
							saveAsImage: {}
						}
					},
					grid: {
						left: '3%',
						right: '4%',
						bottom: '3%',
						containLabel: true
					},
					xAxis: [{
						type: 'category',
						boundaryGap: false,
						data: ['2016-09-21', '2016-10-31', '2016-12-22']
					}],
					yAxis: [{
						type: 'value'
					}],
					dataZoom: [{ // 这个dataZoom组件，默认控制x轴。
						type: 'slider', // 这个 dataZoom 组件是 slider 型 dataZoom 组件
						start: 10, // 左边在 10% 的位置。
						end: 60 // 右边在 60% 的位置。
					}],
					series: [{
							name: '交易链',
							type: 'line',
							stack: '总量',
							areaStyle: {
								normal: {}
							},
							data: [1, 0, 1]
						}, {
							name: '用户连',
							type: 'line',
							stack: '总量',
							areaStyle: {
								normal: {}
							},
							data: [2, 0, 1]
						}, {
							name: '视频链',
							type: 'line',
							stack: '总量',
							areaStyle: {
								normal: {}
							},
							data: [5, 0, 4]
						}, {
							name: '区块链',
							type: 'line',
							stack: '总量',
							areaStyle: {
								normal: {}
							},
							data: [3, 0, 2]
						},
					]
				};
				// 使用刚指定的配置项和数据显示图表。
				myChart.setOption(option);
				var myChart2 = echarts.init(document.getElementById('candiv1'));
				option1 = {
					title: {
						text: '数据接入量'
					},
					tooltip: {
						trigger: 'axis'
					},
					legend: {
						data: ['日接入量', '日上传量']
					},
					toolbox: {
						feature: {
							saveAsImage: {}
						}
					},
					grid: {
						left: '3%',
						right: '4%',
						bottom: '3%',
						containLabel: true
					},
					xAxis: [{
						type: 'category',
						boundaryGap: false,
						data: ['2016-09-21', '2016-10-31', '2016-12-22']
					}],
					yAxis: [{
						type: 'value'
					}],
					series: [{
							name: '日接入量',
							type: 'line',
							areaStyle: {
								normal: {}
							},
							data: [12.5, 3, 2.8]
						}, {
							name: '日上传量',
							type: 'line',
							areaStyle: {
								normal: {}
							},
							data: [25.1, 6.3, 3.1]
						},
					]
				};
				myChart2.setOption(option1);
			</script>

		</body>

</html>