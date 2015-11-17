<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.wcstar.automaticworksystem.util.Global;"%>
<!doctype html>

<html>
<head>
	<meta charset="utf-8" />
	<title>自动化办公系统</title>
	<meta name="description" content="" />
	<meta name="author" content="" />
	<!--[if lt IE 9]><script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
	
	<!-- Mobile Specific Metas -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" /> 	
	
	<!-- ////////////////////////////////// -->
    <!-- //      Stylesheets Files       // -->
    <!-- ////////////////////////////////// -->
	<link rel="stylesheet" href="css/base.css" />
	<link rel="stylesheet" href="css/framework.css" />
    <link rel="stylesheet" href="css/custom.css" />
	<link rel="stylesheet" href="css/style.css" />  
    <link rel="stylesheet" href="css/noscript.css" media="screen,all" id="noscript" />

    <!-- ////////////////////////////////// -->
    <!-- //     Google Webfont Files     // -->
    <!-- ////////////////////////////////// -->
    <link href="http://fonts.googleapis.com/css?family=Doppio+One" rel="stylesheet" type="text/css" />
	
	<!-- ////////////////////////////////// -->
    <!-- //        Favicon Files         // -->
    <!-- ////////////////////////////////// -->
	<link rel="shortcut icon" href="images/favicon.ico" />
	
	<!-- ////////////////////////////////// -->
    <!-- //      Javascript Files        // -->
    <!-- ////////////////////////////////// -->
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
    <script type="text/javascript" src="js/jquery.cycle.all.js"></script>
	<script type="text/javascript" src="js/dropdown.js"></script>
    <script type="text/javascript" src="js/filterable.pack.js"></script>
    <script type="text/javascript" src="js/jquery.flexslider-min.js"></script> 
    <script type="text/javascript" src="js/jquery.fancybox.js?v=2.0.6"></script>
	<script type="text/javascript" src="js/jquery.ui.totop.js"></script>
    <script type="text/javascript" src="js/ddaccordion.js"></script>
    <script type="text/javascript" src="js/faq-functions.js"></script>
    <script type="text/javascript" src="js/theme-functions.js"></script>
    
    <%
		if(Global.manager == null){   //如果session过期，则提示用户重新登录系统
	%>
		<script type="text/javascript">                         
	          alert("您登录的网页已经过期，请重新登录！");           
	          top.location="../login.jsp" 
	   </script>
	<%	
		}
	%>
    
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>
<body>
<div id="main-wrapper">

	<!-- BEGIN OF HEADER WRAPPER -->
	<div id="header-wrapper-inner">    	
        <!-- mainmenu start here -->
        <div id="header-wrapper-inner">    	
        <!-- mainmenu start here -->
        <div id="mainmenu-wrapper">
            <a href="welcome.jsp" target="right_ifream" id="logo"><img src="images/home.png" alt="" title="" /></a>
            <div id="mainmenu">
                <ul id="menu">
                    <li><a>日常管理</a>
                    	<ul> 
                            <li><a href="User-meeting" target="right_ifream">会议记录</a></li>
                            <li><a href="User-notice" target="right_ifream">公告查询</a></li>                          	
                    	</ul> 
                    </li>
                    <li><a>考勤管理</a>  
                        <ul> 
                            <li><a href="User-leave" target="right_ifream">请假登记</a></li>                    	
                        </ul>
                    </li>            
                    <li class="spacer"><a>申请管理</a>
                    	<ul> 
                            <li><a href="User-request" target="right_ifream">发布申请</a></li>                    	
                        </ul>
                    </li>
                    <li><a>员工管理</a>
                   	 	<ul> 
                                <li><a href="User-searchUser" target="right_ifream">员工查询</a></li>                    	
                        </ul>
                    </li>
                    <li><a>系统管理</a>
                    	<ul> 
                            <li><a href="User-information" target="right_ifream">个人信息</a></li>
                            <li><a href="User-password" target="right_ifream">修改密码</a></li>                        	
                    	</ul> 
                    </li>                
                    <li><a href="../login.jsp">安全退出</a></li>
                </ul>
            </div>            
        </div>
        <!-- mainmenu end here -->
        
        <!-- pagetitle start here -->
        
        <!-- pagetitle end here -->        
    </div>
    <!-- END OF HEADER WRAPPER -->
    
    
    <!-- BEGIN OF CONTENT WRAPPER -->
<div id="content-wrapper">
    
    	<!-- breadcrumb start here -->
        <div class="breadcrumb">
            <div class="grid_12">
                <p>当前登录用户：&nbsp;&nbsp;  &raquo;  &nbsp;&nbsp;<%out.print(Global.manager); %></p>
            </div>
        </div>
        <!-- breadcrumb end here -->
    
    	<div class="maincontent-no-sidebar">
    	  <iframe name ="right_ifream" src="welcome.jsp" width="920px" height="500px" frameborder="0" scrolling="no"></iframe>
    </div>                
    </div>
    <!-- END OF CONTENT WRAPPER -->
    
    
    <!-- BEGIN OF BOTTOM WRAPPER -->
	<div id="bottom-wrapper">
    	<div class="row">
            <div class="grid_4">
            	<img src="images/author.png" alt="" class="img-left" />
          <h6>Author</h6>                
                <p>wcstar<br />
                  QQ:760823254<br />
                   Email :760823254@qq.com
              </p>
            </div>
            <div class="grid_4 address">
                <h6><img src="images/neuq.png" alt="" class="img-left" /></h6>
                <h6 ><a href="http://www.neuq.edu.cn/"><div class="title-white">NEUQ</div></a></h6>
          <p>Northeastern University at Qinhuangdao</p>
                <div id="bottom-social">
                  <ul>
                        <li></li>
                  </ul>
                </div>
            </div>
            <div class="grid_4 footer-logo">
              <img src="images/AWS-logo.png" alt="" />               
            </div>
        </div>
    </div>
    <!-- END OF BOTTOM WRAPPER -->

</div>	
</body>
</html>