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
<form  style="text-align:center;padding:20px 0;">
    关键词：<input name="rnames" style="margin-bottom:10px;" /><br>
    <input type="button"   value="查询"  onclick="cha()"  />
    <br>
</form>
<a href="javascript:addshan();" class="easyui-linkbutton" data-options="iconCls:'icon-remove',plain:true">批删</a>
<table  border=1   class="easyui-datagrid"   id="aa">  
    <thead>   
        <tr>   
          <th data-options="field:'   ww ',checkbox:true"  align="center"    width="100"  height="100"></th> 
              <th data-options="field:'rid'"   align="center"    width="100"  height="100">用户ID</th>   
              <th data-options="field:'rname'"    align="center"  width="100"  height="100">用户名</th>   
              <th data-options="field:'rpass'"    align="center"  width="100"  height="100">用户密码</th>   
              <th data-options="field:'',formatter:ffbb"    align="center"  width="300" height="100">操作</th>
        </tr>   
    </thead>   
    <tbody>   
    </tbody>   
</table> 
<!-- 新增 -->
<div   id="dd">
</div>

<!-- 修改 -->
<div  id="qwwe">
</div>

<!--  分配角色-->
<div  id="hjhj">
</div>

<script type="text/javascript">
$("#aa").datagrid({ 
    url:'<%=request.getContextPath()%>/ren/addcharenlist.do',
    pagination:true,
    pageNumber:0,
    pageSize:3,
    pageList:[2,3,4,5],
	checkbox:true,
	fitColumns:true,
    striped:true,
    ctrlSelect:true,
	onLoadSuccess:function(){
		$('.delete').linkbutton({    
		    iconCls: 'icon-search',
		    plain:true
		});
		
		$('.delete').linkbutton({    
		    iconCls: 'icon-remove',
		    plain:true
		}); 
		
		$('.editor').linkbutton({    
		    iconCls: 'icon-edit',
		    plain:true
		}); 
	}
});
 function  ffbb(val,row){

     return   "<button  onclick='dell()'>分配角色</button> <button  onclick='save()'>新增用户</button>   ";

 }
  function  dell   (){
	  $('#hjhj').dialog({    
		    title: '分配角色',    
		    width: 400,    
		    height: 200,    
		    closed: false,    
		    cache: false,    
		    href: 'addroleren.jsp',    
		    modal: true ,
		    buttons:[{
				text:'新增',
				handler:function(){
					$.ajax({
				   		 url:"<%=request.getContextPath()%>/ren/updaterolelist.do",
				   			type:"post",
				   		    data:$("#wert").serialize(),
				   		    success:function(result){
				   		    	if (result) {
				   		    		history.go(0)
								}
				   		 }
					}) 
				}
			},{
				text:'取消',
				handler:function(){
				}
			}]
		}); 
}

function  save   (){
    $('#dd').dialog({
        title: '新增用户',
        width: 400,
        height: 200,
        closed: false,
        cache: false,
        href: 'addrenlist.jsp',
        modal: true ,
        buttons:[{
            text:'新增',
            handler:function(){
                $.ajax({
                    url:"<%=request.getContextPath()%>/ren/saverenlist.do",
                    type:"post",
                    data:$("#ff").serialize(),
                    success:function(result){
                        if (result) {
                            history.go(0)
                        }
                    }
                })
            }
        },{
            text:'取消',
            handler:function(){
            }
        }]
    });
}

function   addshan(){
    var sss= $("#aa").datagrid("getSelections");
    var aaa= "";
    for (var i = 0; i < sss.length; i++) {
        aaa += ","+sss[i].rid
    }
    var str1=aaa.substring(1);
    $.ajax({
        url:'<%=request.getContextPath()%>/ren/deleterenlist.do',
        data:{'ids':str1},
        type:'post',
        success:function(result){
            if (result) {
                $("#aa").datagrid("reload");
                alert("删除成功！！！！")
            }
        }
    })

}
	
function  cha(){
	 $('#aa').datagrid({
			queryParams: {
				hno: $('[name="rnames"]').val(),
			}
	 });
	 $('#aa').datagrid("load");
}  
</script>
</body>
</html>