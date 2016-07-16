<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
</head>

<body id="maxHeight">
<%
    if(request.getSession().getAttribute("user")!=null){
%>
<input type="hidden" id="isLogin" value="1.0" />
<%
}else{
%>
<input type="hidden" id="isLogin" value="0" />
<%
    }
%>
<div>
    <jsp:include page="header.jsp"/>
</div>


<div class="main2" id="main" style="padding-bottom:0px;">
    <div class="buysellTitle" id="buysellTitle">
        <div class="selecttab1">
            <ul class="selecttab-box1">
                <li class="cur" >
                    <a class="otherBoxTitle">掘金币行情</a>
                </li>
                <li style="float:right;padding-right:0px;padding-left:10px;">
                    <span>交易状态 : &nbsp;</span>
                    <select id="openTradeBlockSelect" onchange="javascript:openTradeBlock(this,1);" onmouseover="this.style.cursor='pointer'" style="width:100px;font-size:14px;margin-right:2px;border:1px solid #d5d5d5;;">
                        <option value="0" >显示交易</option>
                        <option value="1" >隐藏交易</option>
                    </select>
                </li>
                <li style="float:right;padding-right:0px;">
                    <span>K线状态 : &nbsp;</span>
                    <select id="openKlineBlockSelect" onchange="javascript:openTradeBlock(this,2);" onmouseover="this.style.cursor='pointer'" style="width:100px;font-size:14px;margin-right:2px;border:1px solid #d5d5d5;;">
                        <option value="0" >显示K线</option>
                        <option value="1" >隐藏K线</option>
                    </select>
                </li>
            </ul>
        </div>
    </div>
</div>
<div class="" id="changeKlineBackgound">
    <div class="datalist" id="datalist">
        <div class="quotelist">
            <div class="list">
                <div class="list-box">
                    <dl class="DataDl firstDl">
                        <dt>最近成交价</dt>
                        <dd id="marketLast">0</dd>
                    </dl>
                    <dl class="DataDl firstDl">
                        <dt>买一价</dt>
                        <dd id="marketBuy">0</dd>
                    </dl>
                    <dl class="DataDl firstDl">
                        <dt>卖一价</dt>
                        <dd id="marketSell">0</dd>
                    </dl>
                    <dl class="DataDl firstDl">
                        <dt>最高价</dt>
                        <dd id="marketHigh">0</dd>
                    </dl>
                    <dl class="DataDl firstDl">
                        <dt>最低价</dt>
                        <dd id="marketLow">0</dd>
                    </dl>
                    <dl class="DataDl firstDl">
                        <dt>成交量</dt>
                        <dd ><span id="marketVol">0</span></dd>
                    </dl>
                </div>
            </div>
        </div>
        <div class="newvalue">
            <div class="solid">
                <div class="value-box">
                    <span class="gray">最新价格：<font id="marketLastInteger" class="red">0</font></span>
                </div>
            </div>
        </div>
    </div>
</div>


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
            <div class="title borderLeftGreen">
                <input type="hidden" id="userBalance" value="0"/>
                <span>买入JJC</span>
            </div>
            <div class="mainBody" style="">
                <div class="freetitle"><span class="fontsize bold">JJC</span><span>交易手续费 <span class="red fontsize-20 bold">免费</span></span></div>
                <ul>
                    <li >
                        <span onmouseover="this.style.cursor='pointer'" onclick="javascript:buyantoTurnover();">人民币余额:</span>
                        <span class="lightgreen5 fontsize-14"  onmouseover="this.style.cursor='pointer'" onclick="javascript:buyantoTurnover();"><span id="cny">0</span></span>
                    </li>
                    <li>
                        <span onmouseover="this.style.cursor='pointer'" onclick="javascript:buyantoTurnover();">可买JJC:</span>
                        <span id="amount" class="lightgreen5 fontsize-14" onmouseover="this.style.cursor='pointer'" onclick="javascript:buyantoTurnover();">0</span>
                        <input type="hidden" id="nowPrice" value="0"/>
                        <input type="hidden" id="userCnyBalance" value="0"/>
                        <input type="hidden" id="feeTipsValue" value="Lccoin平台交易手续费为0%"/>
                    </li>

                    <li class="buytext" id="treadBuyContTextDiv">
                        <span class="buyprice">出价￥/JJC</span>
                        <span class="buynum lightgreen5 bold">购买数量</span>
                        <span class="summoney">总金额</span>
                    </li>
                    <li class="buyinput" id="treadBuyContDiv">
                        <span class="buyinputprice"><input class="buysellinput" name="tradeCnyPrice" id="tradeCnyPrice"  onkeyup="javascript:tradeTurnoverValue(1);" value="0"  /></span>
                        <span class="buyinputnum"><input class="buysellinput" name="tradeAmount" id="tradeAmount" onkeyup="javascript:tradeTurnoverValue(2);"  /></span>
                        <span class="inputsummoney"><input class="buysellinput" id="tradeTurnover" type="text"  value="" onkeyup="javascript:summoneyValue();" /></span>
                        <span class="chen"></span>
                        <span class="equal"></span>
                    </li>
                    <li  id="limitedDiv" class="inputStyle lightgreen5"  style="display: none">
                        <span class="word">金额 : </span>
                        <input  class="" id="limitedMoney" onkeyup="javascript:limitedSummoneyValue();" />

                    </li>
                    <li class="inputStyle clear" id ="tradePwdLi" style="padding-top:20px; display: none;">
                        <span class="word">资金密码 :</span>
                        <input class="" name="tradePwd" id="tradePwd" type="password" onkeydown="callbackEnter(submitTradeBtcForm);" />
                        <span style="padding-left:5px;"><a class="lightblue5" href="/user/security.do#transactionPassword">(免输资金密码)</a></span>
                    </li>
                    <li class="inputStyle1 center">
                        <span id="tradeBtcTips" class="fred center tradeBtcTips"></span>
                        <input type="hidden" id="tradeType" value="1"/>
                        <input type="hidden" id="isopen" value="1">
                    </li>
                    <li class="inputStyle1 center">
                        <a class="marketButtonGreen" onclick="javascript:submitTradeBtcForm();" id="btnA">立即买入</a>
                    </li>
                </ul>
            </div>
        </div>


        <div class="transactionbody floatRight" id="transactionRightBody">
            <div class="title borderLeftRed">
                <span>卖出JJC</span>
                <input type="hidden" id="klineuserBalance" value="0"/>
                <input type="hidden" id="snowPrice" value="0"/>
            </div>
            <div class="mainBody" style="">

                <div class="freetitle"><span class="fontsize bold">JJC</span><span>交易手续费 <span class="red fontsize-20 bold">免费</span></span></div>
                <ul>
                    <li >
                        <span onmouseover="this.style.cursor='pointer'" onclick="javascript:sellantoAmount();">JJC余额:</span>
                        <span class="fred fontsize-14" onmouseover="this.style.cursor='pointer'" onclick="javascript:sellantoAmount()" id="coinBalance">0</span>
                    </li>
                    <li>
                        <span onmouseover="this.style.cursor='pointer'" onclick="javascript:sellantoAmount();">可卖人民币:</span>
                        <span class="fred fontsize-14" onmouseover="this.style.cursor='pointer'" onclick="javascript:sellantoAmount();" id="kmoney">0</span>
                        <input type="hidden" id="klineuserCoinBalance" value="0"/>
                        <input type="hidden" id="klinefeeTipsValue" value="Lccoin平台交易手续费为0%"/>
                    </li>
                    <li class="buytext" id="treadContTextDiv">
                        <span class="buyprice" id="priceSpan">售价￥/JJC</span>
                        <span class="buynum red bold" id="numSpan">卖出数量 </span>
                        <span class="summoney" id="summoneySpan">兑换额CNY</span>
                    </li>
                    <li class="buyinput" id="treadContDiv">
                        <span class="buyinputprice"><input class="buysellinput" name="tradeCnyPrice" id="klinetradeCnyPrice"  onkeyup="javascript:klinetradeTurnoverValue(1);" value="0" /></span>
                        <span class="buyinputnum"><input class="buysellinput" name="tradeAmount" id="klinetradeAmount" onkeyup="javascript:klinetradeTurnoverValue(2);"  /></span>
                        <span class="inputsummoney"><input class="buysellinput" id="klinetradeTurnover" type="text"  value="" onkeyup="javascript:klinesummoneyValue();" /></span>
                        <span class="chen"></span>
                        <span class="equal"></span>
                    </li>
                    <li  id="slimitedDiv" class="inputStyle fred" style="display: none">

                        <!-- <span class="inputStyle" id="limitpriceTitle" style="color:red;"><span style="color:red;">数量</span> : </span> -->
                        <span class="word">数量 :</span>
                        <input  class="" id="klinelimitedMoney" onkeyup="javascript:klinelimitedSummoneyValue();" />

                    </li>
                    <li class="inputStyle clear" id ="klinetradePwdLi" style="padding-top:20px; display: none;">
                        <span class="word">资金密码 : </span>
                        <input class="" name="tradePwd" id="klinetradePwd" type="password" onkeydown="callbackEnter(klinesubmitTradeBtcForm);" />
                        <span style="padding-left:5px;"><a class="lightblue5" href="/user/security.do#transactionPassword">(免输资金密码)</a></span>
                    </li>
                    <li class="inputStyle1 center">
                        <span id="klinetradeBtcTips" class="fred center"></span>
                        <input type="hidden" id="klinetradeType" value="2"/>
                        <input type="hidden" id="klinesymbol" value="0"/>
                        <input type="hidden" id="klineisopen" value="1">
                    </li>
                    <li class="inputStyle1 center">
                        <a class="marketButtonRed" onclick="javascript:klinesubmitTradeBtcForm();" id="klinebtnA">立即售出</a>
                    </li>
                </ul>
            </div>
        </div>

    </div>
    <div class="solid">
        <div class="box">
            <div class="title">
                <span class="ttitle">委托信息</span>
                <div class="updateTime">
                    <div class="div1">
                        <span>刷新时间 : &nbsp;</span>
                        <select id="updateSecond" onchange="javascript:updateMarketSecond();">
                            <option value="2000">1s</option>
                            <option value="3000">2s</option>
                            <option value="6000">5s</option>
                            <option value="11000">10s</option>
                            <option value="31000">30s</option>
                            <option value="61000">60s</option>
                        </select>
                    </div>
                    <div class="div2">
                        <span style="">倒计时 :&nbsp;</span>
                        <span id="secondNumber">&nbsp;&nbsp;</span><span>&nbsp;S</span>
                    </div>
                </div>
            </div>
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

    <div id="tradeOrderTable" class="solid">
        <div class="box">
            <div class="title">
                <span class="ttitle">最近10笔未成交挂单</span><a href="Lxc_trade_manage" title="更多" style="float:right;" class="fontsize-12">更多>></a>
            </div>
            <div class="clear">
                <div class="realMarketAfter tenHeightMarketAfter">
                    <table class="transaction">
                        <thead>
                        <tr>
                            <th width="55">委托类别</th>
                            <th width="70">委托价格</th>
                            <th width="70">尚未成交</th>
                            <th width="85">操作状态</th>
                        </tr>
                        </thead>
                        <tbody id="tradeTableBody">

                        <tr><td colspan="4" align="center">您暂时没有委托数据</td></tr>

                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>

    <div class="solid">
        <div class="box">
            <div class="title">
                <h3 class="ttitle">最新成交</h3>
            </div>
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
            dataKLine(0,3);
            //更新   300秒刷新一次
            setInterval(updateDataKLine, 300000);
        }
    });
    function updateDataKLine()
    {
        dataKLine(0,3);
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
        markinit();
        var secondCookie = new CookieClass();
        var time = secondCookie.getCookie("REFRESH_HANDLEENTRUST_TIME") == ""?6000:secondCookie.getCookie("REFRESH_HANDLEENTRUST_TIME");
        autoMarketSecond(time);
    });
</script>

<div>
    <jsp:include page="bottom.jsp"/>

</div>
</body>
</html>
