<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <link href="css/service.css" rel="stylesheet" type="text/css" media="screen, projection"/>
    <link href="css/coincommon_v1.css" rel="stylesheet" type="text/css" media="screen, projection"/>
	
</head>
<body >
    <div>
        <jsp:include page="header.jsp"/>
    </div>
<div class="ourservice" id="showMsg">
    <div style="width: 980px; margin: 0 auto;">
        <div class="newDynamic" id="newsmsg">
            <span class="title">最新动态</span>
        </div>
      
        <div class="serviceTarget">
            <span class="title">我们的服务指标</span>
            <div class="specificTarget">
                <ul class="rightDistance">
                    <li><span class="fontsize-16 bold">JJC交易</span></li>
                    <li style="line-height: 83px;"><span
                            class="lightorange1 fontsize-20 bold">交易0手续费</span></li>
                    <li><span class="gray">(服务时间:7*24小时)</span></li>
                </ul>
                <ul>
                    <li><span class="fontsize-16 bold">人民币充值</span>&nbsp;&nbsp;<span
                            class="gray">需填写正确信息</span></li>
                    <li><span>收到汇款后</span>&nbsp;&nbsp;<span  class="lightorange1 fontsize-20 bold">半小时</span>&nbsp;&nbsp;<span>到账</span></li>
                    <li><span class="lightorange1 fontsize-20 bold">0手续费</span></li>
                    <li><span class="gray">(09:00-21:00)</span></li>
                </ul>
                <ul class="rightDistance">
                    <li><span class="fontsize-16 bold">人民币提现</span></li>
                    <li><span class="lightorange1 fontsize-20 bold">24小时内处理</span>&nbsp;&nbsp;<span>到账</span></li>
                    <li><span class="lightorange1 fontsize-20 bold">2%+2元手续费</span></li>
                    <li><span class="gray">(提现24小时不到帐可以联系客服)</span></li>
                </ul>
                <ul >
                    <li><span class="fontsize-16 bold">服务质量</span></li>
                    <li><span class="lightorange1 fontsize-20 bold">(09:00-21:00)</span></li>
                     
                    <li><span class="fontsize-16 bold">专人在线服务</span></li>
                    <li><span class="lightorange1 fontsize-20 bold">&nbsp;</span></li>
                </ul>
            </div>
        </div>
        
          <div class="page" id="pageShow">
			  
		</div>
    </div>
</div>
<script type="text/javascript">
		jQuery(document).ready(function(){
			initNews(1);
		});
	</script>
	<script type="text/javascript" src="js/new.js"></script>
<div>
    <jsp:include page="bottom.jsp"/>
</div>
</body>
</html>
