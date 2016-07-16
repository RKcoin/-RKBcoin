<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <link href="css/coincommon_v1.css" rel="stylesheet" type="text/css" media="screen, projection"/>
    <link href="css/quotes.css" rel="stylesheet" type="text/css" media="screen, projection"/>
    <link href="css/new_index.css" rel="stylesheet" type="text/css" media="screen, projection"/>
    


<script type="text/javascript">
	jQuery(function() {
		jQuery("#friendLink").click(function() {
			jQuery("#friendLink").addClass("cur");
			jQuery("#qqLink").removeClass("cur");

			jQuery("#qqDiv").hide();
			jQuery("#friendDiv").show();
		});
		jQuery("#qqLink").click(function() {
			jQuery("#friendLink").removeClass("cur");
			jQuery("#qqLink").addClass("cur");

			jQuery("#friendDiv").hide();
			jQuery("#qqDiv").show();
		});
	});
</script>


<div id="klineImage" class="klineImage">


    <div class="marketSelect clear" id="marketImageOld" >
        <ul class="selectDate">
            <li id="LccoinData3" class="cur"><a href="javascript:klineData(0,3);">日</a></li>
            <li id="LccoinData1" ><a href="javascript:klineData(0,1);">5分钟</a></li>
        </ul>
    </div>
    <div class="marketImage"  id="mtgoxDataDiv" >
        <div id="container" style="height: 400px; margin:0 auto;border:1px solid #ddd;min-width: 500px"></div>
    </div>

</div>

<div class="realtimeboxBody" id="realtimeboxBody">
<div class="realtimebox clear" id="realtimebox">
<div class="realtimeleft">
    <div  class="marketTransaction clear">
        <div class="transactionbody floatLeft"  id="transactionLeftBody">
            
            
        </div>

    </div>
    <div class="solid">
        <div class="box">
            
            <div class="clear" id="marketEntrust">
                <div class="real-left">
                    <table class="transaction">
                        <thead>
                        <tr>
                            <th width="60">买入</th>
                            <th width="80">买入价</th>
                            <th width="80">委单量</th>
                            <th></th>
                        </tr>
                        </thead>
                        <tbody id="showBuyMsg">

                        </tbody>
                    </table>
                </div>
                <div class="real-right">
                    <table class="transaction">
                        <thead>
                        <tr>
                            <th width="60">卖出</th>
                            <th width="80">卖出价</th>
                            <th width="80">委单量</th>
                            <th></th>
                        </tr>
                        </thead>
                        <tbody id="showSellMsg">


                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="realtimeright">
    <div class="solid">
        <div class="box">
            <div class="clear">
                <div class="real" id="marketRecent">
                    <table class="transaction">
                        <thead>
                        <tr>
                            <th width="60">成交时间</th>
                            <th width="80">成交价</th>
                            <th width="80">成交量</th>
                        </tr>
                        </thead>
                        <tbody id="tranMsg">


                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
</div>
<input type="hidden" id="getSymbolValue" value="0" />
<input type="hidden" id="getKlineVisionValue" value="0" />
<input type="hidden" id="getKlineSymbol" name="Lccoinbtccny"/>
<input type="hidden" id="marketIsUpdate" value="1"/>

<input type="hidden" id="coinMainUrl" value="http://www.chang365.com.cn"/>
<script type="text/javascript" src="js/jquery-1.8.2.js"></script>
<script type="text/javascript" src="js/jquery-ui-1.9.0.custom.js"></script>
<script type="text/javascript" src="js/coincommon.js"></script>
<script type="text/javascript" src="js/highstock.js"></script>
<script type="text/javascript" src="js/exporting.js"></script>

<script type="text/javascript" src="js/kline.js"></script>
<script type="text/javascript" src="js/market.js"></script>
<script type="text/javascript" src="js/selltrades.js"></script>
<script type="text/javascript" src="js/buytrades.js"></script>
<script type="text/javascript">
    jQuery(document).ready(function(){
        var userAgent = navigator.userAgent;
        var klinevision = 0;
        if(userAgent == null  || userAgent.indexOf("MSIE 6.0")>0 || userAgent.indexOf("MSIE 7.0")>0 || userAgent.indexOf("MSIE 8.0")>0||klinevision==0){
        	dataKLine2(0,3);
            //更新   300秒刷新一次
            setInterval(updateDataKLine, 300000);
        }
		initIndexNews();
    });
    function updateDataKLine()
    {
    	dataKLine2(0,3);
    }
    //加载用户信息
    jQuery(document).ready(function(){
        var url = "user_getUmsg?random="+Math.round(Math.random()*100);
        jQuery.post(url,null,function(data){
            var result = eval('(' + data + ')');
            if(result!=null){
                if(result[0].rtCode!=0){
                    return null;
                }
                if(result[0].userInfo!=null){
                    var accounts=doubleCheck(result[0].userInfo.accounts);
                    var coinNumber=doubleCheck(result[0].userInfo.coinNumber);
                    $("#userBalance").val(accounts);
                    $("#userCnyBalance").val(accounts);
                    $("#cny").html(accounts);
                    $("#coinBalance").html(coinNumber);
                    $("#klineuserBalance").val(coinNumber);
                }
                var tradeOrderList = result[0].orderInfos;
                var tr="";
                if(tradeOrderList!=null){
                    for(var i=0; i<tradeOrderList.length;i++){
                        var orderMoney=doubleCheck(tradeOrderList[i].orderMoney);
                        var orderUnFinishedCount=doubleCheck(tradeOrderList[i].orderUnFinishedCount);
                        tr+="<tr>";
                        if(tradeOrderList[i].optType==1){
                            tr+="<td class=\"lightgreen\">买入("+(i+1)+")</td>";
                        }else{
                            tr+="<td class=\"red\">卖出("+(i+1)+")</td>";
                        }
                        tr+="<td>￥"+orderMoney+"</td>";
                        tr+="<td>"+orderUnFinishedCount+"</td>";
                        tr+="<td class=\"red\"><a href=\"javascript:void(0);\" id=\"chanel"+tradeOrderList[i].orderId+"\" onclick=\"javascript:chanelOrder("+tradeOrderList[i].orderId+")\">撤销</a></td></tr>";
                    }
                }
                $("#tradeTableBody").html(tr);
            }
        });
        //初始化信息
        markinit2();
        var secondCookie = new CookieClass();
        var time = secondCookie.getCookie("REFRESH_HANDLEENTRUST_TIME") == ""?6000:secondCookie.getCookie("REFRESH_HANDLEENTRUST_TIME");
        autoMarketSecond(time);
    });
</script>






<div class="container-b">

<div class="row_11 zixunzhongxin">
	<div class="row_11_hd">
		<img alt="交易网站" src="img/zixunzhongxin.png">
	</div>
	<div class="row_11_co">


		<div class="unit_4 unit_4_border">
			<div class="unit_4_hd">
				<!-- <a href="" 
					class="pull-right">更多&gt;&gt;</a>  --><strong>会员必读</strong>             
                  
			</div>
			<div class="unit_4_co" id="index_news3">
				<!-- <ul class="unstyled">

					<li class="slh"><a target="_blank" title="费率说明"
						href="about/flsm.html">费率说明</a></li>

					<li class="slh"><a target="_blank" title="服务条款用户协议"
						href="about/fwtk.html">服务条款用户协议</a></li>

					<li class="slh"><a target="_blank" title="法律声明"
						href="about/sm.html">法律声明</a></li>

				</ul> -->
			</div>
		</div>

		<div class="unit_4 unit_4_border">
			<div class="unit_4_hd">
				<!-- <a href="" 
					class="pull-right">更多&gt;&gt;</a> --> <strong>网站公告</strong>
			</div>
			<div class="unit_4_co" id="index_news1">
				<!-- <ul class="unstyled">

					<li class="slh"><a target="_blank" title="网站公告"
						href="about/wzgg.html">网站公告</a></li>

				</ul> -->
			</div>
		</div>

		<div class="unit_4 unit_4_border">
			<div class="unit_4_hd">
				<!-- <a href="" 
					class="pull-right">更多&gt;&gt;</a> --> <strong>行业新闻</strong>
			</div>
			<div class="unit_4_co" id="index_news2">
				<!-- <ul class="unstyled"  >

					<li class="slh"><a target="_blank"
						title="二十年后，比特币的使用会像互联网一样普及" href="about/hy1.html">二十年后，比特币的使用会像互联网一样普及</a></li>

					<li class="slh"><a target="_blank"
						title="美国前铸币局局长：比特币是值得考虑的投资品" href="about/hy2.html">美国前铸币局局长：比特币是值得考虑的投资品
							</a></li>

					<li class="slh"><a target="_blank"
						title="全球支付公司和BitPay签署协议接受比特币" href="about/hy3.html">全球支付公司和BitPay签署协议接受比特币</a></li>

					<li class="slh"><a target="_blank" title="全球最大的电子证劵交易纳斯达克开通比特币专栏"
						href="about/hy4.html">全球最大的电子证劵交易纳斯达克开通比特币专栏</a></li>

					<li class="slh"><a target="_blank" title="英国财政大臣奥斯本使用比特币ATM进行提现 "
						href="about/hy5.html">英国财政大臣奥斯本使用比特币ATM进行提现 </a></li>

				</ul> -->
			</div>
		</div>


		<div class="clear"></div>
	</div>
</div>

<div class="sitlinks">
	<div class="hd">
		<ul class="tabs">
			<li id="friendLink" class="cur"><a style="font-size: 13px;"
				href="javascript:void(0);">友情链接</a></li>
			<li id="qqLink" class=""><a style="font-size: 13px;"
				href="javascript:void(0);">交流QQ群</a></li>                
		</ul>
	</div>
	<div id="friendDiv" class="bd">
		<a target="_blank" href="http://www.szb123.cn/">山寨币导航</a> <a
			target="_blank" href="http://www.bitecoin.com">比特币中文网</a> <a
			target="_blank" href="http://www.btc126.com/">比特币家园</a> <a
			target="_blank" href="https://vip.btcchina.com/">壹比特</a> <a
			target="_blank" href="http://btckan.com/">币看</a> <a target="_blank"
			href="http://btc38.com/">比特时代</a> <a target="_blank"
			href="http://bter.com/">比特儿</a> <a target="_blank"
			href="http://www.51cion.com/">好币网</a> <a target="_blank"
			href="http://www.hao123.com">hao123比特币</a> <a target="_blank"
			href="http://www.336hyw.com/">山寨币信息大全</a> <a target="_blank"
			href="http://www.szb28.com/forum.php">中国山寨币社区</a> <a target="_blank"
			href="http://www.xnblt.cn/forum.php">虚拟币论坛</a>
		

	</div>
	<div id="qqDiv" class="bd" style="display: none;">

		<a>掘金官方一群： 384114844</a> <a>掘金官方二群：******** </a> <a>掘金官方三群：
                 **********</a> 
                     

	
</div>
	<script type="text/javascript" src="js/new.js"></script>


</div>
