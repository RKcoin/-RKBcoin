<%@ page import="com.cx.util.PublicFunc" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0023)https://www.Lxboin.com/ -->
<html>
	<head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <title>掘金币交易网 - 最专业的掘金交易平台</title>
        <meta name="description" content="Lxboin是中国最专业的交易平台,我们采用ssl、冷存储、gslb、分布式服务器等先进技术，确保交易的安全、快捷、稳定。充值实时到账为您提供最好的交易体验。打造最专业的中国交易平台"/>
        <meta name="keywords" content=",交易,中国,中国交易平台,交易平台,行情,交易,买,bitcoin,btc,汇兑,交易,交易所" />
        <meta name="Author"  content="Lxboin" />
        <meta name="Copyright" content="Lxboin.com 版权所有" />
        <link rel="icon" href="/favicon.ico" type="image/x-icon" />
        <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
        <link href="css/wb/login.css" rel="stylesheet" type="text/css" media="screen, projection" />

    </head>
	<body>
		<div>
            <jsp:include page="header.jsp" />
		</div>
        <div class="wrapper">
            <div style="clear: both;width:100%;"> </div>
            <section>
			<div class="login bor" style="width:99.8%;"> 
                <!--id="user-login-box-page" 会员登录-->
                <div id="user-login-box-page" class="user-login-box-page">
                    <div class="l">
                        <div class="login">
                                <div class="row-txt">会员登录</div>

                                <div class="row-un">
                                    <div class="u-box user_name_bd">
                                    	 <input id="indexLoginName" class="inp_user_name" value="请输入用户名" type="text" onfocus="javascript:indexLoginNameOnfocus();" onblur="indexLoginNameOnblur(this)"
                                               onkeydown="javascript:clearTig(this)" onkeyup="javascript:emailOnkeyUp(this);" autocomplete="off"><span role="status" aria-live="polite" class="ui-helper-hidden-accessible">  </span>
                                        <i class="red">*</i>
                                    </div>

                                </div>
                                <div class="row-up">
                                    <div class="set-pwd">密码</div>
                                    <div class="u-box user_pwd_bd">
                                        <input id="indexLoginPwd" class="inp_user_pwd" value="" type="password"  onkeyup="setPasswordLevel(this, document.getElementById('passwordLevel'));" placeholder="密码" title="密码" onkeydown="callbackEnter(loginIndexSubmit);">
                                    </div>

                                    <i class="red">*</i>
                                </div>


                               <li class="l3" id=""><div id="indexLoginTips" class="errorbg" style="color:red;"></div>&nbsp;</li>
                                <div class="row-bs"><input class="btn-signin" type="submit" name="button" id="button"  onclick="javascript:loginIndexSubmit();" value="登录"></div>

                            <div class="row-cf">
                                   <label for="chk_remember"><a href="Lxc_reg_m_pwd"> 忘记密码？</a></label>
                                   | <a class="forget" href=" ">联系客服？</a>
                               </div>

                        </div>
                        <div class="other">
                           <!-- <div class="t">使用合作网站帐号登录：</div> 
                             <div class="link"> 
                                <a href="#" onclick="toQzoneLogin()"><img src="templets/img/qqlogin.png"></a> 
 							 </div>-->
                        </div>

                    </div>
                    <div class="r">
                        <div class="box">
                            <div class="t">还不是 掘金币网 会员？</div>
                            <div class="c">
                                <a href="Lxc_register" class="btn-reg">9.9秒快速注册</a>
                            </div>
                        </div>
                    </div>
                    <div style="clear:both;"></div>
                    <div class="h-bottom"></div>
                </div>
                </div>
                </section>
        </div>

		<div>
            <jsp:include page="bottom.jsp" />
		</div>

        </body>
        </html>