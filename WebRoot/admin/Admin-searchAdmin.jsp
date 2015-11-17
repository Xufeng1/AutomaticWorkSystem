<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

	<style type="text/css">
		table {width:650px;table-layout:fixed;}
		.typ1 {width:150px;}
		.typ2 {width:50px;}
		th strong {display:block;width:100%;}
		tr strong,tr td {white-space:nowrap;overflow:hidden;}
	</style>
  </head>
  
  <body>
  	当前位置：员工管理 - 管理员管理
    <table align="center" border="5">
    <caption>管理员管理</caption>
    	<tr align="center">  			
   			<th class="typ1">工号:
   			<th class="typ1">姓名:
   			<th class="typ1">电话:
   			<th class="typ1">邮箱:			
   			<th class="typ2">
   		</tr>
    	<s:iterator value = "admins" id = "ad">
    		<tr align="center">   			
    			<td class="typ1"> <s:property value = "#ad.id"/>
    			<td class="typ1"> <s:property value = "#ad.name"/>
    			<td class="typ1"> <s:property value = "#ad.cell"/>
    			<td class="typ1"> <s:property value = "#ad.email"/>    			
    			<td class="typ2"> <a href="admin/Admin-delete-searchAdmin?id=<s:property value = "#ad.id"/>">删除</a>  	
    		</tr>
    	</s:iterator>
    	<tr align="center">  			
   			<th class="typ1" colspan="5"> <a href="admin/Admin-add.jsp">添加</a> 
   		</tr>
    </table>
  </body>
</html>
