<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
     <title>大学生兼职管理系统</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
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
            }

                .leader ul li a {
                    width: 120px;
                    height: 40px;
                    text-align: center;
                    line-height: 40px;
                    display: block;
                    border-right: 2px solid #ccc;
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
    <script type="text/javascript" src="<%=basePath%>xs/js/jquery.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>xs/js/sl.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $.focus("#focus001");
        });
    </script>

  <link rel="stylesheet" href="<%=basePath%>xs/style/css.css" type="text/css"></link>
  
  
  
  </head>
  
  <body> 
      <jsp:include   page="${basePath}/xs/head.jsp" flush="true"/> 
      
   
<table width=100% cellpadding=5 cellspacing=0 align=center>
<tr>
<td align=center style="font-size:14pt;font-weight:800;line-height:24pt;color:875302">
山东大学水、电、暖、物业报修等后勤保障工作部门联系方式</td>
</tr>
<tr><td align=center height=30 style="border-top:1px solid #dfd7ca">
作者：张贤达&nbsp;&nbsp;来源：大学生兼职管理系统&nbsp;&nbsp;发布时间：2015-11-26 14:58:38&nbsp;&nbsp;浏览次数：2240</td></tr>
<tr>
<td style="padding:20;font-size:14px;line-height:30px;word-break:break-all" height=400 valign=top>

<p><span style="color: rgb(229, 51, 51); font-size: 14px;"><span style="color:#e53333;font-size:14px;">◇ </span><a href="http://202.194.14.200/" target="_blank"><span style="color:#000000;font-size:14px;">山东大学后勤保障部设立的后勤事务一站式网络报修、咨询、投诉等服务平台网址（请点击此处登陆、报修等，不用密码）</span></a><span style="color:#000000;font-size:14px;">。<br/><span style="color: rgb(229, 51, 51);">◇ </span>山大趵突泉校区办公、教学区报修等电话：物业、水、电报修全天24小时服务电话：88382101、88382513，供暖报修全天24小时服务电话：88382433。<br/><span style="font-size: 14px; color: rgb(229, 51, 51);">◇ </span></span></span><span style="font-size: 14px;">山大趵突泉校区教职工宿舍区、社区物业报修等服务电话：88383338，水、电报修全天24小时服务电话88366661，供暖报修全天24小时服务电话：88380161。</span><span style="color: rgb(0, 0, 0); font-size: 14px;"><span style="color: rgb(229, 51, 51); font-size: 14px;"><br/><span style="color: rgb(229, 51, 51);">◇ <a href="http://portal.sdu.edu.cn/home/-/announcement/wW7u/8f0b85a5-f7f0-4867-a752-8207ae15efa2?_department_WAR_sduportlet_INSTANCE_wW7u_redirect=http%3A%2F%2Fportal.sdu.edu.cn%2Fhome%3Fp_p_id%3Ddepartment_WAR_sduportlet_INSTANCE_wW7u%26p_p_lifecycle%3D0%26p_p_state%3Dmaximized%26p_p_mode%3Dview%26_department_WAR_sduportlet_INSTANCE_wW7u_cur%3D14%26_department_WAR_sduportlet_INSTANCE_wW7u_delta%3D20%26_department_WAR_sduportlet_INSTANCE_wW7u_keywords%3D%26_department_WAR_sduportlet_INSTANCE_wW7u_advancedSearch%3Dfalse%26_department_WAR_sduportlet_INSTANCE_wW7u_andOperator%3Dtrue&_department_WAR_sduportlet_INSTANCE_wW7u_jspPage=%2Fhtml%2Fdepartment_announcements%2Fshow_announcement.jsp" target="_blank">山东大学各校区水电、供暖、物业报修全天24小时服务电话的网址（请点击此处浏览）。</a></span><br/>◇ <span style="color: rgb(0, 0, 0);">趵突泉校区教学楼、办公楼、教职工宿舍电表管理、电卡充值办公室：电话：88382160，地址：教学四楼北侧平房。</span><br/></span><span style="color:#e53333;font-size:14px;">◇ </span><span style="font-size:14px;">教学楼门卫值班电话：综合楼88380112，教学二楼88380392，教学六楼88382316，教学八楼88382514，图东88382428，图西88382431，电镜楼88382307。<br/></span></span><span style="color: rgb(229, 51, 51); font-size: 14px;">◇ <a href="http://www.stu.sdu.edu.cn/" target="_blank" se_prerender_url="loading"><span style="font-size:14px;">山东大学学生宿舍管理网站（请点击此处浏览）；趵突泉校区学生宿舍管理部电话：办公室88383303、88382964，维修部：88382954，售电室：88383107，监控室：88381140。</span></a></span><span style="color: rgb(229, 51, 51); font-size: 14px;"><br/></span></p></td>
</tr>
</table>





         <iframe runat="server" src="<%=basePath%>xs/foot.jsp" width="100%" height="100px" frameborder="no" border="0" marginwidth="0" marginheight="0" scrolling="no" allowtransparency="yes"></iframe>
     
        
       
     
  </body></html>
