<%@ page import="com.cx.bean.UserBase" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0023)http://www.bttcoin.com/ -->
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>掘金交易网 - 最专业的掘金交易平台</title>
    <meta name="description" content="bttcoin是中国最专业的交易平台,我们采用ssl、冷存储、gslb、分布式服务器等先进技术，确保交易的安全、快捷、稳定。充值实时到账为您提供最好的交易体验。打造最专业的中国交易平台"/>
    <meta name="keywords" content=",交易,中国,中国交易平台,交易平台,行情,交易,买,bitcoin,btc,汇兑,交易,交易所" />
    <meta name="Author"  content="bttcoin" />
    <meta name="Copyright" content="bttcoin.com 版权所有" />
    <link rel="icon" href="/favicon.ico" type="image/x-icon" />
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
    <link href="css/coincommon_v1.css" rel="stylesheet" type="text/css" media="screen, projection"/>
    <link href="css/jquery-ui.css" rel="stylesheet" type="text/css" media="screen, projection"/>
    <link href="css/quotes.css" rel="stylesheet" type="text/css" media="screen, projection"/>
    <link href="css/about.css" rel="stylesheet" type="text/css" media="screen, projection"/>


</head>

    <%
        int pageindex = 0;

        if(request.getSession().getAttribute("pageindex") != null)
        {
            pageindex = (Integer)request.getSession().getAttribute("pageindex");
        }

        String username = "";
        UserBase hasUser  = (UserBase)session .getAttribute("user");
        boolean isShow = hasUser == null;
        if(hasUser != null)
        {
            username    = hasUser.getUserName();
        }

    %>
   
<body >

<div class="nav1 clear" id="nav1">
    <div class="nav1-sub clear">

        <ul style="float:center;">
            <li class="price yellow" ><span>JJC </span></li>
            <li class="price yellow"><span>最新 : </span>￥<span id="bannerLXBLast">0</span></li>
            <li class="price yellow">买 : ￥<span id="lastestBuy">0</span></li>
            <li class="price yellow">卖 : ￥<span id="lastestSell">0</span></li>
            <li class="price yellow">最高 : ￥<span id="lastestHigh">0</span></li>
            <li class="price yellow">最低 : ￥<span id="lastestLow">0</span></li>
            <li class="price yellow" style="padding-left:10px;"><span>24小时成交量 :</span></li>
            <li class="price yellow"><span id="bannerLXBVol">0</span></li>
             <li class="price yellow">产出掘金币数量:<span id="MineralPoolForCoinNumber">0</span></li>
           <li class="price yellow">总矿机数:<span id="allMillNum">0</span></li> 
         <!--   <li class="price yellow">冻结掘金币:<span id="ForzenMineralPoolForCoinNumber">0</span></li> 
            <li class="price yellow">售出矿机数量:<span id="allMillNum">0</span></li> -->
        <!--      <li class="price white"  >首发JJC总量 : <span id="finishedRg" >5213470</span></li> -->
            <%--<li class="price green2"  >总量 : <span id="finishedRg" >1200W</span></li>
            <%--<li class="price red" style="display:''" >未认购 : <span id="unfinishedRg" style="display:''">0</span></li>--%>
            
        </ul>




        <div class="nav-quick">
            <div class="rightArea">
                <%
                    if(isShow){
                %>
                    <a class="loadMessage"  href="javascript:showlogin(0);">登录</a>
                    <a class="loadMessage"  href="javascript:showRegister(1);">注册</a>
                  <%
                  }else{
                  %>
					 <span id="accountlink" class="welcome">
							
								<%--<a href="/account/score.do" class="vipUserPosition vipBgImage1"></a>--%>
							<span id="accountlinkBlock">                               欢迎您,&nbsp;&nbsp;
								<font color="orange" ><%=username%></font>
								<a class="triangle" ><img src="img/triangle.png?rand=2014a"></a>
							</span>
					</span>
                <div id="accountpop" class="accountpop">
                    <div class="mycoinmenu">
                        <div class="clear">
                            <ul>
                                <li class="">
                                    <dl class="">
                                        <dt class="fwq trade">交&nbsp;易</dt>
                                        <dd><a href="Lxc_trade_tr" class="">JJC交易</a></dd>
                                        <dd><a href="Lxc_trade_manage" class="">委托管理</a></dd>
                                      <!--   <dd><a href="Lxc_trade_tr0" class="">认购中心</a></dd> -->
                                    </dl>
                                </li>
                                <li>
                                    <dl class="">
                                        <dt class="fwq acountManage">帐户管理</dt>
                                        <dd><a href="Lxc_trade_rmb_in" class="">人民币充值</a></dd>
                                        <dd><a href="Lxc_trade_rmb_out" class="">人民币提现</a></dd>
                                        <dd><a href="Lxc_trade_rmb_all" class="">账单明细</a></dd>
                                       <!--  <dd><a href="Lxc_trade_my_score" class="">我的积分</a></dd> -->
                                    </dl>
                                </li>
                                <li class="">
                                    <dl class="">
                                        <dt class="fwq basicSetting">基本设置</dt>
                                        <dd><a href="Lxc_trade_sec" class="">安全中心</a></dd>
                                        <dd><a href="Lxc_trade_account2" class="">账户信息</a></dd>
                                    </dl>
                                </li>
                                <li class="">
                                    <dl class="">
                                        <dt><span class="fwq"><a class="lightblue2" href="Login_loginOut">退出</a></span> </dt>
                                    </dl>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <%}%>
            </div>
        </div>
    </div>
</div>

<div class="nav_bg2 clear" id="nav_bg2">
    <div class="head clear">
        <div class="loaded-logo1">
            <a href="/"> <img alt="bttcoin" src="img/LOGO.jpg" width="186" height="62" />
            </a>
        </div>
        <div class="accountinfo1">
            <div class="nav2-up1">
                <ul  <% if(isShow){%>style="display:none;"<%}%> >
                    <li><span class="gray2 fontsize-12">可用</span></li>
                    <li class="text"><span class="gray2">CNY:</span><span class="money lightblue5"  id="cny_canuse">0</span></li>
                    <li class="text"><span class="gray2">JJC:</span><span class="money lightblue5" id="coin_canuse">0</span></li>
                    <li class="text"><span class="gray2">矿机数:</span><span class="money lightblue5" id="mill_num">0</span></li>
                    <li class="frozen"><span class="gray2 fontsize-12">冻结</span></li>
                    <li class="text"><span class="gray2">CNY:</span><span class="money gray1" id="fcny_canuse">0</span></li>
                    <li class="text"><span class="gray2">JJC:</span><span class="money gray1" id="fcoin_canuse">0</span></li>
                </ul>

            </div>
            <div class="nav2-center">
                <div class="classDiv1">
                    <div class="frozen"    <% if(isShow){%>style="display:none;"<%}%> >

                        <div id="totalAssetsTable" class="totalAssetsTable" style="display:none;">
                            <table>
                                <TR>
                                    <TH WIDTH="100"></TH>
                                    <TH WIDTH="250"></TH>
                                    <TH WIDTH="250"></TH>
                                </TR>
                                <tr>
                                    <td class="title gray3">可&nbsp;&nbsp;&nbsp;用</td>
                                    <td><span>CNY:</span> <span id="cny_use" class="lightgreen5">0</span></td>
                                    <td><span>JJC:</span> <span  id="Lxc_use" class="lightgreen5">0</span></td>
                                </tr>
                                <tr>
                                    <td class="title gray3">冻&nbsp;&nbsp;&nbsp;结</td>
                                    <td><span>CNY:</span> <span class="gray1">0</span></td>
                                    <td><span>JJC:</span> <span class="gray1">0</span></td>
                                </tr>

                            </table>
                        </div>

                    </div>
                </div>
            </div>
            <div class="nav2-sub1 clear">
                <ul class="menu">
                    <li <%if(pageindex == 0){%>class="cur"<%}%> ><a href="Lxc_index"  title="首页" > <span class="">首&nbsp;&nbsp;&nbsp;&nbsp;页</span></a></li>
                    <li <%if(pageindex == 2){%>class="cur"<%}%> ><a href="Lxc_market"  title="实时行情"><span>实时行情</span></a></li>
                    <li <%if(pageindex == 1){%>class="cur"<%}%> ><a href="Lxc_trade"  title="交易中心" ><span>交易中心</span></a></li>
<%--                     <li <%if(pageindex == 11){%>class="cur"<%}%> ><a href="Lxc_wk"  title="挖矿中心" ><span>挖矿中心</span></a></li>
                    <li <%if(pageindex == 12){%>class="cur"<%}%> ><a href="Lxc_lt"  title="论坛" ><span>论坛</span></a></li> --%>
                    <li <%if(pageindex == 3){%>class="cur"<%}%> ><a href="Lxc_news"  title="最新动态"><span>最新动态</span></a></li>
                    <li <%if(pageindex == 4){%>class="cur"<%}%> ><a href="Lxc_readme"  title="关于我们"><span>关于我们</span></a></li>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript" src="js/coincommon.js"></script>
<script type="text/javascript" src="js/jquery-1.8.2.js"></script>
<script type="text/javascript" src="js/js/index.js"></script>
<script type="text/javascript" src="js/topheader2.js"></script>
<script type="text/javascript">
   var  IntervalId;
	jQuery(document).ready(function(){
		<% if(hasUser!=null){%>
	        clearInterval(IntervalId);//
	        IntervalId = setInterval(initUinfo, 3000);
	        initUinfo();
        <%}%>
        
        //更新头部交易信息
        setInterval(initHeaderTranInfo, 3000);
        //更新认购未认购信息
        //setInterval(initRg, 3000);
        initHeaderTranInfo();
        //initRg();
    } );

    if(document.getElementById("totpCode")!=null){
        document.getElementById("totpCode").focus();
    }
    isForward();
	
</script>

</body>
</html>

