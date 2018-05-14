<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- 引入 JQuery -->
<script type="text/javascript" src="<%=request.getContextPath() %>/jquery/jquery.min.js"></script>
<!-- 引入 EasyUI -->
<script type="text/javascript" src="<%=request.getContextPath() %>/easyui/jquery.easyui.min.js"></script>
<!-- 引入 EasyUI 的中文国际化 js，让 EasyUI 支持中文 -->
<script type="text/javascript" src="<%=request.getContextPath() %>/easyui/locale/easyui-lang-zh_CN.js"></script>

<!-- 引入 EasyUI 的风格样式文件-->
<link rel="stylesheet" href="<%=request.getContextPath() %>/easyui/themes/black/easyui.css" type="text/css"/>
<!-- 引入 EasyUI 的图标样式文件-->
<link rel="stylesheet" href="<%=request.getContextPath() %>/easyui/themes/icon.css" type="text/css"/>
</head>
<body>
	<div  style="margin:0 auto; width:300px; margin-top:200px;"> 
	   <div id="loginDiv" class="easyui-panel" title="登录页面"  style="width:300px;height:160px;  padding:10px;background:#fafafa;"  >   
			  <form id="loginForm">   
				<div>   
					<label >登录账户:</label>
					<input class="easyui-validatebox" type="text" name="rname" data-options="required:true" />   
				</div>   <br>
				<div>   
					<label >登录密码:</label>
					<input class="easyui-validatebox" type="password" name="rpass" data-options="required:true" />   
				</div> <br>
				<div style="text-align:center;">     
					<input  type="reset" id="zcButton" value="重置"/> 
					<input  type="button" id="loginButton" value="Login"/> 
				</div>				
			  </form>  
		</div>
     </div>
     
     <script type="text/javascript">
	     $("#loginButton").on("click",function(){
	  		$.ajax({
	  			url:"<%=request.getContextPath()%>/ren/login.do",
	  			type:"post",
	  			data:$("#loginForm").serialize(),
	  			dataType:"json",
	  			success:function(results){
	  				if(results=="userNo"){
						alert("证号密码错误！")
						}else{
							alert("登录成功!");
							location.href = "index.jsp";
						}
	  			},
	  			error:function(){
	  				alert("登录出错!");
	  			}
	  		});
	  	});
     </script>
</body>
</html>