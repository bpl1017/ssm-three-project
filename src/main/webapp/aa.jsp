<%--
  Created by IntelliJ IDEA.
  User: new鹏
  Date: 2018/5/14
  Time: 14:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>用户登录_互贷网</title>
    <link rel="stylesheet" href="https://img.hudai.com/www_hudai/css/public.css">
    <link rel="stylesheet" href="https://img.hudai.com/www_hudai/css/new_login-43aa0a86d9.css">
    <script src="https://img.hudai.com/www_hudai/js/shence/index.js"></script>
    <script src="https://img.hudai.com/www_hudai/js/jquery-1.11.3.min.js"></script>
</head>
<body>
<div class="login-head">
    <a href="/">
        <img src="https://img.hudai.com/www_hudai/images/public/web_logo_szn_yhcg.gif" alt=""></a>
</div>
<div class="wrapper">
    <div class="container">
        <div class="login-container">
            <div class="login-shadow"></div>
            <div class="login-header">
                <span>登录</span>
                <a href="/bb.jsp">立即注册</a>
            </div>
            <div class="tab-nav">
                <a class="pwd-login active" href="javascript:void(0);">密码登录</a>
                <a class="yzm-login" href="javascript:void(0);">快捷登录</a>
            </div>
            <div class="user-container">
                <div class="user-info">
                    <div class="slide-swiper">
                        <input id="user_name" type="text" placeholder="手机号 / 用户名 / 邮箱" autocomplete="off">
                        <span class="right-sign"></span>
                        <i class="cancel-input"></i>
                    </div>
                    <div class="slide-swiper">
                        <input type="text" value="" style="display: none;" name="username">
                        <input type="text" placeholder="手机号" id="phone_number" maxlength="11" autocomplete="off">
                        <span class="right-sign"></span>
                        <i class="cancel-input"></i>
                    </div>
                </div>
            </div>
            <div class="error" id="name_error"></div>
            <div class="user-container">
                <div class="user-info pwd-info">
                    <div class="slide-swiper">
                        <input type="password" name="password" value="" style="display:none;">
                        <input id="pass_word" name="password" type="password" placeholder="登录密码" maxlength="16" autocomplete="off">
                        <span class="right-sign"></span>
                        <i class="cancel-input"></i>
                        <div class="eye-close"></div>
                    </div>
                    <div class="slide-swiper">
                        <input type="text" id="img_code" placeholder="图形验证码" maxlength="4" autocomplete="off">
                        <i class="cancel-input cancel-imgcode"></i>
                        <img src="https://www.hudai.com/captcha/default?thhn7pKh" id="yzmimg" alt="图形验证码">
                    </div>
                    <div class="slide-swiper msg-box">
                        <input id="phone_yzm" type="text" maxlength="6" placeholder="手机验证码" autocomplete="off">
                        <button id="send_msg">获取验证码</button>
                        <span class="right-sign"></span>
                        <i id="yzm_cancel_input" class="cancel-input"></i>
                    </div>
                </div>
            </div>
            <div class="error" id="code_error"></div>
            <div class="forget-pwd">
                <a href="/cc.jsp">忘记密码？</a>
            </div>
            <button id="login_btn" class="login-action">
                登 录
            </button>
            <div class="login-text clear">
                <span></span>
                <p>使用第三方账号登录</p>
                <span></span>
            </div>
            <a class="weixin-icon" href="/dd.jsp"></a>
        </div>
    </div>
</div>
<div class="login-footer">
    <p>版权所有 © 1710b第三组 <br/></p>
</div>
<input name="prev" type="hidden" id="prev" value="https://www.hudai.com/index/retrieve.html"/>
<script src="https://img.hudai.com/www_hudai/js/new_login-14624598bd.js"></script>
</body>
</html>