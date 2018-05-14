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
     <form id="wert">
      <input type="hidden" name="rid">
               用户名:<input class="easyui-validatebox" type="text" name="rname"  readonly="readonly"/> 
        <table> 
          <tr id="datastr" ></tr>
        </table>  
     </form>

<script type="text/javascript">
var pp= $("#aa").datagrid("getSelected");
$("[name='rname']").val(pp.rname);
$("[name='rid']").val(pp.rid);
var  ll="";
  $(function(){
	  $.ajax({
	   		 url:"<%=request.getContextPath()%>/ren/addcharolelist.do",
	   			type:"post",
	   		    data:{"rid":pp.rid},
	   		    success:function(result){
	   		    	
	   		    	var   result1=eval("("+result+")")
	   		    	 
	   		    for (var i = 0; i < result1.length; i++) {
	   		       ll+=result1[i].roid;
				}
	   		     $.ajax({
	   		    	 url:"<%=request.getContextPath()%>/ren/charolelist.do",
	 	   			 type:"post",
	 	   		     success:function(result){
	 	   		    	var   result2=eval("("+result+")")
	 	   		    	var  str="";
	 	   		 
	 	   		    	for (var j = 0; j < result2.length; j++) {
	 	   		    		var  count=0;
	 	   		    	 for (var i = 0; i < ll.length; i++) {
	   		    	    	if (result2[j].roid==ll[i]) {
								str+="<input type='checkbox' name='roid'  checked value='"+result2[j].roid+"'>"+result2[j].roname
							     count=1;
								break;
	   		    	    	}
						}
	 	   		    	 if (count!=1) {
								str+="<input type='checkbox' name='roid'  value='"+result2[j].roid+"'>"+result2[j].roname
						}
	 	   		      }
	 	   		    
	 	   		    $("#datastr").html(str);
	 	   		 }
	   		    	 
	   		     }) 
	   		   
	   		 }
		}) 
	  
  })  


</script>
</body>
</html>