<%--
  Created by IntelliJ IDEA.
  User: new鹏
  Date: 2018/5/14
  Time: 14:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>微信扫描_互贷网</title>
    <link rel="stylesheet" href="https://img.hudai.com/www_hudai/css/public.css">
    <link rel="stylesheet" href="https://img.hudai.com/www_hudai/css/weixin_login-6e1cd39e35.css">
    <script src="https://img.hudai.com/www_hudai/js/shence/index.js"></script>
    <script src="https://img.hudai.com/www_hudai/js/jquery-1.11.3.min.js"></script>
    <script src="//res.wx.qq.com/connect/zh_CN/htmledition/js/wxLogin.js"></script>
</head>
<script>
    $(function () {
        var number = window.location.hash.substr(1);
        var arrs = ['bind'];
        var index = $.inArray(number,arrs);
        var url ="http%3A%2F%2Fwww.hudai.com%2Fuser%2Fbind.html";
        if(index>=0){
            url ="http%3A%2F%2Fwww.hudai.com%2Fuser%2Fbind.html%3Ftype%3D1";
        }
        console.log(number,index,url)
        var obj = new WxLogin({
            id:"wechatlogin",
            appid: "wxf6ea19e3f7aeaa84",
            scope: "snsapi_login",
            redirect_uri: url,
            state: "007",
            style: "",
            href: "//www.hudai.com/css/weixin.css"
        });
        $('#wechatlogin iframe').css({
            height: '600px',
            width: '437px'
        })

    });

</script>
<body>
<div class="login-head">
    <a href="/"><img src="https://img.hudai.com/www_hudai/images/public/web_logo_szn_yhcg.gif" alt=""></a>
    </div>
    <div class="wrapper">
    <div class="container">
    <div id="wechatlogin"></div>
    </div>
    </div>
<div class="login-footer">
    <p>版权所有 © 1710b第三组 <br/></p>
</div>
</body>
</html>