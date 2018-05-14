<%--
  Created by IntelliJ IDEA.
  User: new鹏
  Date: 2018/5/1
  Time: 22:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
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
<body class="easyui-layout">

<div data-options="region:'north',split:true" style="height:100px;">

    <h1>我的玩具</h1>

</div>
<div data-options="region:'south',split:true" style="height:50px;text-align:center;">

    <h4>版权所有 © BPL  2018-2019 1710B</h4>

</div>

<div data-options="region:'west',title:'菜单',split:true" style="width:200px;">

    <div id="tree">


    </div>
</div>
<div data-options="region:'center'" style="padding:5px;background:#eee;">
    <div  id="tabs"  class="easyui-tabs"   data-options="fit:true">

    </div>

</div>


<script type="text/javascript">
    //加载Tree的数据
    $(function(){
        $.ajax({
            url:'<%=request.getContextPath()%>/menu/menulist.do',
            type:'get',
            success:function(result){
                $('#tree').tree({
                    method:"post",
                    parentField:'pid',
                    data:eval("("+result+")"),
                    onClick: function(node){
                        //判断点击的节点是否包含子节点
                        var   children=	$('#tree').tree('getChildren', node.target);
                        if(children == ''){
                            //没有子节点   打开选项卡
                            var tabsObj=  $("#tabs").tabs("getTab",node.text);
                            if(tabsObj==null){
                                $('#tabs').tabs('add',{
                                    title:node.text,
                                    content:"<iframe frameborder='0' scrolling='no'  width='100%'  height='100%'  src = '"+node.href+"' />",
                                    closable:true,
                                    tools:[{
                                        iconCls:'icon-mini-refresh',
                                        handler:function(){
                                            alert('refresh');
                                        }
                                    }]
                                });

                            }else{
                                $("#tabs").tabs("select",node.text);
                            }
                        }
                    }
                });
            }
        })
    })
</script>
</body>
</html>
