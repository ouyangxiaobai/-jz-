<%@page language="java" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
 <html lang="en">
<head>
	<meta charset="utf-8" />
	<title>后台管理系统</title>
 	<jsp:include page="media.jsp"></jsp:include> 
 
 	
   <script type="text/javascript" src="media/js/left.js"></script> 
 
  <script src="<%=basePath%>media/js/jquery-1.8.3.min.js"></script>
 <script src="<%=basePath%>media/js/adapter.js"></script> <!--rem适配js-->

<link rel="stylesheet" href="<%=basePath%>media/css/base.css"> <!--初始化文件-->
<link rel="stylesheet" href="<%=basePath%>media/css/menu.css"> <!--主样式--> 


  <script type="text/javascript">

       function openddd(aaa) {

           document.getElementById("aaabb").src = aaa;

       }



function tuichu()
{
window.open('login.jsp','_self');
 
}


    </script>

</head>

<body>
<iframe  runat="server" src="<%=basePath%>media/top.jsp" width="100%" height="50px" frameborder="no" border="0" marginwidth="0" marginheight="0" scrolling="no" allowtransparency="yes"></iframe>
   
<table style="width:100%;">
	<tr>

  <td style="width:2em" valign="top" style="background-color:black;">

	<div id="menu" style="height:850px;">
    <!--隐藏菜单-->
    <div id="ensconce">
        <h2>
            <img src="<%=basePath%>media/images/show.png" alt="">
         家政管理系统
        </h2>
    </div>

    <!--显示菜单-->
    <div id="open">
        <div class="navH">
家政管理系统
 
        </div>
        <div class="navBox">
			<ul id="leftmenuclick"> 
				
				 <li>
                    <h2 class="obtain">北京景点<i></i></h2>
                    <div class="secondary">
                        <h3><a href="javascript:void(0)" onclick='openddd("media/welcome.jsp")'>  首页</a></h3>
                        <h3>十三陵</h3>
                        <h3>圆明园</h3>
                        <h3>长城</h3>
                        <h3>雍和宫</h3>
                        <h3>天坛公园</h3>
                    </div>
                </li>
                <li>
                    <h2 class="obtain">南京景点<i></i></h2>
                    <div class="secondary">
                        <h3>栖霞寺</h3>
                        <h3>夫子庙</h3>
                        <h3>海底世界</h3>
                        <h3>中山陵</h3>
                        <h3>乌衣巷</h3>
                        <h3>音乐台</h3>
                    </div>
                </li>
                <li>
                    <h2 class="obtain">上海景点<i></i></h2>
                    <div class="secondary">
                        <h3>东方明珠</h3>
                        <h3>外滩</h3>
                        <h3>豫园</h3>
                        <h3>文庙</h3>
                        <h3>世博园</h3>
                        <h3>田子坊</h3>
                    </div>
                </li>
                <li>
                    <h2 class="obtain">深圳景点<i></i></h2>
                    <div class="secondary">
                        <h3>华侨城</h3>
                        <h3>观澜湖</h3>
                        <h3>世界之窗</h3>
                        <h3>东门老街</h3>
                        <h3>七娘山</h3>
                        <h3>光明农场</h3>
                    </div>
                </li>
                <li>
                    <h2 class="obtain">广州景点<i></i></h2>
                    <div class="secondary">
                        <h3>白云山</h3>
                        <h3>长隆</h3>
                        <h3>黄花岗公园</h3>
                        <h3>中山纪念堂</h3>
                        <h3>华南植物园</h3>
                        <h3>南沙湿地公园</h3>
                    </div>
                </li>
				  
				
		            </ul>
        </div>
    </div>
</div>


</td>
    <td valign="top" >
   <iframe id="aaabb" runat="server" src="<%=basePath%>media/welcome.jsp" width="100%" height="1000px" style="overflow:scroll;" frameborder="no" border="0" marginwidth="0" marginheight="0" scrolling="yes" allowtransparency="yes"></iframe>
   	<td>
	</tr>
	 
	
	</table>

<script src="<%=basePath%>media/js/menu.js"></script> <!--控制js-->

</body>
 
</html>