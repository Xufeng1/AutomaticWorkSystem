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
		table {width:700px;table-layout:fixed;}
		.typ1 {width:150px;}
		.typ2 {width:350px;}
		.typ3 {width:50px;}
		th strong {display:block;width:100%;}
		tr strong,tr td {white-space:nowrap;overflow:hidden;}
	</style>
  </head>
  
  <body>
  	当前位置：日常管理 - 公告查询
    <table align="center" border="5">
    <caption>公告查询</caption>
    	<tr align="center">  			
   			<th class="typ1">时间
   			<th class="typ1">发布人
   			<th class="typ2">主题
   			<th class="typ3">
   			<th class="typ3">
   		</tr>
    	<s:iterator value = "notices" id = "ntc">
    		<tr align="center">   			
    			<td class="typ1"> <s:property value = "#ntc.time"/>
    			<td class="typ1"> <s:property value = "#ntc.person"/>
    			<td class="typ2"> <s:property value = "#ntc.subject"/>
    			<td class="typ3"> <a href="admin/Notice-detail?id=<s:property value = "#ntc.id"/>">查看</a> 
    			<td class="typ3"> <a href="admin/Notice-delete-notice?id=<s:property value = "#ntc.id"/>">删除</a> 	
    		</tr>
    	</s:iterator>
    	<tr align="center">  			
   			<th class="typ1" colspan="5"> <a href="admin/Notice-add.jsp">添加</a> 
   		</tr>
    </table>
  </body>
</html>
