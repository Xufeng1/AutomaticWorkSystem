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
		.typ2 {width:300px;}
		.typ3 {width:50px;}
		th strong {display:block;width:100%;}
		tr strong,tr td {white-space:nowrap;overflow:hidden;}
	</style>
  </head>
  
  <body>
  	当前位置：申请管理 - 申请批示
    <table align="center" border="5">
    <caption>申请批示</caption>
    	<tr align="center">  			
   			<th class="typ1">申请时间：
   			<th class="typ1">申请人：
   			<th class="typ2">申请摘要：
   			<th class="typ3">
   			<th class="typ3">
   		</tr>
    	<s:iterator value = "requests" id = "req">
    		<tr align="center">   			
    			<td class="typ1"> <s:property value = "#req.time"/>
    			<td class="typ1"> <s:property value = "#req.person"/>
    			<td class="typ2"> <s:property value = "#req.subject"/>
    			<td class="typ3"> <a href="admin/Request-detail?id=<s:property value = "#req.id"/>">查看</a> 
    			<td class="typ3"> <a href="admin/Request-delete-request?id=<s:property value = "#req.id"/>">删除</a> 	
    		</tr>
    	</s:iterator>
    </table>
  </body>
</html>
