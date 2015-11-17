<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" href="css/base.css" />

	<style type="text/css">
		table {width:700px;table-layout:fixed;}
		.typ1 {width:150px;}
		.typ2 {width:400px;}
		.typ3 {width:50px;}
		th strong {display:block;width:100%;}
		tr strong,tr td {white-space:nowrap;overflow:hidden;}
	</style>
  </head>
  
  <body>
  	<div class="table-blue">
    <table class="table">
    <caption><h1>公告查询</h1></caption>
    	<tr align="center">  			
   			<th class="typ1">时间
   			<th class="typ1">发布人
   			<th class="typ2">主题
   			<th class="typ3">
   		</tr>
    	<s:iterator value = "notices" id = "ntc">
    		<tr align="center">   			
    			<td class="typ1"> <s:property value = "#ntc.time"/>
    			<td class="typ1"> <s:property value = "#ntc.person"/>
    			<td class="typ2"> <s:property value = "#ntc.subject"/>
    			<td class="typ3"> <a href="user/Notice-detail?id=<s:property value = "#ntc.id"/>">查看</a>  	
    		</tr>
    	</s:iterator>
    </table>
    </div>
  </body>
</html>
