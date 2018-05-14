<%--
  Created by IntelliJ IDEA.
  User: new鹏
  Date: 2018/5/14
  Time: 14:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>用户注册_互贷网</title>
    <link rel="stylesheet" href="https://img.hudai.com/www_hudai/css/public.css">
    <link rel="stylesheet" href="https://img.hudai.com/www_hudai/css/new_register-a6dc5405bf.css">
    <script src="https://img.hudai.com/www_hudai/js/shence/index.js"></script>
    <script src="https://img.hudai.com/www_hudai/js/jquery-1.11.3.min.js"></script>
</head>
<body>
<div class="login-head">
    <a href="/" class="logo">
        <img src="https://img.hudai.com/www_hudai/images/public/web_logo_szn_yhcg.gif" alt="">
    </a>
</div>
<div class="wrapper">
    <div class="container">
        <div class="login-container">
            <div class="login-shadow"></div>
            <div class="login-header">
                <span>注册</span>
                <a href="/aa.jsp">立即登录</a>
            </div>
            <div class="user-container">
                <div class="user-info">
                    <input type="password" value="" style="display: none;" name="username">
                    <input id="phone_number" type="text" placeholder="手机号码" maxlength="11">
                    <span class="right-sign"></span>
                    <i class="cancel-input"></i>
                </div>
            </div>
            <div class="error" id="name_error"></div>
            <div class="user-container">
                <div class="user-info pwd-info">
                    <input type="password" value="" style="display: none;" name="password">
                    <input id="pass_word" type="text" autocomplete="new-password"  placeholder="设置登录密码" maxlength="16">
                    <span class="right-sign"></span>
                    <i class="cancel-input"></i>
                    <b class="eye-close"></b>
                </div>
            </div>
            <div class="error" id="pwd_error"></div>
            <div class="user-container">
                <div class="user-info pwd-info yzm-info">
                    <div class="slide-swiper">
                        <input type="text" id="img_code" placeholder="图形验证码" maxlength="4">
                        <i class="cancel-input cancel-imgcode"></i>
                        <img src="https://www.hudai.com/captcha/default?PQ5NsdlL" id="yzmimg" alt="图形验证码">
                    </div>
                    <div class="slide-swiper msg-box">
                        <input id="phone_yzm" maxlength="6" type="text" placeholder="手机验证码">
                        <button id="send_msg">获取验证码</button>
                        <span class="right-sign"></span>
                        <i id="yzm_cancel_input" class="cancel-input"></i>
                    </div>
                </div>
            </div>
            <div class="error" id="code_error"></div>
            <div class="my-invite">
                <span></span>
                <p>我有邀请人</p>
            </div>
            <div class="user-container invite-container">
                <div class="user-info">
                    <input id="invite_code" type="text" placeholder="推荐人邀请码或手机号（选填）" maxlength="11">
                    <i class="cancel-input"></i>
                </div>
                <p class="invitecode-error"></p>
            </div>
            <button id="login_btn" class="login-action">
                注册领688红包
            </button>
            <p class="agreement">注册即代表已同意<a href="/safety/transaction.html">《互贷网服务协议》</a></p>
        </div>
        <div class="pwd-check">
            <h4 class="check-title">登录密码须包含：</h4>
            <div class="check-tip"><span id="check_step1"></span><p>6-16个字符</p></div>
            <div class="check-tip"><span id="check_step2"></span><p>大写或小写英文字母</p></div>
            <div class="check-tip"><span id="check_step3"></span><p>至少一个数字</p></div>
            <div class="pwd-descibe">密码强度：<span id="check_leval">低</span></div>
            <div class="pipe">
                <div></div>
            </div>
        </div>
    </div>
</div>
<div class="login-footer">
    <p>版权所有 © 1710b第三组 <br/></p>
</div>
<script src="https://img.hudai.com/www_hudai/js/new_register-4a56a629a1.js"></script>
</body>
</html>