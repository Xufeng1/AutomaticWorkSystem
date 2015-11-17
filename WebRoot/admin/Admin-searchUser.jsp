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
		table {width:500px;table-layout:fixed;}
		.typ1 {width:100px;}
		.typ2 {width:50px;}
		th strong {display:block;width:100%;}
		tr strong,tr td {white-space:nowrap;overflow:hidden;}
	</style>
  </head>
  
  <body>
  	当前位置：员工管理 - 员工管理
    <table align="center" border="5">
    <caption>员工管理</caption>
    	<tr align="center">  			
   			<th class="typ1">工号:
   			<th class="typ1">姓名:
   			<th class="typ1">部门:
   			<th class="typ1">职位:			
   			<th class="typ2">
   			<th class="typ2">
   		</tr>
    	<s:iterator value = "users" id = "us">
    		<tr align="center">   			
    			<td class="typ1"> <s:property value = "#us.id"/>
    			<td class="typ1"> <s:property value = "#us.name"/>
    			<td class="typ1"> <s:property value = "#us.department"/>
    			<td class="typ1"> <s:property value = "#us.position"/>    			
    			<td class="typ2"> <a href="admin/User-detail?id=<s:property value = "#us.id"/>">查看</a>
    			<td class="typ2"> <a href="admin/User-delete-searchUser?id=<s:property value = "#us.id"/>">删除</a>  	
    		</tr>
    	</s:iterator>
    </table>
  </body>
</html>
