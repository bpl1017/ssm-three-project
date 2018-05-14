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
<script type="text/javascript" src="<%=request.getContextPath()%>/easyui/util-js.js"></script>
<!-- 引入 EasyUI 的风格样式文件-->
<link rel="stylesheet" href="<%=request.getContextPath() %>/easyui/themes/black/easyui.css" type="text/css"/>
<!-- 引入 EasyUI 的图标样式文件-->
<link rel="stylesheet" href="<%=request.getContextPath() %>/easyui/themes/icon.css" type="text/css"/>
</head>
<body>
   <form id="wert">
      <input type="hidden" name="roid">
               用户角色:<input class="easyui-validatebox" type="text" name="roname"  readonly="readonly"/> 
        <table> 
          <tr id="roletree" ></tr>
        </table>  
     </form>
 
<script type="text/javascript">
var pp= $("#aa").datagrid("getSelected");
$("[name='roname']").val(pp.roname);
$("[name='roid']").val(pp.roid);
$(function(){
	  $.ajax({
	   		 url:"<%=request.getContextPath()%>/role/addchamenulist.do",
	   			type:"post",
	   		    data:{"roid":pp.roid},
	   		    success:function(data){
	   		    	$('#roletree').tree({
	   		    	 method:"post",
	   		        checkbox:true,
	   		        parentField:'pid',
	   				data:eval("("+data+")"),
	   		         })
	   		    }
})
})
</script>
</body>
</html>