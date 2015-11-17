<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
     
	
	<!-- 下div可以自动换行，超出范围有拖动条 -->
	<style type="text/css">
		table {width:700px; table-layout:fixed;}
		.typ1 {width:175px;}
		.typ2 {width:525px;}		
		th strong {display:block; width:100%;}		
		div {height:400px; overflow:auto;word-wrap:break-word;}
	</style>
	
	<link rel="stylesheet" href="../css/base.css" />

  </head>
  
  <body>
  	<div class="table-blue">
    <table class="table">
    	<caption><h1>公告详情</h1></caption>
    	<tr>
    		<th class="typ1">编号：
    		<td class="typ1"><s:property value="notice.id"/>
    		<th class="typ1">时间：
    		<td class="typ1"><s:property value="notice.time"/>
    	</tr>  	
    	<tr>
    		<th class="typ1">公告人：
    		<td class="typ2" colspan="3"><s:property value="notice.person"/>
    	</tr>
    	<tr>
    		<th class="typ1">主题：
    		<td class="typ2" colspan="3"><s:property value="notice.subject"/>
    	</tr>
    	<tr>
    		<th class="typ1">内容：
    		<td class="typ2" colspan="3"><textarea style="height: 400px;width: 525px"><s:property value="notice.content"/></textarea>
    	</tr>
    </table>  
    </div> 
  </body>
</html>
