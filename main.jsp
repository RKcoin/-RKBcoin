<%@ page import="com.cx.util.PublicFunc" %>
<%@ page import="com.cx.bean.UserBase" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0023)https://www.bttcoin.com/ -->
<html>
<head>
</head>

<body >
<%
    String username = "";
    boolean dispatch = false;
    UserBase hasUser  = (UserBase)session.getAttribute("user");
    if(hasUser != null)
    {
        username    = hasUser.getUserName();
        dispatch = true;
    }
%>

<%if(!dispatch){%>
<script type="text/javascript">
    window.location.href="Lxc_index";
</script>
<%}%>

<div>
    <jsp:include page="header.jsp"/>
</div>

    <div class="bigImage1 clear" id="bigImage1">
    <div>
        <ul class="J-slide">
            <li class="slide"
                style="position: absolute; display: none; opacity: 0;"
                id="bannerBackgroundLuck">
                <div class="bannerBackgroundVote"></div>
            </li>
            <li class="slide"
                style="position: absolute; opacity: 0; display: none;"
                id="bannerBackgroundVote">
                <div class="bannerBackgroundLuck"></div>
            </li>
            <li class="slide"
                style="display: block; position: absolute; opacity: 1;"
                id="bannerBackground">
                <div class="bannerBackground">
                    <div style="width: 980px; margin: 0 auto;">
                        <div class="total">
                         <!--   <table>
										<tbody>
											<tr>
												<td>
													<span class="spanbtcleft">今日成交量</span>&nbsp;
												</td>
												<tr >
												<td ><div class="spanbtcleft2" id="indexVol">0</div>
													</td></tr>
											</tr>
										</tbody>
									</table> -->
                        </div>
                    </div>
                </div>
            </li> 
        </ul>
    </div>

    <div class="immediateVote" style="display:;">
        <div class="announcement">
            <span class="newsIcon"></span><span class="gray newsContent">最新动态:</span> <a id="maxNews" href="#" class="newsContent black"></a><a href="Lxc_news" class="newsMore">更多>></a>
        </div>
    </div>

    <div>
        <div class="bge">
            <div class="dz">

                <div class="after-d" >
                    <span class="ttitle1">欢迎使用掘金交易平台</span>
                    <span class="ttitle3">您正在使用的账号为:</span>
                    <span class="ttitle2"><span style="max-width:190px;display:inline-block;overflow:hidden;"><%=username%></span></span>

                    <div class="num1">
                        <span class="darkgray1">可&nbsp;&nbsp;&nbsp;用</span><span class="darkgray1 num1-title1">CNY:</span><span class="num1-title3 lightgreen4" id="mainCny"></span>
                        <a href="Lxc_trade_rmb_in" class=""></a>
                    </div>
                    <div class="num1">
                        <span class="darkgray1 num1-title2">JJC:</span><span class="num1-title3 lightgreen4" id="mainCoin">0</span>
                    </div>
                    <div class="num1">
                        <span class="darkgray1 num1-title2"></span><span class="num1-title3 lightgreen4"></span>
                    </div>
                    <span><a id="" class="button-blue3" href="Lxc_trade" title="" onclick="">进入交易中心</a></span>
                    <span><a id="" class="button-blue3" href="Login_loginOut" title="" onclick="">退出交易平台</a></span>
                    <div class="num1">

                        <span class="darkgray2 num1-qq"><span class="pleft">客服QQ:<a id="" class="darkgray2" target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=1548743797&site=qq&menu=yes" title="" onclick="">1548743797</a></span></span>


                    </div>
                </div>

            </div>
        </div>

       <!--  <div class="controlBackground">
            <div id="J-slide-number" class="slide-number">
                <a class="" href="javascript:void(0)" onclick="javascript:showAuto(1)" id="number1">1</a>
                <a class="slide-number-active" href="javascript:void(0)" onclick="javascript:showAuto(2)" id="number2">2</a>
                <a class="slide-number-active" href="javascript:void(0)" onclick="javascript:showAuto(3)" id="number3">3</a>
                <input type="hidden" id="numberClick" value="1" />
            </div>
        </div> -->
    </div>
</div>

<input type="hidden"  id="forwardUrl" value=""/>

<script type="text/javascript">
    jQuery(document).ready(function(){
        
        
        var url="pmsg_getPmsgs?random="+Math.round(Math.random()*100);
        var param={page:1};
    	jQuery.post(url,param,function(data){
    		var result = eval('(' + data + ')');
    		if(result!=null){
    			if(result[0].rtCode!=0){
    				alert(result[0].rtMsg);
    				return null;
    			}else{
    				if(result[0].publicMessages!=null){
    					if(result[0].publicMessages.length>0){
    						var msg=result[0].publicMessages[0];
    						$("#maxNews").attr("href","#");
    						$("#maxNews").html(msg.ptitle);
    					}
    				}
    			}
    		}
    	});
    });
</script>
<jsp:include page="ourInfo.jsp"/>

<script type="text/javascript" src="js/jquery-1.8.2.js"></script>
<script type="text/javascript" src="js/jquery-ui-1.9.0.custom.js"></script>
<script type="text/javascript" src="js/coincommon.js"></script>
<script type="text/javascript" src="js/index.js"></script>
<div>
        <jsp:include page="indexAdd.jsp" />
</div>
<div id="allFooter">
  <jsp:include page="bottom.jsp" />
</div>


</body>
</html>

