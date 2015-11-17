<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
	
	<link rel="stylesheet" href="css/base.css" />
    
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

	<style type="text/css">
		table {table-layout:fixed;}
		.typ1 {width:100px;}
		.typ2 {width:250px;}
		.typ3 {width:50px;}
		th strong {display:block;width:100%;}
		tr strong,tr td {white-space:nowrap;overflow:hidden;}
	</style>
  </head>
  
  <body>
  	<div class="table-blue">
    <table align="center" class="table">
    <caption><h1>会议记录</h1></caption>
    	<tr align="center">  			
   			<th class="typ1">时间
   			<th class="typ1">地点
   			<th class="typ1">主持人
   			<th class="typ1">参会人
   			<th class="typ2">主题
   			<th class="typ3">
   		</tr>

    	<s:iterator value = "meetings" id = "met">
    		<tr align="center">   			
    			<td class="typ1"> <s:property value = "#met.time"/>
    			<td class="typ1"> <s:property value = "#met.address"/>
    			<td class="typ1"> <s:property value = "#met.compere"/>
    			<td class="typ1"> <s:property value = "#met.person"/>
    			<td class="typ2"> <s:property value = "#met.subject"/>
    			<td class="typ3"> <a href="user/Meeting-detail?id=<s:property value = "#met.id"/>">查看</a>  	
    		</tr>
    	</s:iterator>

    </table>
    </div>
  </body>
</html>
