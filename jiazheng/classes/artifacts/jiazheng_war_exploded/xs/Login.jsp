<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE >
<html>
  <head>
    <base href="<%=basePath%>">
    
<title>大学生兼职管理系统</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
 
    <link type="text/css" rel="stylesheet" href="<%=basePath%>xs/style/main.css">
        <link rel="shortcut icon" href="<%=basePath%>xs/images/favicon.ico"/>
<link rel="bookmark" href="<%=basePath%>xs/images/favicon.ico"/>
    
  </head>
  
  <body>
  <div class="container" style="height:auto">
    <div class="red_line"></div>
    <div class="mid_box_l">
    	<div class="bg_pic">
    	<form action="">
    	<input type="text" placeholder="/用户名">
    	<input type="text" placeholder="/密码">
    <button class="forget">忘记密码</button>
    <button class="login_btn">登录</button>

    	</form>
    
    		


    	</div>
    </div>
       
    </div>
    <!-- 源文件设计没保留底部 -->
   <!--  <div class="gray_line"></div>
    <div class="footer">
        <div class="footer_info"></div>
    </div> -->
  </body>
</html>
