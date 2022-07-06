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
 
		<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE9" /> 
<script type="text/javascript" src="<%=basePath%>xs/js/jquery-3.1.1.js"></script>
  
 
          <link rel="shortcut icon" href="<%=basePath%>xs/images/favicon.ico"/>
<link rel="bookmark" href="<%=basePath%>xs/images/favicon.ico"/>
    
   
    <style type="text/css">
        * {
            margin: 0;
            padding: 0;
               font-family:微软雅黑;
        }

        ul, li {
            list-style: none;
        }

        a {
            text-decoration: none;
        }

        .leader {
        
            border-right: none;
            overflow: hidden;
        }

            .leader ul li {
                float: left;
                 background:url(../xs/images/b_05.png);
            }

                .leader ul li a {
                    width: 120px;
                    height: 40px;
                    text-align: center;
                    line-height: 40px;
                    display: block;
                    
                   
                    /*background: #eee;*/
                    color: #666;
                    z-index: 9999;
                }

                    .leader ul li a:hover {
                        color: #f00;
                        background: url(<%=basePath%>xs/images/b_03.png);
                    }

                .leader ul li ul {
                    position: absolute;
                    display: none;
                    margin-top: -5px;
                    z-index: 9999;
                }

                    .leader ul li ul li {
                        float: none;
                    }
 
                .leader ul li:hover ul {
                    display: block;
                }
    </style>

    <style type="text/css">
        body {
            /*font-size: 12px;
            color: #222;
            font-family: Verdana,Arial,Helvetica,sans-serif;
            background: #f0f0f0;*/
        }

        .focus ul, li {
            list-style: none;
            margin: 0px;
            padding: 0px;
        }

        img {
            border: 0;
        }
        /* 仿QQ商城点击左右滚动jquery焦点图特效插件 1026 337 */
        .focus {
            width: 1026px;
            height: 337px;
            overflow: hidden;
            position: relative;
            z-index: 10;
        }

            .focus ul {
                height: 380px;
                position: absolute;
            }

                .focus ul li {
                    float: left;
                    width: 1026px;
                    height: 337px;
                    overflow: hidden;
                    position: relative;
                    background: #000;
                }

                    .focus ul li div {
                        position: absolute;
                        overflow: hidden;
                    }

            .focus .btnBg {
                position: absolute;
                width: 1026px;
                height: 20px;
                left: 0;
                bottom: 0;
                background: #000;
                display: none;
            }

            .focus .btn {
                position: absolute;
                width: 780px;
                height: 23px;
                padding: 0px 10px 0px 10px;
                right: 0;
                bottom: 6px;
                text-align: right;
            }

                .focus .btn span {
                    display: inline-block;
                    _display: inline;
                    _zoom: 1;
                    width: 25px;
                    height: 24px;
                    line-height: 24px;
                    text-align: center;
                    _font-size: 0;
                    margin-left: 5px;
                    cursor: pointer;
                    background: #fff;
                }

                    .focus .btn span.on {
                        background: #fff;
                    }
 
            .focus .preNext {
                width: 45px;
                height: 100px;
                position: absolute;
                top: 90px;
                background: url(<%=basePath%>xs/img/sprite.png) no-repeat 0 0;
                cursor: pointer;
            }
            
            table tr td
            {
            
            font-size:14px;
            }

            .focus .pre {
                left: 0;
            }

            .focus .next {
                right: 0;
                background-position: right top;
            }
             body {
            margin: 0 auto;
        }
        .header {
    width: 100%;
    height: 192px;
    background: url(../images/a_002.png) red repeat-x;
}
    .cir_pointer{width:8px;height:8px;border-radius: 60px;border:1px red solid;float:left;margin:6px 4px 0 4px;}
.cir_pointer_gray{margin:4px 4px 0 4px;width:6px;height:6px;border:1px #909090 solid;}
    
  
    
    </style>

    <script type="text/javascript" src="<%=basePath%>xs/js/sl.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $.focus("#focus001");
        });
        
        
        function testdddd(a1,a2)
        { 
         
         if(a2!='')
         {
          
         window.open(a2);
         
         }
         else
          {
         
         window.open('<%=basePath%>/showarticle/shows.action?schoolid=4&articleid='+a1);
         
         }
        //window.open(${list.linkurl});
        
        }
        
    </script>
    
    
    

  <link rel="stylesheet" href="<%=basePath%>xs/style/css.css" type="text/css"></link>
   
  <script type="text/javascript" src="<%=basePath%>xs/js/xj.js"></script></head>
  
  <body> 
      <jsp:include   page="${basePath}/xs/head.jsp" flush="true"/> 
         <table class="neirong"><tr><td> 
    <div id="a8">
        <div id="a8_1" style="background-color:white;">
             
              <div class="left_box1111">
                <div class="left_top" style="width:100%;height:100%;">
                  <table style="width:100%; text-align:center; ">
					   <tr style="background-color:#F38F1A "><td style="height:20px;">
					   <span style="font-size:18px; color:white; width:100%;"" > ${topname}</span>
					   </td> </tr>
					   
					  <tr><td style="border-width:0px;">  <img  style="border-width:0px;" src="<%=basePath%>xs/images/downarr.png" /> </td></tr>
					  
					   </table>
                </div>
                <ul>
                   <c:forEach items="${lanmulist}" var="list">
								 <li onmouseout="ocdd('img${list.classid}','${list.defaultpic}')" onmouseover="cltd('img${list.classid}','${list.titlepic}')">
		                        	<a href="${list.linkurl}"> <img style="border-width:0px;" id="img${list.classid}" src="${list.defaultpic}" /></a>
		                    	 </li>
						</c:forEach>
                </ul>
            </div>
        </div>

        <div id="a8_2" style="padding:0px; background-color:#FAFAFA;height:582px;">
            <!--右侧内容-->

            <table width="100%" border="0" cellpadding="0" cellspacing="0" style="background-image:url(<%=basePath%>xs/images/q_03_03.png);height:50px;padding-top:26px;background-repeat:no-repeat;">
                <tr>
                    <td style="border-bottom: 1px solid #dfd7ca">
                        <table width="100%" align="center" cellpadding="0" cellspacing="0">
                            <tr>
                            	<c:if test="${parentid !=0}">
                                <td height="30" style="padding-left:60px; width:420px">当前位置：
                                    	<a href="indexs/indexList.action?schoolid=4">首页 </a>>
								<a href="articleList/list.action?schoolid=4&classid=${classids}">
									${topname}</a>>
								<span style="color: #333">${name}</span>
                                </td>
                                </c:if>
                                	<c:if test="${parentid ==0}">
                                <td height="30" style="padding-left:60px; width:420px">
                                		当前位置：
                                		<a href="indexs/indexList.action?schoolid=4" >首页</a> > 
                                    	${topname}
                                </td>
									</c:if>
                                <td  style="padding-left:265px;">
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

                                        if (today.getDay() == 0) day = "日"
                                        if (today.getDay() == 1) day = "一"
                                        if (today.getDay() == 2) day = "二"
                                        if (today.getDay() == 3) day = "三"
                                        if (today.getDay() == 4) day = "四"
                                        if (today.getDay() == 5) day = "五"
                                        if (today.getDay() == 6) day = "六"
                                       // day = "星期" + day
                                        document.write(year + month + date + "&nbsp;&nbsp;" )
                                    </script>

                                </td>
                            </tr>

                        </table>


                    </td>
                </tr>
            </table>
            <br>
			<c:if test="${contentCount > 1}">
			  <table width="100%" cellpadding="5" cellspacing="1" bgcolor="white" style="font-size: 10pt;padding-left:34px;">
                <tr style="">
                   
                    <td   style="color:#676767;"> <div class="cir_pointer"></div>标题</td>
                    <td  width="160"  height="32" style="color:#676767;"> <div class="cir_pointer"></div>日期时间</td>
                    <!-- <td  width="140" height="32"   style="text-align:left; padding-left:19px;">  <div class="cir_pointer"></div> <span style="color:#676767;">  浏览量</span></td>  -->
                 </tr>
                <c:forEach items="${contentList}" var="list">
                <tr bgcolor="ffffff" onmouseover="this.style.background='#fbf3e7'" onmouseout="this.style.background='#ffffff'">
                    
                    <td style="border-bottom: 1px solid #dfd7ca">
                    <div class="cir_pointer cir_pointer_gray"></div>
						<c:if test="${list.linkurl !='' }">
						<a href="${list.linkurl}" >${list.title}</a>
						</c:if>
						<c:if test="${list.linkurl == ''}">
						<a href="showarticle/shows.action?schoolid=4&articleid=${list.articleid}" title='${list.titles}'>${list.title}</a>
						</c:if>
                    </td>
                    <td width="120" height="25" style="border-bottom: 1px solid #dfd7ca"> <div class="cir_pointer cir_pointer_gray"></div>${fn:substring(list.adddate,0,19)}</td>
					<!-- <td  width="40" height="25" style="border-bottom: 1px solid #dfd7ca;padding-left:19px;"><div class="cir_pointer cir_pointer_gray"></div> ${list.hits}</td> -->
                </tr>
			</c:forEach>
            </table>
			
            <br>

            	<table id="page" width=100% cellpadding=0 cellspacing=0
						style="font-size: 9pt; padding-left:35px;">
						<tr>
							<td style="width: 28px;">
								<a
									href="articleList/list.action?schoolid=4&classid=${classid}&currentPage=1">
									<img src="<%=basePath%>xs/imgg/l11.png" /> </a>
							</td>
							<td style="width: 28px;">
								<a
									href="articleList/list.action?schoolid=4&classid=${classid}&currentPage=${pageBean.currentPage-1}">
									<img src="<%=basePath%>xs/imgg/l1.png" /> </a>
							</td>
							<td>
								<font color=#931b1c>[${pageBean.currentPage}]</font>
							</td>
							<td style="width: 28px;">
								<a
									href="articleList/list.action?schoolid=4&classid=${classid}&currentPage=${pageBean.currentPage+1}">
									<img src="<%=basePath%>xs/imgg/r1.png" /> </a>
							</td>
							<td style="width: 28px;">
								<a
									href="articleList/list.action?schoolid=4&classid=${classid}&currentPage=${pageBean.totalPage}">
									<img src="<%=basePath%>xs/imgg/r11.png" /> </a>
							</td>
							<td>
								&nbsp;&nbsp;共
								<b>${pageBean.allCount}</b>个&nbsp;&nbsp;页次:
								<b>${pageBean.currentPage} / ${pageBean.totalPage}</b>
								&nbsp;&nbsp;
								<b>${pageBean.pageSize}</b>个/页&nbsp;&nbsp;共
								<b> ${pageBean.totalPage}</b> 页&nbsp;&nbsp;
							</td>
						</tr>
					</table>
            <br>
			</c:if>
			<c:if test="${contentCount == 1}">
			<table width=100% cellpadding=5 cellspacing=0 align=center>
			<tr>
			<td align=center style="font-size:14pt;font-weight:800;line-height:24pt;color:875302">
			${article.title}</td>
			</tr>
			<tr><td align=center height=30 style="border-top:1px solid #dfd7ca">
			作者：${article.editor}&nbsp;&nbsp;来源：大学生兼职管理系统&nbsp;&nbsp;发布时间：${fn:substring(article.adddate,0,19)}&nbsp;&nbsp;浏览次数：${article.hits}</td></tr>
			<tr>
			<td style="padding:20;font-size:14px;line-height:30px;word-break:break-all" height=400 valign=top>
			${article.content}
			</tr>
			</table>
					
			</c:if>
          
 
            <!--右边结束-->


        </div>



    </div>
    </td></tr></table>
        
<c:if test="${classid == 264}">
				 <iframe runat="server" src="<%=basePath%>xs/foot2.jsp" width="100%" height="100px" frameborder="no" border="0" marginwidth="0" marginheight="0" scrolling="no" allowtransparency="yes"></iframe>

				</c:if>
		
				<c:if test="${classid != 264}">
				 <iframe runat="server" src="<%=basePath%>xs/foot.jsp" width="100%" height="100px" frameborder="no" border="0" marginwidth="0" marginheight="0" scrolling="no" allowtransparency="yes"></iframe>

				</c:if>



  </body>
</html>
