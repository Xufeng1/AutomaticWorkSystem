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
	
	<link rel="stylesheet" href="../css/base.css" />
	
	<!-- 下div可以自动换行，超出范围有拖动条 -->
	<style type="text/css">
		table {table-layout:fixed;}
		.typ1 {width:175px;}
		.typ2 {width:525px;}		
		th strong {display:block; width:100%;}		
		div {height:400px; overflow:auto;word-wrap:break-word;}
	</style>
	
  </head>
  
  <body>
  	<div class="table-blue">
    <table align="center">
    	<caption><h1>详细信息</h1></caption>
    	<tr>
    		<th class="typ1">工号：
    		<td class="typ1"><s:property value="user.id"/>
    		<th class="typ1">姓名：
    		<td class="typ1"><s:property value="user.name"/>
    	</tr>
    	<tr>
    		<th class="typ1">部门：
    		<td class="typ1"><s:property value="user.department"/>
    		<th class="typ1">职位：
    		<td class="typ1"><s:property value="user.position"/>
    	</tr>
    	<tr>
    		<th class="typ1">电话：
    		<td class="typ1"><s:property value="user.cell"/>
    		<th class="typ1">邮箱：
    		<td class="typ1"><s:property value="user.email"/>
    	</tr>
    </table>  
    </div> 
  </body>
</html>
