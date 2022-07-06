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
	<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE9" /> 
    <link rel="stylesheet" href="<%=basePath%>xs/style/xueshengsanji.css" type="text/css"></link>

    <link rel="shortcut icon" href="<%=basePath%>xs/images/favicon.ico" />
    <link rel="bookmark" href="<%=basePath%>xs/images/favicon.ico" />


    <style type="text/css">
        .notice_title4 {
          
            height: 60px;
            background: url(<%=basePath%>xs/images/qqq_03.png) no-repeat;
            font-size: 12px;
            border-bottom: dotted;
            margin-top: -30px;
        }

        .mid_box {
            width: 900px;
        }

        .detail {
            width: 900px;
        }


        a {
            text-decoration: none;
            color: #333333;
        }
		 #qingchu ul li {
     	list-style: disc;
     	
     }   
     #qingchu{
     	padding-left: 30px;
     } 
     
     /*
     .hid ul li:hover
     {
     background-color:yellow;
     height:100px;
     
     }
     */
    </style>




</head>

<body>
    <div class="container">
        <!--  <iframe runat="server" src="<%=basePath%>xs/head.jsp" width="100%" height="222px" frameborder="no" border="0" marginwidth="0" marginheight="0" scrolling="no" allowtransparency="yes"></iframe> -->


        <jsp:include page="${basePath}/xs/head.jsp" flush="true" />

    <!-- <div style="margin: 0 auto;  center; height: 100%; width: 1280px; border: 2px #e1e1e1 solid"> -->

<table style="width:1280px; border:2px #e1e1e1 solid; background-color:#F5F5F5; margin:0 auto;">
 
<tr>
<td style="width:1176px;">
  
<table style="margin: 0 auto; padding:0px;  width: 1176px;  background-color:#F5F5F5;"><tr><td >
            <div class="mid_box333" style="width: 100%; margin-top: 12px;background-color:#F5F5F5 ">
                <div class="notice_title4" style="text-align: center; margin: 0 auto; border: 1px solid #CCCCCC">
                    <div class="lujing" style="margin-left: 5px;font-size:14px;">
                        <c:if test="${parentid ==0}">
						当前位置：<a href="indexs/indexList.action?schoolid=4">首页</a> > <a href="articleList/list.action?schoolid=4&classid=${article.classid}">${article.classname}</a> > <span style="color:#333">正文</span>
						</c:if>
                        <c:if test="${parentid !=0}">
						当前位置：<a href="indexs/indexList.action?schoolid=4">首页</a> <a href="articleList/list.action?schoolid=4&classid=${articles.classid}">${articles.classname}</a>><a href="articleList/list.action?schoolid=4&classid=${article.classid}">${article.classname}</a> > <span style="color:#333">正文</span>
						</c:if>
                    </div>
                    <div class="riqi" style="margin-right: 80px;font-size:14px;">
                        <script language="JavaScript">
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
                
                <!-- 
                <div class="detail" style="border: 1px solid #CCCCCC; margin: 0 auto; width: 950px; padding-bottom: 20px; margin-bottom: 70px; background-color: white;">
                    <p style="font-size: 18px; text-align: center; color: #666; margin: 24px 0 24px 0">${curtent.title}</p>
                    <p>${curtent.content}</p>
                </div>
                 -->
                 
                
<table width=100% cellpadding=5 cellspacing=0 align=center style="border:3px solid #EFEFEF; background-color:border:3px solid #EFEFEF; background-color:#FCFCFC;margin-bottom:60px;">
<tr>
<td align=center style="font-size:14pt;font-weight:800;line-height:24pt;color:#636363">
${curtent.title}</td>
</tr>
<tr><td align=center height=30 style="border-top:1px solid #dfd7ca;font-size:12px;">
作者：${curtent.editor}&nbsp;&nbsp;来源：大学生兼职管理系统   &nbsp;&nbsp;发布时间：${fn:substring(curtent.adddate,0,19)}&nbsp;&nbsp;浏览次数：${curtent.hits}</td></tr>
<tr>
<td  id="qingchu"  style="padding:20;word-break:break-all" height=400 valign=top>
${curtent.content}
</td>
</tr>
</table>
  
                 
                 
                 
            </div>
</td></tr></table>


</td>
</tr>

</table>






    <!--     </div> -->
    </div>
 
<c:if test="${article.classid == 264}">
				 <iframe runat="server" src="<%=basePath%>xs/foot2.jsp" width="100%" height="100px" frameborder="no" border="0" marginwidth="0" marginheight="0" scrolling="no" allowtransparency="yes"></iframe>

				</c:if>
		
				<c:if test="${article.classid != 264}">
				 <iframe runat="server" src="<%=basePath%>xs/foot.jsp" width="100%" height="100px" frameborder="no" border="0" marginwidth="0" marginheight="0" scrolling="no" allowtransparency="yes"></iframe>

				</c:if>



</body>
</html>
