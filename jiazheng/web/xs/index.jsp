<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE>
<html>
  <head>
    <base href="<%=basePath%>"/>
    <title>大学生兼职管理系统</title>
	<meta http-equiv="pragma" content="no-cache">
 
	 <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE9" /> 
   
   
           <link rel="shortcut icon" href="<%=basePath%>xs/images/favicon.ico"/>
<link rel="bookmark" href="<%=basePath%>xs/images/favicon.ico"/>
    
 <script type="text/javascript" src="<%=basePath%>xs/js/jquery-3.1.1.js"></script>
  
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
                 background:url(<%=basePath%>xs/images/b_05.png);
            } 
            
                .leader ul li a {
                    width: 120px;
                    height: 40px;
                    text-align: center;
                    line-height: 40px;
                    display: block;
                    
                    color: #666;
                    z-index: 9999;
                }

                    .leader ul li a:hover {
                        color: #f00;
                      
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
            width: 1280px;
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
                    width: 1280px;
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
                width: 1280px;
                height: 20px;
                left: 0;
                bottom: 0;
                background: #000;
                display: none;
            }

            .focus .btn {
              position: absolute;
                width: 780px;
                height: 33px;
                padding: 0px 350px 0px 10px;
               
                bottom: 6px;
                text-align: right;
                
               background-color:rgba(128, 128, 128, 0.29);
            }

                .focus .btn span {
                       display: inline-block;
                    _display: inline;
                    _zoom: 1;
                    width: 125px;
                    height: 8px;
                    line-height: 24px;
                    text-align: center;
                    _font-size: 0;
                    margin-left: 5px;
                    cursor: pointer;
                    background: #FFFFFF;
                }

                    .focus .btn span.on {
                       background: #F2A567;
                    }

            .focus .preNext {
                width: 45px;
                height: 100px;
                position: absolute;
                top: 90px;
                background: url(<%=basePath%>xs/img/sprite.png) no-repeat 0 0;
                cursor: pointer;
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
     
           
    </style>
 
    <script type="text/javascript" src="<%=basePath%>xs/js/sl.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $.focus("#focus001");
        });
    </script>
 <script>
 
    var currentindex=1;
    //$("#flashBg").css("background-color",$("#flash1").attr("name"));
    function changeflash(i) {
        currentindex=i;
        for (j = 1; j <= $('#flash a').length ; j++) {
            if (j==i)
            {$("#flash"+j).fadeIn("normal");
                $("#flash"+j).css("display","block");
                $("#f"+j).removeClass();
                $("#f"+j).addClass("dq");
                $("#flashBg").css("background-color",$("#flash"+j).attr("name"));
            }
            else
            {$("#flash"+j).css("display","none");
                $("#f"+j).removeClass();
                $("#f"+j).addClass("no");}
        }}
    function startAm(){
        timerID = setInterval("timer_tick()",3000);
    }
    function stopAm(){
        clearInterval(timerID);
    }
    function timer_tick() {
        currentindex = currentindex >= $('#flash a').length ? 1 : currentindex + 1;
        changeflash(currentindex);}
    $(document).ready(function(){
        $(".flash_bar div").mouseover(function(){stopAm();}).mouseout(function(){startAm();});
        startAm();
    });
    
      function testdddd()
    {
    
    window.open('<%=basePath%>articleList/list.action?schoolid=4&classid=262');
    }
</script>

  <link rel="stylesheet" href="<%=basePath%>xs/style/czj_style.css" type="text/css"></link> 
 
  
  
 
   
  
  <script type="text/javascript">
       var ddhtml = "";
        $(function () {
            $.ajax({
                url: "indexs/getphoto.action?schoolid=4",
                type: "POST",
                async: false,
                success: function (downmsg) {
                
                    for (var i = 0; i < downmsg.photo.length; i++) {
                    
                    if(i==0)
                    {
                     
                    ddhtml += '<a name="#f5f3f4" style="display:block;background-image:url(<%=basePath%>'+downmsg.photo[i].imgurl+' )" id="flash'+(i+1)+'"   ></a>';
                    }
                    else
                     {
                      ddhtml += '<a name="#f5f3f4" style="display: none;background-image:url(<%=basePath%>'+downmsg.photo[i].imgurl+' )" id="flash'+(i+1)+'"   ></a>';
                   
                    }
                  }
                }

            });
  $('#flash').html(ddhtml);
                
        })
     
    </script>
 
 
 
 <script type="text/javascript">
 
 function testddd()
 {
 window.open("<%=basePath%>articleList/list.action?schoolid=4&classid=261");
 
 }
 
 
 function aaabbbcc()
 {
 
  window.open("articleList/list.action?schoolid=4&classid=260");
 }
  
 
 </script>
  
  
  </head>
  
  <body> 
      <jsp:include   page="${basePath}/xs/head.jsp" flush="true"/> 
      <div class="big_focus111">
            <div class="focus" id="focus001" >
                <ul>
                 <c:forEach items="${publicity}" var="pls">
                    <li><a href="${pls.linkurl}" target="_blank">
                        <img style="width:1280px"  src="${pls.imgurl}"  /></a></li>
                 </c:forEach>
                </ul>
            </div>
        </div> 
        <div class="neirong">
            <div class="left_box">
                <div class="left_top">
                
                    <div  id="flash" class="overflow">

    <a name="#f5f3f4" style="display:block;background-image:url(<%=basePath%>xs/images/pic1.jpg)" id="flash1" target="_blank" href="#" ></a>
    <a name="#f5f3f4" style="display: none;background-image:url(<%=basePath%>xs/images/pic2.jpg)" id="flash2" target="_blank" href="#" ></a>
    <a name="#e5e7e8" style="display: none;background-image:url(<%=basePath%>xs/images/pic3.jpg)" id="flash3" target="_blank" href="#"></a>


<!-- 
<a name="#f5f3f4" style="background-image:url(http://localhost:8080/schools/xs/images/pic1.jpg)" id="flash1"  target="_blank" href="#" ></a><a name="#f5f3f4" style="background-image:url(http://localhost:8080/schools/xs/images/pic1.jpg)" id="flash2"  target="_blank" href="#" ></a><a name="#f5f3f4" style="background-image:url(http://localhost:8080/schools/xs/images/pic1.jpg)" id="flash3"  target="_blank" href="#" ></a>
  -->
</div> 
                     
                     
                </div>
                <div class="left_link" style="background-color:white;">
                    <ul>
                        <li>
                            <a href="articleList/list.action?schoolid=4&classid=263"><img src="<%=basePath%>xs/images/ac_03.png" alt="" width="80%" style="margin: 8px 24px 0 24px"></a>
                        </li>
                        <li>
                            <a href="articleList/list.action?schoolid=4&classid=264"> <img src="<%=basePath%>xs/images/ac_06.png" alt="" width="80%" style="margin: 8px 24px 0 24px"></a>
                        </li>
                        
                    </ul>
                </div>
                <div id="gundong" class="left_link" style="display:none;">
                    <ul>
                     	 <c:forEach items="${photo}" var="pls">
                    		 <li>
                           		 <img src="${pls.imgurl}" alt="" width="80%" style="margin: 8px 24px 0 24px">
                       		 </li>
                 		</c:forEach>
                    </ul>
                </div>
            </div>
            <div class="mid_box">
                <div class="mid_top">
                    <div class="notice_title111" style="cursor:pointer" onclick="aaabbbcc()">
                    
            <!--        <a href="#"><img style="width:387px;"   src="<%=basePath%>xs/images/ab_03.png" /> </a> -->
                    
                    </div>
                    <ul style="height: 177px">
                    	<c:forEach items="${alist260}" var="pls">
								<li class="li_fir">
									<div class="txt">
									<a href="${pls.linkurl}"
											title="${pls.titles}">${pls.title}</a>
									</div>
									<div style="float: right; color: #4e4e4e">
										<span>|</span>&nbsp;${fn:substring(pls.adddate,5,10)}&nbsp;
										<span>|</span>
									</div>
								</li>
							</c:forEach>
							<c:forEach items="${blist260}" var="pls">
								<li class="li_zhong">
									<div class="txt">
										<a
											href="${pls.linkurl}"
											title="${pls.titles}">${pls.title}</a>
									</div>
									<div style="float: right; color: #4e4e4e">
										<span>|</span>&nbsp;${fn:substring(pls.adddate,5,10)}&nbsp;
										<span>|</span>
									</div>
								</li>
							</c:forEach>
							<c:forEach items="${clist260}" var="pls">
								<li class="li_last">
									<div class="txt">
										<a href="${pls.linkurl}"
											title="${pls.titles}">${pls.title}</a>
									</div>
									<div style="float: right; color: #4e4e4e">
										<span>|</span>&nbsp;${fn:substring(pls.adddate,5,10)}&nbsp;
										<span>|</span>
									</div>
								</li>
							</c:forEach>
                    </ul>
                </div>
                <div class="mid_top" style="margin-top: 20px; height: 187px">
                    <div class="notice_title2111"  style="cursor:pointer"  onclick="testddd()">
         
              <!-- <a href="#"><img style="width:387px;" src="<%=basePath%>xs/images/ab_09.png"</a> -->
                    </div>
                    <ul style="height: 177px; margin-top: 12px">
                       	<c:forEach items="${alist261}" var="pls">
								<li class="li_fir">
									<div class="txt">
									<a href="${pls.linkurl}"
											title="${pls.titles}">${pls.title}</a>
									</div>
									<div style="float: right; color: #4e4e4e">
										<span>|</span>&nbsp;${fn:substring(pls.adddate,5,10)}&nbsp;
										<span>|</span>
									</div>
								</li>
							</c:forEach>
							<c:forEach items="${blist261}" var="pls">
								<li class="li_zhong">
									<div class="txt">
										<a
											href="${pls.linkurl}"
											title="${pls.titles}">${pls.title}</a>
									</div>
									<div style="float: right; color: #4e4e4e">
										<span>|</span>&nbsp;${fn:substring(pls.adddate,5,10)}&nbsp;
										<span>|</span>
									</div>
								</li>
							</c:forEach>
							<c:forEach items="${clist261}" var="pls">
								<li class="li_last">
									<div class="txt">
										<a href="${pls.linkurl}"
											title="${pls.titles}">${pls.title}</a>
									</div>
									<div style="float: right; color: #4e4e4e">
										<span>|</span>&nbsp;${fn:substring(pls.adddate,5,10)}&nbsp;
										<span>|</span>
									</div>
								</li>
							</c:forEach>

                    </ul>
                </div>
            </div>
            <div class="right_box" >
                <div class="notice_title3111" style="cursor:pointer; " onclick="testdddd()"></div>
                <ul>
                <c:forEach items="${list262}" var="pls">
 
                  <li><a href="${pls.linkurl}" title="${pls.titles}">[${fn:substring(pls.title,0,23)}]</a></li>
 
                </c:forEach>
                  
                </ul>
                
               
                 
                 <ul style="height:30px;margin-top:-10px;">
                 <li >
                         <a href="articleList/list.action?schoolid=4&classid=262">
                         
                        <img style="height:26px;width:100%;" src="<%=basePath%>xs/images/d_03.png"/>
                        </a>
                    </li>
                </ul>
                
                
                
            </div>

        </div>
    </div>
         <iframe runat="server" src="<%=basePath%>xs/foot.jsp" width="100%" height="100px" frameborder="no" border="0" marginwidth="0" marginheight="0" scrolling="no" allowtransparency="yes"></iframe>
     
  </body>
</html>
