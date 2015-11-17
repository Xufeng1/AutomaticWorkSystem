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
		table {width:600px;table-layout:fixed;}
		.typ1 {width:100px;}
		.typ2 {width:200px;}
		.typ3 {width:50px;}
		th strong {display:block;width:100%;}
		tr strong,tr td {white-space:nowrap;overflow:hidden;}
	</style>
  </head>
  
  <body>
  	当前位置：考勤管理 - 请假管理 
    <table align="center" border="5">
    <caption>请假管理</caption>
    	<tr align="center">  			
   			<th class="typ1">申请人
   			<th class="typ1">开始时间
   			<th class="typ1">结束时间
   			<th class="typ2">请假原因
   			<th class="typ3">
   			<th class="typ3">
   		</tr>
    	<s:iterator value = "leaves" id = "lev">
    		<tr align="center">   			
    			<td class="typ1"> <s:property value = "#lev.person"/>
    			<td class="typ1"> <s:property value = "#lev.leavetime"/>
    			<td class="typ1"> <s:property value = "#lev.backtime"/>
    			<td class="typ2"> <s:property value = "#lev.reason"/>
    			<td class="typ3"> <a href="admin/Leave-detail?id=<s:property value = "#lev.id"/>">查看</a>
    			<td class="typ3"> <a href="admin/Leave-delete-leave?id=<s:property value = "#lev.id"/>">删除</a>  	
    		</tr>
    	</s:iterator>
    </table>
  </body>
</html>
