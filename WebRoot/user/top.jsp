<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.wcstar.automaticworksystem.util.Global;"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<%
     	if(Global.manager == null){   //如果session过期，则提示用户重新登录系统
     %>
<script language="javascript">                         
          alert("您登录的网页已经过期，请重新登录！");           
          top.location="../login.jsp" 
   </script>
<%	
    		}
   	%>

</head>
<body background="../user/images/bluetop.jpg">	
	<a style="position:absolute;left:185px;top:175px"><b2>当前登录账号：<%out.print(Global.manager); %></b2></a>
</body>
</html>
