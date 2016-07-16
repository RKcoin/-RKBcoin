<%@ page import="com.cx.util.PublicFunc" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0044)http://www.lixiangbi.com/service/ourService.do -->
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

		<title>3481.17- 最专业的掘金国中国交易平台</title>
		<meta name="description"
			content="bttcoin是中国最专业的交易平台,我们采用ssl、冷存储、gslb、分布式服务器等先进技术，确保交易的安全、快捷、稳定。充值实时到账为您提供最好的交易体验。打造最专业的中国交易平台">
		<meta name="keywords"
			content=",交易,中国,中国交易平台,交易平台,行情,交易,买,bitcoin,btc,汇兑,交易,交易所">
		<meta name="Author" content="bttcoin">
		<meta name="Copyright" content="bttcoin.com 版权所有">
		<link rel="icon" href="http://www.bttcoin.com/favicon.ico"
			type="image/x-icon">
		<link rel="shortcut icon" href="http://www.bttcoin.com/favicon.ico"
			type="image/x-icon">
		<link href="css/coincommon_v1.css" rel="stylesheet" type="text/css"
			media="screen, projection">
		<link href="css/jquery-ui.css" rel="stylesheet" type="text/css"
			media="screen, projection">
		<link href="css/service.css" rel="stylesheet" type="text/css"
			media="screen, projection">
		<style type="text/css"></style>
	</head>

	<body>



		<div class="blind" style="top: 0px;" id="blind">
			<div class="bigchart" id="handleChart" style="display: none;">
				<input type="hidden" id="marketFromChart">
				<input type="hidden" id="kvision" value="1">
				<div class="bigchartBar">

					<div class="webtitle">

						<ul>
							<li id="LccoinTitle" class="cur">
								<a href="javascript:showKLine(0,3);"><span>Lccoin BTC</span>
								</a>
							</li>
							<li id="LccoinLtcTitle" class="">
								<a href="javascript:showKLine(3,3);"><span>Lccoin LTC</span>
								</a>
							</li>
							<li id="bitstampTitle" class="">
								<a href="javascript:showKLine(4,3);"><span>BitStamp</span>
								</a>
							</li>

							<li id="btcChinaTitle" class="" style="display: none"></li>
							<li id="btceTitle" class="" style="display: none"></li>

						</ul>

					</div>
					<div class="time">
						<div id="oldLineTime">
							<ul style="padding-right: 40px;">
								<li id="minuteTitle" onclick="javascript:showKLineType(1);"
									class="">
									<a href="javascript:void(0);">5分钟</a>
								</li>
								<li id="dayTitle" onclick="javascript:showKLineType(3);"
									class="cur">
									<a href="javascript:void(0);">日</a>
								</li>
								<li id="weekTitle" onclick="javascript:showKLineType(4);"
									class="" style="display: none;">
									<a href="javascript:void(0);">周</a>
								</li>
							</ul>
						</div>
						<span><a class="out" href="javascript:void(0);"
							onclick="javascript:handleChart();"><img
									src="images/delete_n.png" alt="Lccoin">
						</a>
						</span>
					</div>
				</div>
				<div style="width: 100%; height: 365px;" id="bannerLineOld">
					<div id="containerChart" style="height: 365px; max-width: 100%">
						<div id="klineLoading" style="top: 150px; position: relative;">
							<img src="images/loading.gif">
						</div>
					</div>
				</div>

			</div>
		</div>

		<div class="nav1 clear" id="nav1">
			<div class="nav1-sub clear">
				<div class="nav-quick1">
					<a href="javascript:void(0);" onclick="javascript:handleChart();"
						title="" class="">&nbsp;</a>
				</div>
				<ul style="float: center; padding-left: 50px;">
					<li class="price white">
						<span>最新成交价</span>
					</li>
					<li class="price white">
						BTC : ￥
						<span id="bannerBtcLast">3481.17</span>
					</li>
					<li class="price white">
						LTC : ￥
						<span id="bannerLtcLast">95.39</span>
					</li>
					<li class="price white" style="padding-left: 10px;">
						<span>24小时成交量</span>
					</li>
					<li class="price white">
						BTC :
						<span id="bannerBtcVol">58774.99</span>฿
					</li>
					<li class="price white">
						LTC:
						<span id="bannerLtcVol">2893236.40</span>Ł
					</li>
				</ul>
				<div class="nav-quick">
					<div class="rightArea">

						<span id="accountlink" class="welcome">欢迎您,&nbsp;&nbsp; <span
							id="accountlinkBlock"> <font color="orange">beidong0</font>
								<a class="triangle"><img src="images/triangle.png">
							</a> </span> </span>
						<div id="accountpop" class="accountpop">
							<div class="mycoinmenu">
								<div class="clear">
									<ul>
										<li class="">
											<dl class="">
												<dt class="fwq trade">
													交&nbsp;易
												</dt>
												<dd>
													<a href="###" class="">BTC交易</a>
												</dd>
												<dd>
													<a href="###" class="">LTC交易</a>
												</dd>
												<dd>
													<a href="###" class="">委托管理</a>
												</dd>
												<dd>
													<a href="###" class="">计划委托</a>
												</dd>
												<dd>
													<a href="###" class="">融资融币</a>
												</dd>
											</dl>
										</li>
										<li>
											<dl class="">
												<dt class="fwq acountManage">
													帐户管理
												</dt>
												<dd>
													<a href="###" class="">人民币充值</a>
												</dd>
												<dd>
													<a href="###" class="">人民币提现</a>
												</dd>
												<dd>
													<a href="###" class="">Btc/Ltc充值</a>
												</dd>
												<dd>
													<a href="###" class="">Btc/Ltc提现</a>
												</dd>
												<dd>
													<a href="###" class="">账单明细</a>
												</dd>
												<dd>
													<a href="###" class="">我的积分</a>
												</dd>
											</dl>
										</li>
										<li class="">
											<dl class="">
												<dt class="fwq basicSetting">
													基本设置
												</dt>
												<dd>
													<a href="###" class="">安全中心</a>
												</dd>
												<dd>
													<a href="###" class="">账户信息</a>
												</dd>
											</dl>
										</li>
										<li class="">
											<dl class="">
												<dt class="fwq questionAnswer1">
													OK小助手
												</dt>
												<dd>
													<a href="###" class="">发起提问</a>
												</dd>
												<dd>
													<a href="###" class="">问题列表</a>
												</dd>
											</dl>
										</li>
										<li class="">
											<dl class="">
												<dt>
													<span class="fwq"><a class="lightblue2" href="###">退出</a>
													</span>
												</dt>
											</dl>
										</li>
									</ul>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>

		<div class="nav_bg2" id="nav_bg2">
			<div class="head clear">
				<div class="loaded-logo1">
					<a href="###"> <img alt="Lccoin" src="images/logo.png"
							width="193" height="59"> </a>
				</div>
				<div class="accountinfo1">
					<div class="nav2-up1">

						<ul>
							<li>
								<span class="gray2 fontsize-12">可用</span>
							</li>
							<li class="text">
								<span class="gray2">CNY:</span><span class="money lightblue5">0</span>&nbsp;&nbsp;&nbsp;
								<a href="###" class=""><span class="finbutton">&nbsp;</span>
								</a>
							</li>
							<li class="text">
								<span class="gray2">BTC:</span><span class="money lightblue5">0</span>
							</li>
							<li class="text">
								<span class="gray2">LTC:</span><span class="money lightblue5">0</span>
							</li>
							<li class="frozen">
								<span class="gray2 fontsize-12">冻结</span>
							</li>
							<li class="text">
								<span class="gray2">CNY:</span><span class="money gray1">0</span>
							</li>
							<li class="text">
								<span class="gray2">BTC:</span><span class="money gray1">0</span>
							</li>
							<li class="text">
								<span class="gray2">LTC:</span><span class="money gray1">0</span>
							</li>
						</ul>

					</div>
					<div class="nav2-center">
						<ul>
							<li class="frozen">

								<span>净资产:</span><span class="lightblue5 clearMoney">0</span>
								<a id="totalAssets" class="totalAssets"> <span
									class="white fontsize-12">总资产:</span> <span class="money white">0</span>
									<span class="controlDown" id="controlUpDown"></span> </a>
								<div id="totalAssetsTable" class="totalAssetsTable"
									style="display: none;">
									<table>
										<tbody>
											<tr>
												<th width="70"></th>
												<th width="60"></th>
												<th width="150"></th>
												<th width="130"></th>
												<th width="135"></th>
											</tr>
											<tr>
												<td class="totalTitle" rowspan="4">
													交易账户
												</td>
												<td class="title" colspan="2">
													<span>交易账户净资产:</span>
													<span class="lightblue2">0</span>
												</td>
												<td class="title" colspan="2">
													<span>交易账户总资产:</span>
													<span class="lightblue2">0</span>
												</td>
											</tr>
											<tr>
												<td class="title gray3">
													可&nbsp;&nbsp;&nbsp;用
												</td>
												<td>
													<span>CNY:</span>
													<span class="lightgreen5">0</span>
												</td>
												<td>
													<span>BTC:</span>
													<span class="lightgreen5">0</span>
												</td>
												<td>
													<span>LTC:</span>
													<span class="lightgreen5">0</span>
												</td>
											</tr>
											<tr>
												<td class="title gray3">
													冻&nbsp;&nbsp;&nbsp;结
												</td>
												<td>
													<span>CNY:</span>
													<span class="gray1">0</span>
												</td>
												<td>
													<span>BTC:</span>
													<span class="gray1">0</span>
												</td>
												<td>
													<span>LTC:</span>
													<span class="gray1">0</span>
												</td>
											</tr>
											<tr>
												<td class="title gray3">
													已借款
												</td>
												<td>
													<span>CNY:</span>
													<span class="lightorange1">0</span>
												</td>
												<td>
													<span>BTC:</span>
													<span class="lightorange1">0</span>
												</td>
												<td>
													<span>LTC:</span>
													<span class="lightorange1">0</span>
												</td>
											</tr>
											<tr>
												<td class="totalTitle topBorder" rowspan="4">
													放款账户
												</td>
												<td class="title topBorder" colspan="4">
													<span>放款账户总资产:</span>
													<span class="lightblue2">0</span>
												</td>
											</tr>
											<tr>
												<td class="title gray3">
													可放款
												</td>
												<td class="">
													<span>CNY:</span>
													<span class="lightgreen5">0</span>
												</td>
												<td class="">
													<span>BTC:</span>
													<span class="lightgreen5">0</span>
												</td>
												<td class="">
													<span>LTC:</span>
													<span class="lightgreen5">0</span>
												</td>
											</tr>
											<tr>
												<td class="title gray3">
													冻&nbsp;&nbsp;&nbsp;结
												</td>
												<td>
													<span>CNY:</span>
													<span class="gray1">0</span>
												</td>
												<td>
													<span>BTC:</span>
													<span class="gray1">0</span>
												</td>
												<td>
													<span>LTC:</span>
													<span class="gray1">0</span>
												</td>
											</tr>
											<tr>
												<td class="title gray3">
													已借出
												</td>
												<td>
													<span>CNY:</span>
													<span class="lightorange1">0</span>
												</td>
												<td>
													<span>BTC:</span>
													<span class="lightorange1">0</span>
												</td>
												<td>
													<span>LTC:</span>
													<span class="lightorange1">0</span>
												</td>
											</tr>
										</tbody>
									</table>
								</div>

							</li>
						</ul>
					</div>
					<div class="nav2-sub1 clear">
						<ul class="menu">
							<li class="">
								<a href="###" title="首页"> <span class="">首&nbsp;&nbsp;&nbsp;&nbsp;页</span>
								</a>
							</li>
							<li class="btc-trade ">
								<a href="###" title="交易中心"><span>Btc/Ltc交易中心</span>
								</a>
							</li>
							<li class="">
								<a href="###" title="实时行情"><span>实时行情</span>
								</a>
							</li>
							<li class="cur">
								<a href="ourService.html" title="最新动态"><span>最新动态</span>
								</a>
							</li>
							<li class="">
								<a href="###" title="关于我们"><span>关于我们</span>
								</a>
							</li>
							<li class="">
								<a href="###" title="讨论区"><span>讨论区</span>
								</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="ourservice">
			<img src="images/service_big.gif">
			<div style="width: 980px; margin: 0 auto;">
				<div class="newDynamic">
					<span class="title">最新动态</span>
					<ul>

						<li>
							<span class="spanOne"> <a class="lightblue3 fontsize-14"
								href="###">关于3月21日“谣言事件”说明及风险提示 </a> </span>
							<span class="spanTwo">2014-03-22 20:19:24</span>
						</li>

						<li>
							<span class="spanOne"> <a class="lightblue3 fontsize-14"
								href="###">关于“央行支付系统维护、暂停跨行转账业.. </a> </span>
							<span class="spanTwo">2014-03-21 22:10:57</span>
						</li>

						<li>
							<span class="spanOne"> <a class="lightblue3 fontsize-14"
								href="###">、莱特币提现可自定义矿工确认手续.. </a> </span>
							<span class="spanTwo">2014-03-20 21:32:26</span>
						</li>

						<li>
							<span class="spanOne"> <a class="lightblue3 fontsize-14"
								href="###">Lccoin完成A轮千万美金融资 </a> </span>
							<span class="spanTwo">2014-03-17 11:55:00</span>
						</li>

						<li>
							<span class="spanOne"> <a class="lightblue3 fontsize-14"
								href="###">Lccoin莱特币网络确认手续费下调至0.001.. </a> </span>
							<span class="spanTwo">2014-03-15 22:05:51</span>
						</li>

						<li class="borderbottom">
							<span class="spanOne"> <a class="lightblue3 fontsize-14"
								href="###">Lccoin联合比特方舟举办首届操盘者大赛，..</a> </span>
							<span class="spanTwo">2014-03-15 15:40:23</span>
						</li>

					</ul>
				</div>
				<div class="serviceTarget">
					<span class="title">我们的服务指标</span>
					<div class="specificTarget">
						<ul class="rightDistance">
							<li>
								<span class="fontsize-16 bold">BTC/LTC交易</span>
							</li>
							<li style="line-height: 83px;">
								<span class="lightorange1 fontsize-20 bold">0手续费</span>
							</li>
							<li>
								<span class="gray">(服务时间:7*24小时)</span>
							</li>
						</ul>
						<ul>
							<li>
								<span class="fontsize-16 bold">人民币充值</span>&nbsp;&nbsp;
								<span class="gray">需填写正确信息</span>
							</li>
							<li>
								<span>收到汇款后</span>&nbsp;&nbsp;
								<span class="lightorange1 fontsize-20 bold">20分钟</span>&nbsp;&nbsp;
								<span>到账</span>
							</li>
							<li>
								<span class="lightorange1 fontsize-20 bold">0手续费</span>
							</li>
							<li>
								<span class="gray">(服务时间:7*24小时)</span>
							</li>
						</ul>
						<ul class="rightDistance">
							<li>
								<span class="fontsize-16 bold">人民币提现</span>
							</li>
							<li>
								<span class="lightorange1 fontsize-20 bold">24小时</span>&nbsp;&nbsp;
								<span>到账</span>
							</li>
							<li>
								<span class="lightorange1 fontsize-20 bold">0.4%手续费</span>
							</li>
							<li>
								<span class="gray">(服务时间:9:00----次日1:00)</span>
							</li>
						</ul>
						<ul>
							<li>
								<span class="fontsize-16 bold">BTC/LTC提现</span>
							</li>
							<li>
								<span class="lightorange1 fontsize-20 bold">5分钟</span>&nbsp;&nbsp;
								<span>自动提现</span>
							</li>
							<li>
								<span class="lightorange1 fontsize-20 bold">0手续费</span>
							</li>
							<li>
								<span class="gray">(服务时间:7*24小时自动处理)</span>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<div style="float: right; padding-right: 20px;">

				<div class="page">
					<ul>
						<!-- 上一页 -->


						<li>
							<a href="javascript:void(0)" class="current_ss"
								style="color: #FFFFFF;">1</a>
						</li>

						<li>
							<a href="###">2</a>
						</li>

						<li>
							<a href="###">3</a>
						</li>

						<li>
							<a href="###">4</a>
						</li>

						<li>
							<a href="###">5</a>
						</li>

						<li>
							<a href="###">6</a>
						</li>
						<!-- 下一页 -->

						<li>
							<a href="###">&gt;</a>
						</li>

					</ul>
				</div>

			</div>
		</div>

		<input type="hidden" id="coinMainUrl" value="http://www.Lccoin.com">
		<script type="text/javascript" src="js/jquery-1.8.2.js">
</script>
		<script type="text/javascript" src="js/jquery-ui-1.9.0.custom.js">
</script>
		<script type="text/javascript" src="js/coincommon.js">
</script>
		<script type="text/javascript" src="js/dataKline.js">
</script>
		<script type="text/javascript" src="js/highstock.js">
</script>
		<script type="text/javascript" src="js/exporting.js">
</script>
		<script type="text/javascript">
jQuery(document).ready(function() {
	setInterval(handleTicker, "10000");
	var okhelp = new CookieClass();
	if (okhelp.getCookie("okhelp") == "" || okhelp.getCookie("okhelp") == 1) {
		document.getElementById('backtop2').style.display = "block";
		document.getElementById('okRight').style.display = "block";
		document.getElementById('okLeft').style.display = "none";
	} else {
		document.getElementById('backtop2').style.display = "none";
		document.getElementById('okRight').style.display = "none";
		document.getElementById('okLeft').style.display = "block";
	}
});
</script>


		<div id="allFooter">
			<div id="backtop1" class="backtop1 within1">
				<span> <a href="javascript:void(0);" class="okRight"
					id="okRight" style="display: none;"
					onclick="javascript:showBackRight()"> <span class="right"></span><span
						class="word">收起</span> </a> <a href="javascript:void(0);"
					class="okLeft" id="okLeft" style="display: block;"
					onclick="javascript:showBackLeft()"> <span class="left"></span>
				</a> </span>
			</div>
			<div id="backtop2" class="backtop2 within2" style="display: none;">
				<a id="okHelp" href="###" title="OK小助手" alt="OK小助手"> <span
					class="help"></span><span class="word">OK小助手</span> </a>
				<a id="okQQ" class="borderNone" target="_blank" href="###"
					title="客服QQ" alt="客服QQ"> <span class="QQcompany"></span><span
					class="word">1989812389</span> </a>
				<a id="okPhone" class="borderNone" href="javascript:void(0)"
					title="电话客服" alt="电话客服""=""> <span class="phone"></span> <span
					class="word" style="margin-top: 0px;"> <span
						style="width: 45px;">400-660-9037</span> <br> <span
						class="gray">(7*24小时)</span> </span> </a>
			</div>
			<div class="foot clear" id="footer">
				<ul>
					<li>
						<a href="###">关于我们</a> -
					</li>
					<li>
						<a href="###">投诉建议</a> -
					</li>
					<li>
						<a href="###">常见问题</a> -
					</li>
					<li>
						<a href="###">费率标准</a> -
					</li>
					<li>
						<a href="###">服务条款</a> -
					</li>
					<li>
						<a href="###">联系我们</a> -
					</li>
					<li>
						<a href="###">招聘英才</a> -
					</li>
					<li>
						<a href="###">行情API</a> -
					</li>
					<li>
						<a href="###">交易API</a>
					</li>
				</ul>
				<div class="version gray">
					©2011-2014 Lccoin.com Inc. All Rights Reserved Lccoin 版权所有 |
					<a href="###" target="_blank">京ICP备/a>
					京公网安备11010802013149号
					<br>
					<span style="color: #fff;">运行时间是：23</span>
					<br>
				</div>
			</div>
			<iframe src="" id="ifs" width="0" height="0" style="display: none"></iframe>
			<div class="LccoinPop" id="LccoinPop"></div>
			<div style="display: none;" id="weixinPop" class="LccoinPop">
				<div id="dialog_content" class="dialog_content">
					<div id="dialog_title" class="dialog_title">
						<span id="pwdTitle">关注Lccoin微信服务帐户</span>
						<a title="关闭" class="dialog_closed"
							href="javascript:closeWeixinPop();"></a>
					</div>
					<div class="dialog_body">
						<div class="center">
							<div>
								<img src="images/weixin.jpg" alt="Lccoin微信"
									style="width: 258px; height: 258px;">
							</div>
							<div class="centertitle">
								关注Lccoin微信服务帐户，您可以
							</div>
							<ul class="weixing">
								<li>
									1、随时随地获取Lccoin和MTGox的最新行情
								</li>
								<li>
									2、随时随地与Lccoin客服取得联系
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div style="display: none;" id="weixinSubPop" class="LccoinPop">
				<div id="dialog_content" class="dialog_content">
					<div id="dialog_title" class="dialog_title">
						<span id="pwdTitle">关注Lccoin微信订阅帐户</span>
						<a title="关闭" class="dialog_closed"
							href="javascript:closeWeixinSubPop();"></a>
					</div>
					<div class="dialog_body">
						<div class="center">
							<div>
								<img src="images/weixinsub.jpg" alt="Lccoin微信"
									style="width: 258px; height: 258px;">
							</div>
							<div class="centertitle">
								关注Lccoin微信公众订阅号，您可以
							</div>
							<ul class="weixing">
								<li>
									1、随时随地获取Lccoin产品和服务的最新公告
								</li>
								<li>
									2、随时随地获取Lccoin最新最Hot的资讯
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>






















	</body>
</html>