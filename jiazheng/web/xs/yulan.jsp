<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
 
   <link rel="stylesheet" href="<%=basePath%>xs/style/xueshengsanji.css" type="text/css"></link>
  
  
  
  <style type="text/css">
  
  .notice_title4{
    width: 950px;
    height: 60px;
    background: url(<%=basePath%>xs/images/qqq_03.png) no-repeat;
    font-size:12px;
    
    border-bottom:dotted;
    
    margin-top:-30px;
}

.mid_box
{
width:900px;
}
.detail
{
width:900px;
}
  

a{
text-decoration:none;
color:#333333;
}
  </style>
  
  
  
  
  </head>
  
  <body>
     <div class="container">
   <!--  <iframe runat="server" src="<%=basePath%>xs/head.jsp" width="100%" height="222px" frameborder="no" border="0" marginwidth="0" marginheight="0" scrolling="no" allowtransparency="yes"></iframe> -->
       
       
        <jsp:include   page="${basePath}/xs/head.jsp" flush="true"/> 
      
       <div style="margin:0 auto; text-align: center; height:100%;">
         
            <div class="mid_box" style="width:100%; margin-top:32px;">
                <div class="notice_title4" style=" text-align:center;margin:0 auto;border: 1px solid #CCCCCC" >
                    <div class="lujing" style="margin-left:65px">
                    
						当前位置：<a href="indexs/indexList.action?schoolid=4">首页</a> >  <span style="color:#333">预览</span>
						
                    </div>
                    <div class="riqi" style="margin-right:65px">
					<script language=JavaScript>
								    today = new Date();
								    var day;
								    var date, month, year
								    year = today.getFullYear();
								    month = today.getMonth() + 1
								    date = today.getDate()
								    year = year + "年"
								    month = month + "月"
								    date = date + "日"
								    document.write(year + month + date)
								</script>
					</div>
                </div> 
			<div class="detail" style="border: 1px solid #CCCCCC; margin:0 auto; width:950px; padding-bottom:20px; margin-bottom:70px;">
			<p style="font-size:18px;text-align:center;color:#666;margin:24px 0 24px 0">${article.title}</p>
			<p>${article.content}</p>
			</div>
            </div>
       
    </div>
  
<iframe runat="server" src="<%=basePath%>xs/foot.jsp" width="100%" height="50px" frameborder="no" border="0" marginwidth="0" marginheight="0" scrolling="no" allowtransparency="yes" style="position:fixed; bottom:0px;"></iframe>
     
        
   
   
   
  </body>
</html>
