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
    <base href="<%=basePath%>">
    
    <title>大学生兼职管理系统</title>
     <meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
		<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE9" /> 
     <link rel="stylesheet" href="<%=basePath%>xs/style/main.css" type="text/css"></link>
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
      
        }

            .leader ul li {
                float: lfeft; 
              
                  background:url(<%=basePath%>xs/images/b_05.png);
            }

                .leader ul li a {
                    width: 120px;
                    height: 40px;
                    text-align: center;
                    line-height: 32px;
                    display: block;
                  
                    /*background: #eee;*/
                    color: white;
                    z-index: 9999;
               
                }

                    .leader ul li a:hover {
                        color: red;
                     
                    }

                .leader ul li ul {
                    position: absolute;
                    display: none;
                    margin-top: -5px;
                    z-index: 9999;
                }

                    .leader ul li ul li {
                        float: none;
                             width:115px;
                    }

                        .leader ul li ul li a {
                           
                        }

                .leader ul li:hover ul {
              display: block;
                }
                
                
                
    </style>

    <style type="text/css">
        body {
    
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
                    width: 1280px
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
                width: 1280px
                height: 20px;
                left: 0;
                bottom: 0;
                background: #000;
                display: none;
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
    </style>
    <script type="text/javascript" src="<%=basePath%>xs/js/jquery.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>xs/js/sl.js"></script>
     <script type="text/javascript">
           $(function () {
            var top = "";
            var ddd=0;
            var totalhtml="";
            $.ajax({
                url: "indexs/lanmu.action?schoolid=4",
                type: "POST",
                async: false,
                success: function (newmsg) {
                    for (var i = 0; i < newmsg.lanmu.length; i++) {

                        var down = "";
                        top="";
                        $.ajax({
                            url: " indexs/lanmuto.action?",
                            data: {
                                'classid': newmsg.lanmu[i].classid,
                                'schoolid':"4"
                            },
                            type: "POST",
                            async: false,
                            success: function (downmsg) { 
                            
                                if (downmsg.lanmuto.length > 0) {
                                  top += '  <li class="l1" style="background:url(<%=basePath%>yjsnew/images/b_05.png)">  <a   href="'+newmsg.lanmu[i].linkurl+'">' + newmsg.lanmu[i].classname + '</a>  <div class="hid"><ul>';

                                for (var j = 0; j < downmsg.lanmuto.length; j++) {
                                      
                                        top += ' <li><a  href="'+downmsg.lanmuto[j].linkurl+'">'+downmsg.lanmuto[j].classname+'</span></a></li>';
 
                                    }
                                  top += '</ul></div></li>';
                                }
   
                                else {
                                if(i==0)
                                {  
                             
                                top += ' <li style="background:url(<%=basePath%>xs/images/b_07.png)"><a  href="'+newmsg.lanmu[i].linkurl+'">  ' + newmsg.lanmu[i].classname + '</a></li>';
                               
                                }
                                else
                                {
                                 
                                top += ' <li style="background:url(<%=basePath%>xs/images/b_05.png)"><a  href="'+newmsg.lanmu[i].linkurl+'">  ' + newmsg.lanmu[i].classname + '</a></li>';
                                
                                } 
                               ddd++;
                                
                                 
                                     
                            }
                              totalhtml+=top;
                            }

                        });

                    }
                }
            });
  
            $('#ulaaa').html(totalhtml+'<li style="background:url(schools/xs/images/b_05.png)"><a href="media/login.jsp" target="_blank"> 个人中心</a></li>'+'<li style="background:url(schools/xs/images/b_05.png)"><a href="media/ht_users/usereg.jsp" target="_blank">用户注册</a></li>');



        })
    </script>
  </head>
  
  <body>
      <div class="container">
        <div class="header111">
            <div class="w_line"></div>
            <div class="focusaabb"></div>
             <div class="leader" style="font-family: 微软雅黑;">
                <ul id="ulaaa" >
                 
                </ul>
            </div>

        </div>
 
 
  </body>
</html>
